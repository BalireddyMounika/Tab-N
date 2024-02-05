import 'package:get/get.dart';
import 'package:nivish/base/base_controller.dart';
import 'package:nivish/utils/helper/text_field_wrapper.dart';
import '../../../data/repository/stationARepository.dart';
import '../../../../utils/app_utils.dart';
import '../../../../utils/loading/loading_utils.dart';
import '../../../../utils/storage/storage_utils.dart';
import '../../../data/model/dto/response.dart';
import '../../../data/model/response/generic_response.dart';
import '../../../data/model/resuest/StationG/RightLung.dart';

class RightLungController extends BaseController<AllStationRepository> {
  RxBool isRightAirEntryNormal = RxBool(true);
  RxBool isRightBreathSoundNormal = RxBool(true);
  RxBool isRightApical = RxBool(true);
  RxBool isRightMidZone = RxBool(true);
  RxBool isRightBasal = RxBool(true);
  RxBool isRightSubScapular = RxBool(true);
  RxBool isRightDiffuse = RxBool(true);
  RxBool isRightRalesAbsent = RxBool(true);
  RxBool isRightAddedSoundAbsent = RxBool(true);
  RxBool isRightZoneOfConcernAbsent = RxBool(true);
  RxBool isRightRhonchiAbsent = RxBool(true);

  RxList<String> selectedRightAbNormalBreathSound = RxList();
  RxList<String> selectedRightPresentRales = RxList();

  RxString selectedRightBreathSoundApicalList = RxString('');
  RxString selectedRightBreathSoundMidZoneList = RxString('');
  RxString selectedRightBreathSoundBasalList = RxString('');
  RxString selectedRightBreathSoundSubScapularList = RxString('');
  RxString selectedRightBreathSoundDiffuseList = RxString('');
  RxString selectedRightRalesApicalList = RxString('');
  RxString selectedRightRalesMidZoneList = RxString('');
  RxString selectedRightRalesBasalList = RxString('');
  RxString selectedRightRalesSubScapularList = RxString('');
  RxString selectedRightRalesDiffuseList = RxString('');
  RxList<String> selectedRightPresentZoneOfConcern = RxList();
  RxString selectedRightRhonchiPresentList = RxString('');

  TextFieldWrapper addedSoundRightPresentDescription = TextFieldWrapper();

  RxList<String> abNormalRightBreathSoundList =
      RxList(['Apical', 'Mid Zone', 'Basal', 'Sub Scapular', 'Diffuse']);

  RxList<String> presentRightRalesList =
      RxList(['Apical', 'Mid Zone', 'Basal', 'Sub Scapular', 'Diffuse']);

  RxList<String> presentRightZoneOfConcernList =
      RxList(['Apical', 'Mid Zone', 'Basal', 'Sub Scapular', 'Diffuse']);

  RxList<String> breathSoundRightCommanList = RxList([
    "Reduced",
    "Absent",
    "Exaggerated",
  ]);

  //Rales
  RxList<String> ralesRightCommonlList = RxList([
    "Fine",
    "Coarse",
  ]);

  RxList<String> rhonchiRightPresentList = RxList([
    '1+',
    '2+',
    '3+',
  ]);

  void onSelectRightBreathSoundApicalList({required String name}) {
    if (selectedRightBreathSoundApicalList.value == name) {
      selectedRightBreathSoundApicalList.value = '';
    } else {
      selectedRightBreathSoundApicalList.value = name;
    }
    breathSoundRightCommanList.refresh();
  }

  void onSelectRightBreathSoundMidZoneList({required String name}) {
    if (selectedRightBreathSoundMidZoneList.value == name) {
      selectedRightBreathSoundMidZoneList.value = '';
    } else {
      selectedRightBreathSoundMidZoneList.value = name;
    }
    breathSoundRightCommanList.refresh();
  }

  void onSelectRightBreathSoundBasalList({required String name}) {
    if (selectedRightBreathSoundBasalList.value == name) {
      selectedRightBreathSoundBasalList.value = '';
    } else {
      selectedRightBreathSoundBasalList.value = name;
    }
    breathSoundRightCommanList.refresh();
  }

  void onSelectRightBreathSoundSubScapularList({required String name}) {
    if (selectedRightBreathSoundSubScapularList.value == name) {
      selectedRightBreathSoundSubScapularList.value = '';
    } else {
      selectedRightBreathSoundSubScapularList.value = name;
    }
    breathSoundRightCommanList.refresh();
  }

  void onSelectRightBreathSoundDiffuseList({required String name}) {
    if (selectedRightBreathSoundDiffuseList.value == name) {
      selectedRightBreathSoundDiffuseList.value = '';
    } else {
      selectedRightBreathSoundDiffuseList.value = name;
    }
    breathSoundRightCommanList.refresh();
  }

  void onSelectRightRalesApicalList({required String name}) {
    if (selectedRightRalesApicalList.value == name) {
      selectedRightRalesApicalList.value = '';
    } else {
      selectedRightRalesApicalList.value = name;
    }
    ralesRightCommonlList.refresh();
  }

  void onSelectRightRalesMidZoneList({required String name}) {
    if (selectedRightRalesMidZoneList.value == name) {
      selectedRightRalesMidZoneList.value = '';
    } else {
      selectedRightRalesMidZoneList.value = name;
    }
    ralesRightCommonlList.refresh();
  }

  void onSelectRightRalesBasalList({required String name}) {
    if (selectedRightRalesBasalList.value == name) {
      selectedRightRalesBasalList.value = '';
    } else {
      selectedRightRalesBasalList.value = name;
    }
    ralesRightCommonlList.refresh();
  }

  void onSelectRightRalesSubScapularList({required String name}) {
    if (selectedRightRalesSubScapularList.value == name) {
      selectedRightRalesSubScapularList.value = '';
    } else {
      selectedRightRalesSubScapularList.value = name;
    }
    ralesRightCommonlList.refresh();
  }

  void onSelectRightRalesDiffuseList({required String name}) {
    if (selectedRightRalesDiffuseList.value == name) {
      selectedRightRalesDiffuseList.value = '';
    } else {
      selectedRightRalesDiffuseList.value = name;
    }
    ralesRightCommonlList.refresh();
  }

  void onSelectRightRhonchiPresentList({required String name}) {
    if (selectedRightRhonchiPresentList.value == name) {
      selectedRightRhonchiPresentList.value = '';
    } else {
      selectedRightRhonchiPresentList.value = name;
    }
    rhonchiRightPresentList.refresh();
  }

  ///Left Lung

  RxBool isLeftAirEntryNormal = RxBool(true);
  RxBool isLeftBreathSoundNormal = RxBool(true);
  RxBool isLeftApical = RxBool(true);
  RxBool isLeftMidZone = RxBool(true);
  RxBool isLeftBasal = RxBool(true);
  RxBool isLeftSubScapular = RxBool(true);
  RxBool isLeftDiffuse = RxBool(true);
  RxBool isLeftBreathSoundAbnormal = RxBool(true);
  RxBool isLeftRalesAbsent = RxBool(true);
  RxBool isLeftAddedSoundAbsent = RxBool(true);
  RxBool isLeftZoneOfConcernAbsent = RxBool(true);
  RxBool isLeftRhonchiAbsent = RxBool(true);

  RxList<String> selectedLeftAbNormalBreathSound = RxList();
  RxList<String> selectedLeftPresentRales = RxList();

  RxString selectedLeftBreathSoundApicalList = RxString('');
  RxString selectedLeftBreathSoundMidZoneList = RxString('');
  RxString selectedLeftBreathSoundBasalList = RxString('');
  RxString selectedLeftBreathSoundSubScapularList = RxString('');
  RxString selectedLeftBreathSoundDiffuseList = RxString('');
  RxString selectedLeftRalesApicalList = RxString('');
  RxString selectedLeftRalesMidZoneList = RxString('');
  RxString selectedLeftRalesBasalList = RxString('');
  RxString selectedLeftRalesSubScapularList = RxString('');
  RxString selectedLeftRalesDiffuseList = RxString('');
  RxString selectedLeftAddedSoundPresent = RxString('');
  RxList<String> selectedLeftPresentZoneOfConcern = RxList();
  RxString selectedLeftRhonchiPresentList = RxString('');

  TextFieldWrapper addedSoundLeftPresentDescription = TextFieldWrapper();

  RxList<String> abNormalLeftBreathSoundList =
      RxList(['Apical', 'Mid Zone', 'Basal', 'Sub Scapular', 'Diffuse']);

  RxList<String> presentLeftRalesList =
      RxList(['Apical', 'Mid Zone', 'Basal', 'Sub Scapular', 'Diffuse']);

  RxList<String> presentLeftZoneOfConcernList =
      RxList(['Apical', 'Mid Zone', 'Basal', 'Sub Scapular', 'Diffuse']);

  RxList<String> breathSoundLeftCommanList = RxList([
    "Reduced",
    "Absent",
    "Exaggerated",
  ]);

  RxList<String> ralesLeftCommonlList = RxList([
    "Fine",
    "Coarse",
  ]);

  RxList<String> rhonchiLeftPresentList = RxList([
    '1+',
    '2+',
    '3+',
  ]);

  void onSelectLeftAbnormalBreathSoundOptions(String value) {
    toggleLeftSelection(selectedRightAbNormalBreathSound, value);
    update();
  }

  void onCheckedLeftBreathSoundAbnormal() {
    isLeftBreathSoundAbnormal.toggle();
  }

  void onSelectLeftBreathSoundApicalList({required String name}) {
    if (selectedLeftBreathSoundApicalList.value == name) {
      selectedLeftBreathSoundApicalList.value = '';
    } else {
      selectedLeftBreathSoundApicalList.value = name;
    }
    breathSoundLeftCommanList.refresh();
  }

  void onSelectLeftBreathSoundMidZoneList({required String name}) {
    if (selectedLeftBreathSoundMidZoneList.value == name) {
      selectedLeftBreathSoundMidZoneList.value = '';
    } else {
      selectedLeftBreathSoundMidZoneList.value = name;
    }
    breathSoundLeftCommanList.refresh();
  }

  void onSelectLeftBreathSoundBasalList({required String name}) {
    if (selectedLeftBreathSoundBasalList.value == name) {
      selectedLeftBreathSoundBasalList.value = '';
    } else {
      selectedLeftBreathSoundBasalList.value = name;
    }
    breathSoundLeftCommanList.refresh();
  }

  void onSelectLeftBreathSoundSubScapularList({required String name}) {
    if (selectedLeftBreathSoundSubScapularList.value == name) {
      selectedLeftBreathSoundSubScapularList.value = '';
    } else {
      selectedLeftBreathSoundSubScapularList.value = name;
    }
    breathSoundLeftCommanList.refresh();
  }

  void onSelectLeftBreathSoundDiffuseList({required String name}) {
    if (selectedLeftBreathSoundDiffuseList.value == name) {
      selectedRightBreathSoundDiffuseList.value = '';
    } else {
      selectedLeftBreathSoundDiffuseList.value = name;
    }
    breathSoundLeftCommanList.refresh();
  }

  void onSelectLeftRalesApicalList({required String name}) {
    if (selectedLeftRalesApicalList.value == name) {
      selectedLeftRalesApicalList.value = '';
    } else {
      selectedLeftRalesApicalList.value = name;
    }
    ralesLeftCommonlList.refresh();
  }

  void onSelectLeftRalesMidZoneList({required String name}) {
    if (selectedLeftRalesMidZoneList.value == name) {
      selectedLeftRalesMidZoneList.value = '';
    } else {
      selectedLeftRalesMidZoneList.value = name;
    }
    ralesLeftCommonlList.refresh();
  }

  void onSelectLeftRalesBasalList({required String name}) {
    if (selectedLeftRalesBasalList.value == name) {
      selectedLeftRalesBasalList.value = '';
    } else {
      selectedLeftRalesBasalList.value = name;
    }
    ralesLeftCommonlList.refresh();
  }

  void onSelectLeftRalesSubScapularList({required String name}) {
    if (selectedLeftRalesSubScapularList.value == name) {
      selectedLeftRalesSubScapularList.value = '';
    } else {
      selectedLeftRalesSubScapularList.value = name;
    }
    ralesLeftCommonlList.refresh();
  }

  void onSelectLeftRalesDiffuseList({required String name}) {
    if (selectedLeftRalesDiffuseList.value == name) {
      selectedLeftRalesDiffuseList.value = '';
    } else {
      selectedLeftRalesDiffuseList.value = name;
    }
    ralesLeftCommonlList.refresh();
  }

  void onSelectLeftRhonchiPresentList({required String name}) {
    if (selectedLeftRhonchiPresentList.value == name) {
      selectedLeftRhonchiPresentList.value = '';
    } else {
      selectedLeftRhonchiPresentList.value = name;
    }
    rhonchiLeftPresentList.refresh();
  }

  void toggleLeftSelection(RxList<String> list, String value) {
    if (list.contains(value)) {
      list.remove(value);
    } else {
      list.add(value);
    }
  }

  ///API
  updateRightLung({required Function(bool? success) callBack}) async {
    RightLung requestData = RightLung(
        rightLungAirEntryNormal: isRightAirEntryNormal.value ? 'Yes' : 'No',
        rLBreathSounds: isRightBreathSoundNormal.value ? 'Normal' : 'Abnormal',
        rLBreathSoundsAbnormal: selectedRightAbNormalBreathSound.join(','),
        rLBreathSoundsAbnormalApical: selectedRightBreathSoundApicalList.value,
        rLBreathSoundsAbnormalMidZone:
            selectedRightBreathSoundMidZoneList.value,
        rLBreathSoundsAbnormalBasal: selectedRightBreathSoundBasalList.value,
        rLBreathSoundsAbnormalSubScapular:
            selectedRightBreathSoundSubScapularList.value,
        rLBreathSoundsAbnormalDiffuse:
            selectedRightBreathSoundDiffuseList.value,
        rLRalesCrepts: isRightRalesAbsent.value ? 'Absent' : 'Present',
        rLRalesCreptsPresent: selectedRightPresentRales.join(','),
        rLRalesCreptsPresentApical: selectedRightRalesApicalList.value,
        rLRalesCreptsPresentApicalFine: isRightApical.value ? 'Wet' : 'Dry',
        rLRalesCreptsPresentApicalCoarse: isRightApical.value ? 'Wet' : 'Dry',
        rLRalesCreptsPresentMidZone: selectedRightRalesMidZoneList.value,
        rLRalesCreptsPresentMidZoneFine: isRightMidZone.value ? 'Wet' : 'Dry',
        rLRalesCreptsPresentMidZoneCoarse: isRightMidZone.value ? 'Wet' : 'Dry',
        rLRalesCreptsPresentBasal: selectedRightRalesBasalList.value,
        rLRalesCreptsPresentBasalFine: isRightBasal.value ? 'Wet' : 'Dry',
        rLRalesCreptsPresentBasalCoarse: isRightBasal.value ? 'Wet' : 'Dry',
        rLRalesCreptsPresentSubScapular:
            selectedRightRalesSubScapularList.value,
        rLRalesCreptsPresentSubScapularFine:
            isRightSubScapular.value ? 'Wet' : 'Dry',
        rLRalesCreptsPresentSubScapularCoarse:
            isRightSubScapular.value ? 'Wet' : 'Dry',
        rLRalesCreptsPresentDiffuse: selectedRightRalesDiffuseList.value,
        rLRalesCreptsPresentDiffuseFine: isRightDiffuse.value ? 'Wet' : 'Dry',
        rLRalesCreptsPresentDiffuseCoarse: isRightDiffuse.value ? 'Wet' : 'Dry',
        rLRhonchiWheezing: isRightRhonchiAbsent.value ? 'Absent' : 'Present',
        rLRhonchiWheezingPresent: selectedRightRhonchiPresentList.value,
        rLAddedSounds: isRightAddedSoundAbsent.value ? 'Absent' : 'Present',
        rLAddedSoundsPresent: addedSoundRightPresentDescription.controller.text,
        rLAddedZoneOfConcern:
            isRightZoneOfConcernAbsent.value ? 'Absent' : 'Present',
        rLAddedZoneOfConcernAbnormal:
            selectedRightPresentZoneOfConcern.join(','),
        leftLungAirEntryNormal: isLeftAirEntryNormal.value ? 'Yes' : 'No',
        lLBreathSounds: isLeftBreathSoundNormal.value ? 'Normal' : 'Abnormal',
        lLBreathSoundsAbnormal: selectedLeftAbNormalBreathSound.join(','),
        lLBreathSoundsAbnormalApical: selectedLeftBreathSoundApicalList.value,
        lLBreathSoundsAbnormalMidZone: selectedLeftBreathSoundMidZoneList.value,
        lLBreathSoundsAbnormalBasal: selectedLeftBreathSoundBasalList.value,
        lLBreathSoundsAbnormalSubScapular:
            selectedLeftBreathSoundSubScapularList.value,
        lLBreathSoundsAbnormalDiffuse: selectedLeftBreathSoundDiffuseList.value,
        lLRalesCrepts: isLeftRalesAbsent.value ? 'Absent' : 'Present',
        lLRalesCreptsPresent: selectedLeftPresentRales.join(','),
        lLRalesCreptsPresentApical: selectedLeftRalesApicalList.value,
        lLRalesCreptsPresentApicalFine: isLeftApical.value ? 'Wet' : 'Dry',
        lLRalesCreptsPresentApicalCoarse: isLeftApical.value ? 'Wet' : 'Dry',
        lLRalesCreptsPresentMidZone: selectedLeftRalesMidZoneList.value,
        lLRalesCreptsPresentMidZoneFine: isLeftMidZone.value ? 'Wet' : 'Dry',
        lLRalesCreptsPresentMidZoneCoarse: isLeftMidZone.value ? 'Wet' : 'Dry',
        lLRalesCreptsPresentBasal: selectedLeftRalesBasalList.value,
        lLRalesCreptsPresentBasalFine: isLeftBasal.value ? 'Wet' : 'Dry',
        lLRalesCreptsPresentBasalCoarse: isLeftBasal.value ? 'Wet' : 'Dry',
        lLRalesCreptsPresentSubScapular: selectedLeftRalesSubScapularList.value,
        lLRalesCreptsPresentSubScapularFine:
            isLeftSubScapular.value ? 'Wet' : 'Dry',
        lLRalesCreptsPresentSubScapularCoarse:
            isLeftSubScapular.value ? 'Wet' : 'Dry',
        lLRalesCreptsPresentDiffuse: selectedLeftRalesDiffuseList.value,
        lLRalesCreptsPresentDiffuseFine: isLeftDiffuse.value ? 'Wet' : 'Dry',
        lLRalesCreptsPresentDiffuseCoarse: isLeftDiffuse.value ? 'Wet' : 'Dry',
        lLRhonchiWheezing: isLeftRhonchiAbsent.value ? 'Absent' : 'Present',
        lLRhonchiWheezingPresent: selectedLeftRhonchiPresentList.value,
        lLAddedSounds: isLeftAddedSoundAbsent.value ? 'Absent' : 'Present',
        lLAddedSoundsPresent: addedSoundLeftPresentDescription.controller.text,
        lLAddedZoneOfConcern:
            isLeftZoneOfConcernAbsent.value ? 'Absent' : 'Present',
        lLAddedZoneOfConcernAbnormal:
            selectedLeftPresentZoneOfConcern.join(','));
    try {
      if (AppStorage.isStationGIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response =
            await repository.updateRightLung(
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
      callBack.call(false);
    }
  }
}
