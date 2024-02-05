import 'package:get/get.dart';
import 'package:nivish/app/data/model/dto/response.dart';
import 'package:nivish/app/data/model/response/generic_response.dart';
import 'package:nivish/app/data/model/resuest/stationG/CardioVascularSystem.dart';
import 'package:nivish/app/data/repository/stationARepository.dart';
import 'package:nivish/base/base_controller.dart';
import 'package:nivish/utils/app_utils.dart';
import 'package:nivish/utils/helper/text_field_wrapper.dart';
import 'package:nivish/utils/loading/loading_utils.dart';
import 'package:nivish/utils/storage/storage_utils.dart';

class CardioVascularSystemsController
    extends BaseController<AllStationRepository> {
  TextFieldWrapper otherAbnormality = TextFieldWrapper();
  TextFieldWrapper otherMurmurPresent = TextFieldWrapper();
  TextFieldWrapper clickPosition = TextFieldWrapper();
  TextFieldWrapper apexBeatPosition = TextFieldWrapper();

  RxBool doYouGetPalpitation = RxBool(false);
  RxBool haveYouFainted = RxBool(false);
  RxBool isJugularPulsationsVisible = RxBool(true);
  RxBool isSuprasternalPulsationsAbsent = RxBool(true);
  RxBool isPeripheralRadialPresent = RxBool(true);
  RxBool isPeripheralDorsalisPresent = RxBool(true);
  RxBool isPeripheralRadialNormal = RxBool(true);
  RxBool isPeripheralDorsalisNormal = RxBool(true);
  RxBool isS1Normal = RxBool(true);
  RxBool isS2Normal = RxBool(true);
  RxBool isS3Normal = RxBool(true);
  RxBool isMurmurAbsent = RxBool(true);
  RxBool isClickAbsent = RxBool(true);
  RxBool isApexBeatNormal = RxBool(true);

  RxBool isNotVisibleJugularPulsationsNormal = RxBool(true);

  RxList<String> abnormalJugularPulsationsOption = RxList([
    'Exaggerated',
    'Bruit',
    'JVP raised',
    'Murmur',
  ]);

  RxList<String> suprasternalPulsatiosOption =
      RxList(['Visible', 'Exaggerated', 'Murmur', 'Bruit']);

  RxList<String> abnormalPeripheralPulsations = RxList([
    'Weak',
    'Exaggerated',
    'Bruit',
    'Murmur',
    'Water Hammer Pulse',
  ]);

  RxList<String> murmurPresentOption =
      RxList(['Mitral valve', 'Tricuspid valve ', 'Other']);

  RxList selectedAbnormalJugularPulsations = RxList();
  RxList selectedSuprasternalPresentOption = RxList();
  RxList selectedAbnormalPeripheralPulsations = RxList();
  RxList selectedPeripheralRadialAbnormal = RxList();
  RxList selectedPeripheralDorsalisAbnormal = RxList();
  RxList selectedMurmurPresentOption = RxList();

  void onSelectAbnormalJugularPulsations({required String name}) {
    if (selectedAbnormalJugularPulsations.contains(name)) {
      selectedAbnormalJugularPulsations.remove(name);
    } else {
      selectedAbnormalJugularPulsations.add(name);
    }
    update();
  }

  void onSuprasternalPresent({required String name}) {
    if (selectedSuprasternalPresentOption.contains(name)) {
      selectedSuprasternalPresentOption.remove(name);
    } else {
      selectedSuprasternalPresentOption.add(name);
    }
    update();
  }

  void onMurmurPresent({required String name}) {
    if (selectedMurmurPresentOption.contains(name)) {
      selectedMurmurPresentOption.remove(name);
    } else {
      selectedMurmurPresentOption.add(name);
    }

    selectedMurmurPresentOption.refresh();
    update();
  }

  updateCardioVascularSystem(
      {required Function(bool? success) callBack}) async {
    CardioVascularSystem requestData = CardioVascularSystem(
        cardioVascularSystemsDoYouGetPalpitation:
            doYouGetPalpitation.value ? 'Yes' : 'No',
        cVSFaintedInHomeSchoolWorkplaceAtAnyTime:
            haveYouFainted.value ? 'Yes' : 'No',
        cVSJugularPulsations:
            isJugularPulsationsVisible.value ? 'Visible' : 'Not visible',
        cVSJugularPulsationsVisible:
            isNotVisibleJugularPulsationsNormal.value ? 'Normal' : 'Abnormal',
        cVSJugularPulsationsVisibleAbnormal:
            selectedAbnormalJugularPulsations.join(','),
        cVSSuprasternalPulsations:
            isSuprasternalPulsationsAbsent.value ? 'Absent' : 'Present',
        cVSSuprasternalPulsationsPresent:
            selectedSuprasternalPresentOption.join(','),
        cVSPeripheralPulsationsRadial:
            isPeripheralRadialPresent.value ? 'Present' : 'Absent',
        cVSPeripheralPulsationsRadialPresent:
            isPeripheralRadialNormal.value ? 'Normal' : 'Abnormal',
        cVSPeripheralPulsationsRadialPresentAbnormal:
            selectedPeripheralRadialAbnormal.join(','),
        cVSPeripheralPulsationsDorsalisPedis:
            isPeripheralDorsalisPresent.value ? 'Present' : 'Absent',
        cVSPeripheralPulsationsDorsalisPedisPresent:
            isPeripheralDorsalisNormal.value ? 'Normal' : 'Abnormal',
        cVSPeripheralPulsationsDorsalisPedisAbnormal:
            selectedPeripheralDorsalisAbnormal.join(','),
        cVSPeripheralPulsationsOtherAbnormality:
            otherAbnormality.controller.text,
        cvss1: isS1Normal.value ? 'Normal' : 'Abnormal',
        cvss2: isS2Normal.value ? 'Normal' : 'Abnormal',
        cvss3: isS3Normal.value ? 'Absent' : 'Present',
        cVSMurmur: isMurmurAbsent.value ? 'Absent' : 'Present',
        cVSMurmurPresent: selectedMurmurPresentOption.join(','),
        cVSMurmurPresentOther: otherMurmurPresent.controller.text,
        cVSClick: isClickAbsent.value ? 'Absent' : 'Present',
        cVSClickPresentPosition: clickPosition.controller.text,
        cVSApexBeat: isApexBeatNormal.value ? 'Normal' : 'Displaced',
        cVSApexBeatPresentDisplaced: apexBeatPosition.controller.text);

    try {
      if (AppStorage.isStationGIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response =
            await repository.StationGUpdateVascularSystem(
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
