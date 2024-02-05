import 'package:get/get.dart';
import 'package:nivish/base/base_controller.dart';
import 'package:nivish/utils/helper/text_field_wrapper.dart';

import '../../../../utils/app_utils.dart';
import '../../../../utils/loading/loading_utils.dart';
import '../../../../utils/storage/storage_utils.dart';
import '../../../data/model/dto/response.dart';
import '../../../data/model/response/generic_response.dart';
import '../../../data/model/resuest/StationG/HistoryOfMedication.dart';
import '../../../data/repository/stationARepository.dart';

class HistoryOfMedicationController
    extends BaseController<AllStationRepository> {
  RxBool isMedication = RxBool(false);

  RxList<String> medicationlistReferralType = RxList(
    [
      'Less than 7 days',
      '7 days - 1 month',
      '1 month - 1 year',
      'greater than 1 year',
    ],
 );
  RxString selectedMedicationReferral = RxString('Less Than 7 Days');
  TextFieldWrapper nameOfMedication = TextFieldWrapper();

  final nameOfMedicationTextList = <String>[].obs;

  void onAddMedicationText(String text) {
    nameOfMedicationTextList.add(text);
  }

  ///API
  updateHistoryOfMedication({required Function(bool? success) callBack}) async {
    HistoryOfMedication requestData = HistoryOfMedication(
      historyOfMedication: isMedication.value ? 'Yes' : 'No',
      historyOfMedicationYes: selectedMedicationReferral.value,
      nameOfMedication: nameOfMedicationTextList.join(','),
    );
    try {
      if (AppStorage.isStationGIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response =
            await repository.updateHistoryOfMedication(
                requestData: requestData, id: AppStorage.getStationGId());

        print(" 456  $response");
        if (response.data?.status == 200 || response.data?.status == 201) {
          LoadingUtils.hideLoader();
          callBack.call(true);
        } else {
          LoadingUtils.hideLoader();
          callBack.call(false);
          AppUtils.showErrorMessage(response);
        }
      }
    } catch (exp) {
      print(exp);
      if (LoadingUtils.isLoaderShowing) LoadingUtils.hideLoader();
      return false;
    }
  }
}
