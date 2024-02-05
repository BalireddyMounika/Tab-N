import 'package:get/get.dart';
import 'package:nivish/app/data/model/dto/response.dart';
import 'package:nivish/app/data/model/response/generic_response.dart';
import 'package:nivish/app/data/model/resuest/stationG/RespiratorySystem.dart';
import 'package:nivish/app/data/repository/stationARepository.dart';
import 'package:nivish/base/base_controller.dart';
import 'package:nivish/utils/app_utils.dart';
import 'package:nivish/utils/helper/text_field_wrapper.dart';
import 'package:nivish/utils/loading/loading_utils.dart';
import 'package:nivish/utils/storage/storage_utils.dart';

class RespiratorySystemController extends BaseController<AllStationRepository> {
  TextFieldWrapper otherAbNormalChestOption = TextFieldWrapper();
  TextFieldWrapper otherTypeOfAbdominal = TextFieldWrapper();
  TextFieldWrapper otherTypeOfThoracic = TextFieldWrapper();
  TextFieldWrapper otherTypeOfAbdomino = TextFieldWrapper();

  RxBool isFeelBreathless = RxBool(false);
  RxBool haveCough = RxBool(false);
  RxBool isShapeOfChestNormal = RxBool(true);

  RxString selectedAbNormalChestOption = RxString('Concave');
  RxString selectedTypeOfRespiration = RxString('');
  RxString selectedAdditionalTypeOfRespiration = RxString('');
  RxString selectedTrachea = RxString('Central');
  RxString selectedEvidenceOfTracheostomy = RxString('Absent');
  RxString selectedTypeAbdominal = RxString('');
  RxString selectedTypeThoracic = RxString('');
  RxString selectedTypeAbdominio = RxString('');

  RxList<String> commonTypeOption = RxList([
    'Indrawing of intercostal spaces',
    'Indrawing of chest',
    'Other',
  ]);

  RxList<String> abNormalChestOption = RxList(
      ['Concave', 'Pigeon', 'Barrel', 'Retracted intercostal spaces', 'Other']);

  updateRespiratorySystem({required Function(bool? success) callBack}) async {
    RespiratorySystem requestData = RespiratorySystem(
        respiratorySystemDoYouFeelBreathless:
            isFeelBreathless.value ? 'Yes' : 'No',
        rSDoYouHaveACough: haveCough.value ? 'Yes' : 'No',
        rSShapeOfChest: isShapeOfChestNormal.value ? 'Normal' : 'Abnormal',
        rSShapeOfChestAbnormal: selectedAbNormalChestOption.value,
        rSShapeOfChestAbnormalOther: otherAbNormalChestOption.controller.text,
        rSTypeOfRespiration: selectedTypeOfRespiration.value,
        rSTypeOfRespirationAbdominal: selectedTypeAbdominal.value,
        rSTypeOfRespirationAbdominalOther: otherTypeOfAbdominal.controller.text,
        rSTypeOfRespirationThoracic: selectedTypeThoracic.value,
        rSTypeOfRespirationThoracicOther: otherTypeOfThoracic.controller.text,
        rSTypeOfRespirationAbdominoThoracic: selectedTypeAbdominio.value,
        rSTypeOfRespirationAbdominoThoracicOther:
            otherTypeOfAbdomino.controller.text,
        rSTrachea: selectedTrachea.value,
        rSEvidenceOfTracheostomy: selectedEvidenceOfTracheostomy.value);

    try {
      if (AppStorage.isStationGIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response =
            await repository.StationGUpdateRespiratory(
                requestData: requestData, id: AppStorage.getStationGId());
        if (response.data?.status == 200 || response.data?.status == 201) {
          LoadingUtils.hideLoader();
          callBack.call(true);
          return true;
        } else {
          LoadingUtils.hideLoader();
          callBack.call(false);
          AppUtils.showErrorMessage(response);
          return false;
        }
      } else {
        return false;
      }
    } catch (exp) {
      print(exp);
      if (LoadingUtils.isLoaderShowing) LoadingUtils.hideLoader();
      return false;
    }
  }
}
