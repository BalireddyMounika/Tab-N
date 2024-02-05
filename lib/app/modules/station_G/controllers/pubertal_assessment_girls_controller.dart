import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nivish/app/data/model/dto/response.dart';
import 'package:nivish/app/data/model/response/generic_response.dart';
import 'package:nivish/app/data/model/resuest/stationG/Pubertal_Assessment_Girls.dart';
import 'package:nivish/app/data/repository/stationARepository.dart';
import 'package:nivish/base/base_controller.dart';
import 'package:nivish/utils/app_utils.dart';
import 'package:nivish/utils/helper/text_field_wrapper.dart';
import 'package:nivish/utils/loading/loading_utils.dart';
import 'package:nivish/utils/storage/storage_utils.dart';

class PubertalAssessmentGirlsController
    extends BaseController<AllStationRepository> {
  chooseLMPdate() async {
    DateTime currentDate = DateTime.now();
    DateTime? pickedEventData = await showDatePicker(
      context: Get.context!,
      initialDate: currentDate,
      firstDate: DateTime(1900),
      lastDate: currentDate,
    );
    if (pickedEventData != null && pickedEventData != lMPdate.controller.text) {
      final dateFormat = DateFormat('yyyy-MM-dd').format(pickedEventData);
      lMPdate.controller.text = dateFormat;
    }
  }

  TextFieldWrapper otherPainYes = TextFieldWrapper();
  TextFieldWrapper lMPdate = TextFieldWrapper();
  TextFieldWrapper anyAbnormalFindingsWrapper = TextFieldWrapper();
  TextFieldWrapper ageOfMenarche = TextFieldWrapper();

  RxBool isPubertalAssessmentGirls = RxBool(true);
  RxBool isRegularity = RxBool(true);
  RxBool isMenarche = RxBool(true);
  RxBool isPain = RxBool(true);
  RxBool isHaveYouExperienced = RxBool(false);
  RxBool isAnyAbnormalFindings = RxBool(false);
  RxBool isCrackingVoice = RxBool(true);
  RxBool isMore = RxBool(true);

  RxString selectedFrequencyInDays = RxString('<16');
  RxString selectedDurationInDays = RxString('<1');
  RxString selectedFlow = RxString('Moderate');
  RxString selectedComfort = RxString('Painless');
  RxString selectedPreferOfCompany = RxString('Both');
  RxString selectedQuiet = RxString('');
  RxString selectedOutgoing = RxString('');
  RxString selectedAggressive = RxString('');
  RxString selectedBold = RxString('');
  RxString selectedCareless = RxString('');

  RxList<String> selectedPainYes = RxList();
  RxList<String> selectedHaveYouExperienced = RxList();

  RxList<String> haveYouCommonOptions = RxList(['More', 'Less']);
  RxList<String> haveYouExperiencedOptions = RxList([
    'Quiet and Withdrawn',
    'Outgoing',
    'Aggressive',
    'Bold and Daring',
    'Careless'
  ]);
  RxList<String> frequencyInDays = RxList([
    '<16',
    '16-20',
    '21-25',
    '26-28',
    '29-30',
    '31-35',
    '36-40',
    '41-50',
    '51-60',
    '>60'
  ]);
  RxList<String> durationInDays = RxList([
    '<1',
    '1-2',
    '2-3',
    '3-4',
    '4-5',
    '5-6',
    '6-7',
    '7-8',
    '8-9',
    '9-10',
    '>10'
  ]);
  RxList<String> comfort = RxList([
    'Painless',
    'Painful',
    'Mild Discomfort',
    'Exceedingly Painful',
    'Moderate Discomfort'
  ]);
  RxList<String> preferOfCompany = RxList([
    'Both',
    'Girls',
    'Boys',
    'Neither',
  ]);
  RxList<String> painYesOptions = RxList(['Breasts', 'Head', 'Chest', 'Other']);

  RxDouble lowerTannerScore = 0.0.obs;
  RxDouble upperTannerScore = 0.0.obs;

  final StreamController<RangeValues> _sliderStreamControllerTannerScore =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get sliderStreamTannerScore =>
      _sliderStreamControllerTannerScore.stream;

  void updateSliderStreamTannerScore(RangeValues values) {
    _sliderStreamControllerTannerScore.add(values);
  }

  void updateTannerScoreRange(RangeValues values) {
    lowerTannerScore.value = values.start;
    upperTannerScore.value = values.end;
  }

  void onSelectPainYesOptions(String value) {
    toggleSelection(selectedPainYes, value);
    update();
  }

  void onSelectHaveYouExperienced(String value) {
    toggleSelection(selectedHaveYouExperienced, value);
    update();
  }

  void onSelectQuiet({required String name}) {
    if (selectedQuiet.value == name) {
      selectedQuiet.value = '';
    } else {
      selectedQuiet.value = name;
    }
    haveYouCommonOptions.refresh();
  }

  void onSelectOutgoing({required String name}) {
    if (selectedOutgoing.value == name) {
      selectedOutgoing.value = '';
    } else {
      selectedOutgoing.value = name;
    }
    haveYouCommonOptions.refresh();
  }

  void onSelectAggressive({required String name}) {
    if (selectedAggressive.value == name) {
      selectedAggressive.value = '';
    } else {
      selectedAggressive.value = name;
    }
    haveYouCommonOptions.refresh();
  }

  void onSelectBold({required String name}) {
    if (selectedBold.value == name) {
      selectedBold.value = '';
    } else {
      selectedBold.value = name;
    }
    haveYouCommonOptions.refresh();
  }

  void onSelectCareless({required String name}) {
    if (selectedCareless.value == name) {
      selectedCareless.value = '';
    } else {
      selectedCareless.value = name;
    }
    haveYouCommonOptions.refresh();
  }

  void toggleSelection(RxList<String> list, String value) {
    if (list.contains(value)) {
      list.remove(value);
    } else {
      list.add(value);
    }
  }

  updatePubertalAssessmentGirls(
      {required Function(bool? success) callBack}) async {
    PubertalAssessmentGirls requestData = PubertalAssessmentGirls(
      pubertalAssessmentGirls:
          isPubertalAssessmentGirls.value ? 'Not Indicated' : 'Indicated',
      pAGTannerScore: "${upperTannerScore.value.toInt()}",
      pAGMenarcheAttained: isMenarche.value ? 'No' : 'Yes',
      pAGMAYesAgeOfMenarche: ageOfMenarche.controller.text,
      pAGMAYesLMPDate: lMPdate.controller.text,
      pAGMAYesCharacterRegularity: isRegularity.value ? 'Regular' : 'Irregular',
      pAGMAYesCharacterFrequencyInDays: selectedFrequencyInDays.value,
      pAGMAYesDurationInDays: selectedDurationInDays.value,
      pAGMAYesFlow: selectedFlow.value,
      pAGMAYesComfort: selectedComfort.value,
      pAGMAYesPainInOtherPartsOfBodyDuringMenses: isPain.value ? 'No' : 'Yes',
      pAGMAYesPainInOtherPartsOfBodyDuringMensesYes: selectedPainYes.join(','),
      pAGMAYesPainInOtherPartsBodyDuringMensesYesOther:
          otherPainYes.controller.text,
      pAGYesCrackingOfVoiceOrChnageInVoice:
          isCrackingVoice.value ? 'No' : 'Yes',
      pAGHaveYouExperiencedAChangeInBehaviourRecently:
          isHaveYouExperienced.value ? 'Yes' : 'No',
      pAGChangeBehaviourYes: selectedHaveYouExperienced.join(','),
      pAGChangeBehaviourYesQuietWithdrawn: selectedQuiet.value,
      pAGChangeBehaviourOutgoing: selectedOutgoing.value,
      pAGChangeBehaviourAggressive: selectedAggressive.value,
      pAGChangeBehaviourBoldAndDaring: selectedBold.value,
      // pAGChangeBehaviourCareless: selectedCareless.value,
      pAGPreferCompanyOf: selectedPreferOfCompany.value,
      pAGAnyOtherAbnormalFinding: isAnyAbnormalFindings.value ? 'Yes' : 'No',
      pAGAnyOtherAbnormalFindingYes: anyAbnormalFindingsWrapper.controller.text,
    );

    try {
      if (AppStorage.isStationGIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response =
            await repository.StationGUpdateGirls(
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
