import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/model/dto/response.dart';
import 'package:nivish/app/data/model/response/generic_response.dart';
import 'package:nivish/app/data/repository/stationARepository.dart';
import 'package:nivish/base/base_controller.dart';
import 'package:nivish/utils/app_utils.dart';
import 'package:nivish/utils/helper/text_field_wrapper.dart';
import 'package:nivish/utils/loading/loading_utils.dart';
import 'package:nivish/utils/storage/storage_utils.dart';

import '../../../data/model/resuest/StationG/CentralNervousSystemRequestModel.dart';

class NervesSystemController extends BaseController<AllStationRepository> {
  TextFieldWrapper otherAbnormalSpeech = TextFieldWrapper();
  TextFieldWrapper otherHeadacheAssociatedWithOptions = TextFieldWrapper();
  TextFieldWrapper otherDizzinessAssociatedWithOptions = TextFieldWrapper();

  final otherAbnormalSpeechFormKey = GlobalKey<FormState>();

  RxString selectedAlert = RxString('Yes');
  RxString selectedOriented = RxString('Yes');
  RxString selectedListens = RxString('Yes');
  RxString selectedUnderstands = RxString('Yes');
  RxString selectedResponds = RxString('Yes');
  RxString selectedSpeech = RxString('Yes');
  RxString selectedAbnormalSpeech = RxString('');
  RxString selectedContinuousHeadacheFrequency = RxString('Since 1 week');
  RxString selectedContinuousDizzinessFrequency = RxString('Since 1 week');
  RxString selectedHeadacheFrom = RxString('< 1 Month');
  RxString selectedHeadacheDuration = RxString('Less than 1 hour');

  RxBool isSpeechNormal = RxBool(true);
  RxBool isContinuousHeadacheFrequency = RxBool(true);
  RxBool isHistoryOfHeadache = RxBool(false);
  RxBool isHistoryOfDizziness = RxBool(false);
  RxBool isContinuousDizzinessFrequency = RxBool(true);

  RxList<String> selectedReferralType = RxList();

  RxList<String> continuousFrequencyOptions = RxList([
    'Since 1 week',
    'Since 1 Month',
    'Since 3 Month',
    'Since 6 Month',
    'Since 1 Year',
    'More than 1 Year',
  ]);
  RxList<String> associatedWithHeadacheOptions = RxList([
    'Reading',
    'Watching Tv/Movies',
    'Computer Use',
    'Nausea / Vomiting',
    'Movement',
    'No Particular Activity',
    'Change of Posture',
    'Exercising /Gymming',
    'Hyper-tension',
    'Sleeping',
    'Occurrence',
    'Glaucoma',
    'Other Eye condition',
    'Vision Problem',
    'Menstrual Cycle',
    'Pregnancy',
    'Driving',
    'Hunger/ Fasting',
    'Salt intake',
    'MSG (Ajino-moto) intake',
    'Heat',
    'Cold',
    'Other'
  ]);

  RxList<String> associatedWithDizzinessOptions = RxList([
    'Reading',
    'Watching Tv/Movies',
    'Computer Use',
    'Nausea / Vomiting',
    'Movement',
    'No Particular Activity',
    'Change of Posture',
    'Exercising /Gymming',
    'Hyper-tension',
    'Sleeping',
    'Occurrence',
    'Glaucoma',
    'Other Eye condition',
    'Vision Problem',
    'Menstrual Cycle',
    'Pregnancy',
    'Driving',
    'Hunger/ Fasting',
    'Salt intake',
    'MSG (Ajino-moto) intake',
    'Heat',
    'Cold',
    'Other'
  ]);

  RxList<String> occurrenceOptions = RxList([
    'On waking up',
    'Morning',
    'Afternoon',
    'Evening',
    'Night',
    'Throughout the day'
  ]);
  RxList<String> headacheFromOptions = RxList([
    '< 1 Month',
    '< 1 Year',
    '> 1 Year',
    '> 2 Year',
    '> 5 Year',
  ]);
  RxList<String> headacheDurationOptions = RxList([
    'Less than 1 hour',
    '1 to 3 hours',
    '1 day',
    '2 to 3 days',
    'More than 3 days',
  ]);

  RxList<String> selectedHeadacheAssociatedWithOptions = RxList();
  RxList<String> selectedDizzinessAssociatedWithOptions = RxList();
  RxList<String> selectedHeadachePartOfDayOptions = RxList();
  RxList<String> selectedDizzinessPartOfDayOptions = RxList();

  void onSelectAbnormalSpeech({required String value}) {
    selectedAbnormalSpeech.value = value;
    update();
  }

  void onSelectHeadacheAssociatedWithOptions(String value) {
    toggleSelection(selectedHeadacheAssociatedWithOptions, value);
    update();
  }

  void onSelectDizzinessAssociatedWithOptions(String value) {
    toggleSelection(selectedDizzinessAssociatedWithOptions, value);
    update();
  }

  void onSelectHeadachePartOfDayOptions(String value) {
    toggleSelection(selectedHeadachePartOfDayOptions, value);
    update();
  }

  void onSelectDizzinessPartOfDayOptions(String value) {
    toggleSelection(selectedDizzinessPartOfDayOptions, value);
    update();
  }

  void toggleSelection(RxList<String> list, String value) {
    if (list.contains(value)) {
      list.remove(value);
    } else {
      list.add(value);
    }
  }

  submitStationGNervous({required Function(bool? success) callBack}) async {
    NervousSystem requestData = NervousSystem(
      hcid: AppStorage.getUser().stations?.first.hcid,
      hcpid: AppStorage.getUser().stations?.first.hcpId,
      infoseekId: AppStorage.getStudent().infoseekId,
      centralNervousSystemAlert: selectedAlert.value,
      cNSOriented: selectedOriented.value,
      cNSListens: selectedListens.value,
      cNSUnderstands: selectedUnderstands.value,
      cNSResponds: selectedResponds.value,
      cNSSpeech: isSpeechNormal.value ? 'Normal' : 'Abnormal',
      cNSSpeechAbnormal: selectedAbnormalSpeech.value,
      cNSSpeechAbnormalOther: otherAbnormalSpeech.controller.text,
      cNSHistoryOfHeadache: isHistoryOfHeadache.value ? 'Yes' : 'No',
      cNSHistoryOfHeadacheYesFrequency:
          isContinuousHeadacheFrequency.value ? 'Sporadic' : 'Continuous',
      cNSHistoryOfHeadacheYesFrequencyContinuous:
          selectedContinuousHeadacheFrequency.value,
      cNSHistoryOfHeadacheYesAssociatedWith:
          selectedHeadacheAssociatedWithOptions.join(','),
      cNSHistoryOfHeadacheYesAssociatedWithOccurrence:
          selectedHeadachePartOfDayOptions.join(','),
      cNSHistoryOfHeadacheYesAssociatedWithOther:
          otherHeadacheAssociatedWithOptions.controller.text,
      cNSHistoryOfHeadacheYesFrom: selectedHeadacheFrom.value,
      cNSHistoryOfHeadacheYesDuration: selectedHeadacheDuration.value,
      cNSHistoryOfDizziness: isHistoryOfDizziness.value ? 'Yes' : 'No',
      cNSHistoryOfDizzinessYesFrequency:
          isContinuousDizzinessFrequency.value ? 'Sporadic' : 'Continuous',
      cNSHistoryOfDizzinessYesFrequencyContinuous:
          selectedContinuousDizzinessFrequency.value,
      cNSHistoryOfDizzinessYesAssociatedWith:
          selectedDizzinessAssociatedWithOptions.join(','),
      cNSHistoryOfDizzinessYesAssociatedWithOccurrence:
          selectedDizzinessPartOfDayOptions.join(','),
      cNSHistoryOfDizzinessYesAssociatedWithOther:
          otherDizzinessAssociatedWithOptions.controller.text,
      entryTime:
          '${TimeOfDay.fromDateTime(DateTime.now()).hour}:${TimeOfDay.fromDateTime(DateTime.now()).minute}',
    );

    try {
      LoadingUtils.showLoader();
      RepoResponse<GenericResponse> response =
          await repository.SubmitStationGData(requestData: requestData);
      print(" 123  $response");
      if (response.data?.status == 200 || response.data?.status == 201) {
        LoadingUtils.hideLoader();
        final id = response.data?.result["id"];
        AppStorage.setStationGId(id);
        callBack.call(true);
      } else {
        LoadingUtils.hideLoader();
        callBack.call(false);
        AppUtils.showErrorMessage(response);
      }
    } catch (exp) {
      print(exp);
      if (LoadingUtils.isLoaderShowing) LoadingUtils.hideLoader();
      callBack.call(false);
    }
  }
}
