import 'dart:async';
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

import '../../../data/model/resuest/StationG/Pubertal_Assessment_Boys.dart';

class PubertalAssessmentBoysController
    extends BaseController<AllStationRepository> {
  TextFieldWrapper anyAbnormalFindingsWrapperBoys = TextFieldWrapper();

  RxBool isPubertalAssessmentBoys = RxBool(true);
  RxBool isHaveYouExperiencedBoys = RxBool(false);
  RxBool isCrackingVoiceBoys = RxBool(true);
  RxBool isNightlyEmissions = RxBool(true);
  RxBool isAnyAbnormalFindingsBoys = RxBool(false);

  RxString selectedQuietBoys = RxString('');
  RxString selectedOutgoingBoys = RxString('');
  RxString selectedAggressiveBoys = RxString('');
  RxString selectedBoldBoys = RxString('');
  RxString selectedCarelessBoys = RxString('');
  RxString selectedPreferOfCompanyBoys = RxString('Both');
  RxList<String> selectedHaveYouExperiencedBoys = RxList();
  RxList<String> haveYouCommonOptionsBoys = RxList(['More', 'Less']);
  RxList<String> haveYouExperiencedOptionsBoys = RxList([
    'Quiet and Withdrawn',
    'Outgoing',
    'Aggressive',
    'Bold and Daring',
    'Careless'
  ]);
  RxList<String> preferOfCompanyBoys = RxList([
    'Both',
    'Girls',
    'Boys',
    'Neither',
  ]);
  RxDouble lowerTannerScoreBoys = 0.0.obs;
  RxDouble upperTannerScoreBoys = 0.0.obs;

  final StreamController<RangeValues> _sliderStreamControllerTannerScoreBoys =
  StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get sliderStreamTannerScoreBoys =>
      _sliderStreamControllerTannerScoreBoys.stream;

  void updateSliderStreamTannerScoreBoys(RangeValues values) {
    _sliderStreamControllerTannerScoreBoys.add(values);
  }

  void updateTannerScoreRangeBoys(RangeValues values) {
    lowerTannerScoreBoys.value = values.start;
    upperTannerScoreBoys.value = values.end;
  }

  void onSelectHaveYouExperiencedBoys(String value) {
    toggleSelection(selectedHaveYouExperiencedBoys, value);
    update();
  }

  void onSelectQuietBoys({required String name}) {
    if (selectedQuietBoys.value == name) {
      selectedQuietBoys.value = '';
    } else {
      selectedQuietBoys.value = name;
    }
    haveYouCommonOptionsBoys.refresh();
  }

  void onSelectOutgoingBoys({required String name}) {
    if (selectedOutgoingBoys.value == name) {
      selectedOutgoingBoys.value = '';
    } else {
      selectedOutgoingBoys.value = name;
    }
    haveYouCommonOptionsBoys.refresh();
  }

  void onSelectAggressiveBoys({required String name}) {
    if (selectedAggressiveBoys.value == name) {
      selectedAggressiveBoys.value = '';
    } else {
      selectedAggressiveBoys.value = name;
    }
    haveYouCommonOptionsBoys.refresh();
  }

  void onSelectBoldBoys({required String name}) {
    if (selectedBoldBoys.value == name) {
      selectedBoldBoys.value = '';
    } else {
      selectedBoldBoys.value = name;
    }
    haveYouCommonOptionsBoys.refresh();
  }

  void onSelectCarelessBoys({required String name}) {
    if (selectedCarelessBoys.value == name) {
      selectedCarelessBoys.value = '';
    } else {
      selectedCarelessBoys.value = name;
    }
    haveYouCommonOptionsBoys.refresh();
  }

  void toggleSelection(RxList<String> list, String value) {
    if (list.contains(value)) {
      list.remove(value);
    } else {
      list.add(value);
    }
  }

  updatePubertalAssessmentBoys(
      {required Function(bool? success) callBack}) async {
    PubertalAssessmentBoys requestData = PubertalAssessmentBoys(
      pubertalAssessmentBoys:
      isPubertalAssessmentBoys.value ? 'Not Indicated' : 'Indicated',
      pABTannerScore: upperTannerScoreBoys.value.toInt().toString(),
      pABYesCrackingOfVoiceOrChnageInVoice:
      isCrackingVoiceBoys.value ? 'No' : 'Yes',
      pABNightlyEmissions: isNightlyEmissions.value ? 'No' : 'Yes',
      pABHaveYouExperiencedAChangeInBehaviourRecently:
      isHaveYouExperiencedBoys.value ? 'Yes' : 'No',
      pABChangeBehaviourYes: selectedHaveYouExperiencedBoys.join(','),
      pABChangeBehaviourYesQuietWithdrawn: selectedQuietBoys.value,
      pABChangeBehaviourOutgoing: selectedOutgoingBoys.value,
      pABChangeBehaviourAggressive: selectedAggressiveBoys.value,
      pABChangeBehaviourBoldAndDaring: selectedBoldBoys.value,
      pABChangeBehaviourCareless: selectedCarelessBoys.value,
      pABPreferCompanyOf: selectedPreferOfCompanyBoys.value,
      pABAnyOtherAbnormalFinding:
      isAnyAbnormalFindingsBoys.value ? 'Yes' : 'No',
      pABAnyOtherAbnormalFindingYes:
      anyAbnormalFindingsWrapperBoys.controller.text,
    );

    try {
      if (AppStorage.isStationGIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response =
        await repository.StationGUpdateBoys(
            requestData: requestData, id: AppStorage.getStationGId());
        print(" 456  $response");
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