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

import '../../../data/model/resuest/stationG/AlimentaryAndUrinarySystem.dart';

class AlimentaryAndUrinaryController
    extends BaseController<AllStationRepository> {
  TextFieldWrapper rightHypoSwellingDescription = TextFieldWrapper();
  TextFieldWrapper rightHypoSwellingSize = TextFieldWrapper();
  TextFieldWrapper rightLumberSwellingDescription = TextFieldWrapper();
  TextFieldWrapper rightLumberSwellingSize = TextFieldWrapper();
  TextFieldWrapper leftLumberSwellingDescription = TextFieldWrapper();
  TextFieldWrapper leftLumberSwellingSize = TextFieldWrapper();
  TextFieldWrapper rightIliacSwellingDescription = TextFieldWrapper();
  TextFieldWrapper rightIliacSwellingSize = TextFieldWrapper();
  TextFieldWrapper leftIliacSwellingDescription = TextFieldWrapper();
  TextFieldWrapper leftIliacSwellingSize = TextFieldWrapper();
  TextFieldWrapper epigastricSwellingDescription = TextFieldWrapper();
  TextFieldWrapper epigastricSwellingSize = TextFieldWrapper();
  TextFieldWrapper umbilicalSwellingDescription = TextFieldWrapper();
  TextFieldWrapper umbilicalSwellingSize = TextFieldWrapper();
  TextFieldWrapper suprapubicSwellingDescription = TextFieldWrapper();
  TextFieldWrapper suprapubicSwellingSize = TextFieldWrapper();
  TextFieldWrapper leftHypoSwellingDescription = TextFieldWrapper();
  TextFieldWrapper leftHypoSwellingSize = TextFieldWrapper();

  RxBool isVomiting = RxBool(true);
  RxBool isUrine = RxBool(true);
  RxBool isAbdomen = RxBool(true);
  RxBool isAbdominal = RxBool(true);
  RxBool isNotVisibleCleftLipPresent = RxBool(true);
  RxBool isCleftLip = RxBool(true);
  RxBool isNotVisibleCleftPalatePresent = RxBool(true);
  RxBool isCleftPalate = RxBool(true);
  RxBool isExaggerated = RxBool(true);
  RxBool isRigidity = RxBool(true);
  RxBool isGuarding = RxBool(true);
  RxBool isRightHypochondriumPain = RxBool(true);
  RxBool isRightHypochondriumTenderness = RxBool(true);
  RxBool isRightHypoSwelling = RxBool(true);
  RxBool isRightHypoLiver = RxBool(true);
  RxBool isLeftHypoSpleen = RxBool(true);
  RxBool isRightHypoGall = RxBool(true);
  RxBool isRightLumberPain = RxBool(true);
  RxBool isLeftLumberPain = RxBool(true);
  RxBool isRightLumberTenderness = RxBool(true);
  RxBool isLeftLumberSwelling = RxBool(true);
  RxBool isLeftLumberTenderness = RxBool(true);
  RxBool isRightLumberSwelling = RxBool(true);
  RxBool isRightKidney = RxBool(true);
  RxBool isRightIliacPain = RxBool(true);
  RxBool isRightIliacBurneys = RxBool(true);
  RxBool isRightIliacTenderness = RxBool(true);
  RxBool isRightIliacSwelling = RxBool(true);
  RxBool isEpigastricPain = RxBool(true);
  RxBool isEpigastricSwelling = RxBool(true);
  RxBool isUmbilicalPain = RxBool(true);
  RxBool isUmbilicalSwelling = RxBool(true);
  RxBool isSuprapubicPain = RxBool(true);
  RxBool isSuprapubicSwelling = RxBool(true);
  RxBool isSuprapubicUterus = RxBool(true);
  RxBool isLeftHypochondriumPain = RxBool(true);
  RxBool isLeftHypoSwelling = RxBool(true);
  RxBool isLeftKidney = RxBool(true);
  RxBool isLeftIliacPain = RxBool(true);
  RxBool isLeftIliacTenderness = RxBool(true);
  RxBool isLeftIliacSwelling = RxBool(true);
  RxBool isUrinaryBladder = RxBool(true);
  RxBool isHernia = RxBool(true);
  RxBool isLeftHypochondriumTenderness = RxBool(true);

  RxString selectedRightHypoTexture = RxString('Soft');
  RxString selectedRightHypoTenderness = RxString('Mild');
  RxString selectedRightHypoLiver = RxString('1F');
  RxString selectedLeftHypoSpleen = RxString('1F');
  RxString selectedRightLumberTenderness = RxString('Mild');
  RxString selectedLeftLumberTenderness = RxString('Mild');
  RxString selectedLeftLumberTexture = RxString('Soft');
  RxString selectedRightLumberTexture = RxString('Soft');
  RxString selectedRightKidney = RxString('Soft');
  RxString selectedLeftKidney = RxString('Soft');
  RxString selectedLeftIliacTenderness = RxString('Mild');
  RxString selectedRightIliacTenderness = RxString('Mild');
  RxString selectedRightIliacTexture = RxString('Soft');
  RxString selectedEpigastricTenderness = RxString('Absent');
  RxString selectedEpigastricPresentTenderness = RxString('Mild');
  RxString selectedEpigastricPresentReTenderness = RxString('Mild');
  RxString selectedUrinaryBladderPalpable = RxString('1F');
  RxString selectedEpigastricTexture = RxString('Soft');
  RxString selectedUmbilicalPresentTenderness = RxString('Mild');
  RxString selectedUmbilicalPresentReTenderness = RxString('Mild');
  RxString selectedUmbilicalTexture = RxString('Soft');
  RxString selectedSuprapubicTenderness = RxString('Absent');
  RxString selectedSuprapubicPresentTenderness = RxString('Mild');
  RxString selectedRightUmbilicalTenderness = RxString('Absent');
  RxString selectedSuprapubicPresentReTenderness = RxString('Mild');
  RxString selectedSuprapubicTexture = RxString('Soft');
  RxString selectedUterus = RxString('Soft');
  RxString selectedLeftHypoPresentTenderness = RxString('Mild');
  RxString selectedLeftHypoTexture = RxString('Soft');
  RxString selectedLeftIliacTexture = RxString('Soft');
  RxString selectedDropDown = RxString('Right Hypochondriac');

  RxList<String> selectedHerniaPresent = RxList();
  RxList<String> urinaryBladderPalpableList = RxList(['1F', '2F', '3F']);
  RxList<String> commonTendernessList =
      RxList(['Absent', 'Present', 'Present Rebound']);
  RxList<String> commonTendernessPresentList =
      RxList(['Mild', 'Moderate', 'Severe']);
  RxList<String> commonHypoLiverSpleenList =
      RxList(['1F', '2F', '3F', 'Greater than 3F']);
  RxList<String> palpableList = RxList(['Soft', 'Firm', 'Hard']);
  RxList<String> herniaPresent = RxList([
    'Hiatus',
    'Right Inguinal',
    'Left Inguinal',
    'Right Femoral',
    'Left Femoral',
  ]);

  RxDouble lowerPainLeftHypochondrium = 0.0.obs;
  RxDouble upperPainLeftHypochondrium = 0.0.obs;

  final StreamController<RangeValues>
      sliderStreamControllerPainLeftHypochondrium =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get sliderStreamPainLeftHypochondrium =>
      sliderStreamControllerPainLeftHypochondrium.stream;

  void updateSliderStreamPainLeftHypochondrium(RangeValues values) {
    sliderStreamControllerPainLeftHypochondrium.add(values);
  }

  RxDouble lowerPainRightHypochondrium = 0.0.obs;
  RxDouble upperPainRightHypochondrium = 0.0.obs;

  final StreamController<RangeValues>
      sliderStreamControllerPainRightHypochondrium =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get sliderStreamPainRightHypochondrium =>
      sliderStreamControllerPainRightHypochondrium.stream;

  void updateSliderStreamPainRightHypochondrium(RangeValues values) {
    sliderStreamControllerPainRightHypochondrium.add(values);
  }

  RxDouble lowerGallPainRightHypochondrium = 0.0.obs;
  RxDouble upperGallPainRightHypochondrium = 0.0.obs;

  final StreamController<RangeValues>
      sliderStreamControllerGallPainRightHypochondrium =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get sliderStreamGallPainRightHypochondrium =>
      sliderStreamControllerGallPainRightHypochondrium.stream;

  void updateSliderStreamGallPainRightHypochondrium(RangeValues values) {
    sliderStreamControllerGallPainRightHypochondrium.add(values);
  }

  RxDouble lowerPainRightLumber = 0.0.obs;
  RxDouble upperPainRightLumber = 0.0.obs;

  final StreamController<RangeValues> sliderStreamControllerPainRightLumber =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get sliderStreamPainRightLumber =>
      sliderStreamControllerPainRightLumber.stream;

  void updateSliderStreamPainRightLumber(RangeValues values) {
    sliderStreamControllerPainRightLumber.add(values);
  }

  RxDouble lowerPainLeftLumber = 0.0.obs;
  RxDouble upperPainLeftLumber = 0.0.obs;

  final StreamController<RangeValues> sliderStreamControllerPainLeftLumber =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get sliderStreamPainLeftLumber =>
      sliderStreamControllerPainLeftLumber.stream;

  void updateSliderStreamPainLeftLumber(RangeValues values) {
    sliderStreamControllerPainLeftLumber.add(values);
  }

  RxDouble lowerPainRightIliac = 0.0.obs;
  RxDouble upperPainRightIliac = 0.0.obs;

  final StreamController<RangeValues> sliderStreamControllerPainRightIliac =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get sliderStreamPainRightIliac =>
      sliderStreamControllerPainRightIliac.stream;

  void updateSliderStreamPainRightIliac(RangeValues values) {
    sliderStreamControllerPainRightIliac.add(values);
  }

  RxDouble lowerPainLeftIliac = 0.0.obs;
  RxDouble upperPainLeftIliac = 0.0.obs;

  final StreamController<RangeValues> sliderStreamControllerPainLeftIliac =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get sliderStreamPainLeftIliac =>
      sliderStreamControllerPainLeftIliac.stream;

  void updateSliderStreamPainLeftIliac(RangeValues values) {
    sliderStreamControllerPainLeftIliac.add(values);
  }

  RxDouble lowerBurneysRightIliac = 0.0.obs;
  RxDouble upperBurneysRightIliac = 0.0.obs;

  final StreamController<RangeValues> sliderStreamControllerBurneysRightIliac =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get sliderStreamBurneysRightIliac =>
      sliderStreamControllerBurneysRightIliac.stream;

  void updateSliderStreamBurneysRightIliac(RangeValues values) {
    sliderStreamControllerBurneysRightIliac.add(values);
  }

  RxDouble lowerEpigastric = 0.0.obs;
  RxDouble upperEpigastric = 0.0.obs;

  final StreamController<RangeValues> sliderStreamControllerEpigastric =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get sliderStreamEpigastric =>
      sliderStreamControllerEpigastric.stream;

  void updateSliderStreamEpigastric(RangeValues values) {
    sliderStreamControllerEpigastric.add(values);
  }

  RxDouble lowerUmbilical = 0.0.obs;
  RxDouble upperUmbilical = 0.0.obs;

  final StreamController<RangeValues> sliderStreamControllerUmbilical =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get sliderStreamUmbilical =>
      sliderStreamControllerUmbilical.stream;

  void updateSliderStreamUmbilical(RangeValues values) {
    sliderStreamControllerUmbilical.add(values);
  }

  RxDouble lowerSuprapubic = 0.0.obs;
  RxDouble upperSuprapubic = 0.0.obs;

  final StreamController<RangeValues> sliderStreamControllerSuprapubic =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get sliderStreamSuprapubic =>
      sliderStreamControllerSuprapubic.stream;

  void updateSliderStreamSuprapubic(RangeValues values) {
    sliderStreamControllerSuprapubic.add(values);
  }

  void updateSuprapubic(RangeValues values) {
    lowerSuprapubic.value = values.start;
    upperSuprapubic.value = values.end;
  }

  void updatePainLeftHypochondrium(RangeValues values) {
    lowerPainLeftHypochondrium.value = values.start;
    upperPainLeftHypochondrium.value = values.end;
  }

  void updatePainRightHypochondrium(RangeValues values) {
    lowerPainRightHypochondrium.value = values.start;
    upperPainRightHypochondrium.value = values.end;
  }

  void updateBurneysRightIliac(RangeValues values) {
    lowerBurneysRightIliac.value = values.start;
    upperBurneysRightIliac.value = values.end;
  }

  void updateUmbilical(RangeValues values) {
    lowerUmbilical.value = values.start;
    upperUmbilical.value = values.end;
  }

  void updateEpigastric(RangeValues values) {
    lowerEpigastric.value = values.start;
    upperEpigastric.value = values.end;
  }

  void updatePainRightIliac(RangeValues values) {
    lowerPainRightIliac.value = values.start;
    upperPainRightIliac.value = values.end;
  }

  void updatePainLeftIliac(RangeValues values) {
    lowerPainLeftIliac.value = values.start;
    upperPainLeftIliac.value = values.end;
  }

  void updateGallPainRightHypochondrium(RangeValues values) {
    lowerGallPainRightHypochondrium.value = values.start;
    upperGallPainRightHypochondrium.value = values.end;
  }

  void updatePainRightLumber(RangeValues values) {
    lowerPainRightLumber.value = values.start;
    upperPainRightLumber.value = values.end;
  }

  void updatePainLeftLumber(RangeValues values) {
    lowerPainLeftLumber.value = values.start;
    upperPainLeftLumber.value = values.end;
  }

  void onSelectRightHypoTenderness({required String name}) {
    if (selectedRightHypoTenderness.value == name) {
      selectedRightHypoTenderness.value = '';
    } else {
      selectedRightHypoTenderness.value = name;
    }
    commonTendernessPresentList.refresh();
  }

  void onSelectRightLumberTenderness({required String name}) {
    if (selectedRightLumberTenderness.value == name) {
      selectedRightLumberTenderness.value = '';
    } else {
      selectedRightLumberTenderness.value = name;
    }
    commonTendernessPresentList.refresh();
  }

  void onSelectLeftLumberTenderness({required String name}) {
    if (selectedLeftLumberTenderness.value == name) {
      selectedLeftLumberTenderness.value = '';
    } else {
      selectedLeftLumberTenderness.value = name;
    }
    commonTendernessPresentList.refresh();
  }

  void onSelectRightIliacTenderness({required String name}) {
    if (selectedRightIliacTenderness.value == name) {
      selectedRightIliacTenderness.value = '';
    } else {
      selectedRightIliacTenderness.value = name;
    }
    commonTendernessPresentList.refresh();
  }

  void onSelectLeftIliacTenderness({required String name}) {
    if (selectedLeftIliacTenderness.value == name) {
      selectedLeftIliacTenderness.value = '';
    } else {
      selectedLeftIliacTenderness.value = name;
    }
    commonTendernessPresentList.refresh();
  }

  void onSelectEpigastricPresentTenderness({required String name}) {
    if (selectedEpigastricPresentTenderness.value == name) {
      selectedEpigastricPresentTenderness.value = '';
    } else {
      selectedEpigastricPresentTenderness.value = name;
    }
    commonTendernessPresentList.refresh();
  }

  void onSelectEpigastricPresentReTenderness({required String name}) {
    if (selectedEpigastricPresentReTenderness.value == name) {
      selectedEpigastricPresentReTenderness.value = '';
    } else {
      selectedEpigastricPresentReTenderness.value = name;
    }
    commonTendernessPresentList.refresh();
  }

  void onSelectUrinaryBladderPalpable({required String name}) {
    if (selectedUrinaryBladderPalpable.value == name) {
      selectedUrinaryBladderPalpable.value = '';
    } else {
      selectedUrinaryBladderPalpable.value = name;
    }
    urinaryBladderPalpableList.refresh();
  }

  void onSelectLeftHypoPresentTenderness({required String name}) {
    if (selectedLeftHypoPresentTenderness.value == name) {
      selectedLeftHypoPresentTenderness.value = '';
    } else {
      selectedLeftHypoPresentTenderness.value = name;
    }
    commonTendernessPresentList.refresh();
  }

  void onSelectSuprapubicPresentTenderness({required String name}) {
    if (selectedSuprapubicPresentTenderness.value == name) {
      selectedSuprapubicPresentTenderness.value = '';
    } else {
      selectedSuprapubicPresentTenderness.value = name;
    }
    commonTendernessPresentList.refresh();
  }

  void onSelectSuprapubicPresentReTenderness({required String name}) {
    if (selectedSuprapubicPresentReTenderness.value == name) {
      selectedSuprapubicPresentReTenderness.value = '';
    } else {
      selectedSuprapubicPresentReTenderness.value = name;
    }
    commonTendernessPresentList.refresh();
  }

  void onSelectUmbilicalPresentTenderness({required String name}) {
    if (selectedUmbilicalPresentTenderness.value == name) {
      selectedUmbilicalPresentTenderness.value = '';
    } else {
      selectedUmbilicalPresentTenderness.value = name;
    }
    commonTendernessPresentList.refresh();
  }

  void onSelectUmbilicalPresentReTenderness({required String name}) {
    if (selectedUmbilicalPresentReTenderness.value == name) {
      selectedUmbilicalPresentReTenderness.value = '';
    } else {
      selectedUmbilicalPresentReTenderness.value = name;
    }
    commonTendernessPresentList.refresh();
  }

  void onSelectEpigastricTenderness({required String name}) {
    if (selectedEpigastricTenderness.value == name) {
      selectedEpigastricTenderness.value = '';
    } else {
      selectedEpigastricTenderness.value = name;
    }
    commonTendernessList.refresh();
  }

  void onSelectSuprapubicTenderness({required String name}) {
    if (selectedSuprapubicTenderness.value == name) {
      selectedSuprapubicTenderness.value = '';
    } else {
      selectedSuprapubicTenderness.value = name;
    }
    commonTendernessList.refresh();
  }

  void onSelectRightKidneyPalpable({required String name}) {
    if (selectedRightKidney.value == name) {
      selectedRightKidney.value = '';
    } else {
      selectedRightKidney.value = name;
    }
    palpableList.refresh();
  }

  void onSelectLeftKidneyPalpable({required String name}) {
    if (selectedLeftKidney.value == name) {
      selectedLeftKidney.value = '';
    } else {
      selectedLeftKidney.value = name;
    }
    palpableList.refresh();
  }

  void onSelectUterusPalpable({required String name}) {
    if (selectedUterus.value == name) {
      selectedUterus.value = '';
    } else {
      selectedUterus.value = name;
    }
    palpableList.refresh();
  }

  void onSelectHerniaPresent(String value) {
    toggleSelection(selectedHerniaPresent, value);
    update();
  }

  void toggleSelection(RxList<String> list, String value) {
    if (list.contains(value)) {
      list.remove(value);
    } else {
      list.add(value);
    }
  }

  updateAlimentaryAndUrinarySystem(
      {required Function(bool? success) callBack}) async {
    AlimentaryAndUrinarySystem requestData = AlimentaryAndUrinarySystem(
        alimentaryAndUrinarySystemDoYouHaveNauseaVomiting:
            isVomiting.value ? 'No' : 'Yes',
        aUSDoYouHavePainInYourAbdomen: isAbdomen.value ? 'No' : 'Yes',
        aUSDoYouFeelBurningWhenYouPassUrine: isUrine.value ? 'No' : 'Yes',
        aUSCleftLip: isCleftLip.value ? 'Absent' : 'Present',
        aUSCleftLipPresent:
            isNotVisibleCleftLipPresent.value ? 'Repaired' : 'Unrepaired',
        aUSCleftPalate: isCleftPalate.value ? 'Absent' : 'Present',
        aUSCleftPalatePresent:
            isNotVisibleCleftPalatePresent.value ? 'Repaired' : 'Unrepaired',
        aUSAbdominalDistension: isAbdominal.value ? 'Absent' : 'Present',
        aUSExaggerateBowelSounds: isExaggerated.value ? 'Absent' : 'Present',
        aUSGuarding: isGuarding.value ? 'Absent' : 'Present',
        aUSRigidity: isRigidity.value ? 'Absent' : 'Present',
        aUSRightHypochondriumPain:
            isRightHypochondriumPain.value ? 'No' : 'Yes',
        aUSRHPainYesPainScore: upperPainRightHypochondrium.value.toInt(),
        aUSRHTenderness:
            isRightHypochondriumTenderness.value ? 'Absent' : 'Present',
        aUSRHTendernessPresent: selectedRightHypoTenderness.value,
        aUSRHSwellingLumps: isRightHypoSwelling.value ? 'Absent' : 'Present',
        aUSRHSwellingLumpsPresentDescription:
            rightHypoSwellingDescription.controller.text,
        aUSRHSwellingLumpsPresentSize:
            int.tryParse(rightHypoSwellingSize.controller.text) ?? 0,
        aUSRHSwellingLumpsPresentTexture: selectedRightHypoTexture.value,
        aUSRHLiver: isRightHypoLiver.value ? 'Not Palpable' : 'Palpable',
        aUSRHLiverPalpable: selectedRightHypoLiver.value,
        aUSRHGallBladder: isRightHypoGall.value ? 'Not Tender' : 'Tender',
        aUSRHGallBladderTender: upperGallPainRightHypochondrium.value.toInt(),
        aUSRightLumbarPain: isRightLumberPain.value ? 'No' : 'Yes',
        aUSRLPainYesPainScore: upperPainRightLumber.value.toInt(),
        aUSRLTenderness: isRightLumberTenderness.value ? 'Absent' : 'Present',
        aUSRLTendernessPresent: selectedRightLumberTenderness.value,
        aUSRLSwellingLumps: isRightLumberSwelling.value ? 'Absent' : 'Present',
        aUSRLSwellingLumpsPresentDescription:
            rightLumberSwellingDescription.controller.text,
        aUSRLSwellingLumpsPresentSize:
            int.tryParse(rightLumberSwellingSize.controller.text) ?? 0,
        aUSRLSwellingLumpsPresentTexture: selectedRightLumberTexture.value,
        aUSRLRightKidney: isRightKidney.value ? 'Not Palpable' : 'Palpable',
        aUSRLRightKidneyPalpable: selectedRightKidney.value,
        aUSRightIliacPain: isRightIliacPain.value ? 'No' : 'Yes',
        aUSRIPainYesPainScore: upperPainRightIliac.value.toInt(),
        ausrimbp: isRightIliacBurneys.value ? "Not Tender" : "Tender",
        aUSRIMBPPainScore: upperBurneysRightIliac.value.toInt(),
        aUSRITenderness: isRightIliacTenderness.value ? 'Absent' : 'Present',
        aUSRITendernessPresent: selectedRightIliacTenderness.value,
        aUSRISwellingLumps: isRightIliacSwelling.value ? 'Absent' : 'Present',
        aUSRISwellingLumpsPresentDescription:
            rightIliacSwellingDescription.controller.text,
        aUSRISwellingLumpsPresentSize:
            int.tryParse(rightIliacSwellingSize.controller.text) ?? 0,
        aUSRISwellingLumpsPresentTexture: selectedRightIliacTexture.value,
        aUSEpigastricPain: isEpigastricPain.value ? 'No' : 'Yes',
        aUSEPainYesPainScore: upperEpigastric.value.toInt(),
        aUSETenderness: selectedEpigastricTenderness.value,
        aUSETendernessPresent: selectedEpigastricPresentTenderness.value,
        aUSETendernessPresentRebound:
            selectedEpigastricPresentReTenderness.value,
        aUSESwellingLumps: isEpigastricSwelling.value ? 'Absent' : 'Present',
        aUSESwellingLumpsPresentDescription:
            epigastricSwellingDescription.controller.text,
        aUSESwellingLumpsPresentSize:
            int.tryParse(epigastricSwellingSize.controller.text) ?? 0,
        aUSESwellingLumpsPresentTexture: selectedEpigastricTexture.value,
        aUSUmbilicalPain: isUmbilicalPain.value ? 'No' : 'Yes',
        aUSUPainYesPainScore: upperUmbilical.value.toInt(),
        aUSUTenderness: selectedRightUmbilicalTenderness.value,
        aUSUTendernessPresent: selectedUmbilicalPresentTenderness.value,
        aUSUTendernessPresentRebound:
            selectedUmbilicalPresentReTenderness.value,
        aUSUSwellingLumps: isUmbilicalSwelling.value ? 'Absent' : 'Present',
        aUSUSwellingLumpsPresentDescription:
            umbilicalSwellingDescription.controller.text,
        aUSUSwellingLumpsPresentSize:
            int.tryParse(umbilicalSwellingSize.controller.text) ?? 0,
        aUSUSwellingLumpsPresentTexture: selectedUmbilicalTexture.value,
        aUSSuprapubicPain: isSuprapubicPain.value ? 'No' : 'Yes',
        aUSSPainYesPainScore: upperSuprapubic.value.toInt(),
        aUSSTenderness: selectedSuprapubicTenderness.value,
        aUSSTendernessPresent: selectedSuprapubicPresentTenderness.value,
        aUSSTendernessPresentRebound:
            selectedSuprapubicPresentReTenderness.value,
        aUSSSwellingLumps: isSuprapubicSwelling.value ? 'Absent' : 'Present',
        aUSSSwellingLumpsPresentDescription: suprapubicSwellingDescription.controller.text,
        aUSSSwellingLumpsPresentSize: int.tryParse(suprapubicSwellingSize.controller.text) ?? 0,
        aUSSSwellingLumpsPresentTexture: selectedSuprapubicTexture.value,
        aUSSUterus: isSuprapubicUterus.value ? 'Not Palpable' : 'Palpable',
        aUSSUterusPalpable: selectedUterus.value,
        aUSLeftHypochondriumPain: isLeftHypochondriumPain.value ? 'No' : 'Yes',
        aUSLHPainYesPainScore: upperPainLeftHypochondrium.value.toInt(),
        aUSLHTenderness: isLeftHypochondriumTenderness.value ? 'Absent' : 'Present',
        aUSLHTendernessPresent: selectedLeftHypoPresentTenderness.value,
        aUSLHSwellingLumps: isLeftHypoSwelling.value ? 'Absent' : 'Present',
        aUSLHSwellingLumpsPresentDescription: leftHypoSwellingDescription.controller.text,
        aUSLHSwellingLumpsPresentSize: int.tryParse(leftHypoSwellingSize.controller.text) ?? 0,
        aUSLHSwellingLumpsPresentTexture: selectedLeftHypoTexture.value,
        aUSLHSpleen: isLeftHypoSpleen.value ? 'Not Palpable' : 'Palpable',
        aUSLHSpleenPalpable: selectedLeftHypoSpleen.value,
        aUSLeftLumbarPain: isLeftLumberPain.value ? 'No' : 'Yes',
        aUSLLPainYesPainScore: upperPainLeftLumber.value.toInt(),
        aUSLLTenderness: isLeftLumberTenderness.value ? 'Absent' : 'Present',
        aUSLLTendernessPresent: selectedLeftLumberTenderness.value,
        aUSLLSwellingLumps: isLeftLumberSwelling.value ? 'Absent' : 'Present',
        aUSLLSwellingLumpsPresentDescription: leftLumberSwellingDescription.controller.text,
        aUSLLSwellingLumpsPresentSize: int.tryParse(leftHypoSwellingSize.controller.text) ?? 0,
        aUSLLSwellingLumpsPresentTexture: selectedLeftLumberTexture.value,
        aUSLLLeftKidney: isLeftKidney.value ? 'Not Palpable' : 'Palpable',
        aUSLLLeftKidneyPalpable: selectedLeftKidney.value,
        aUSLeftIliacPain: isLeftIliacPain.value ? 'No' : 'Yes',
        aUSLIPainYesPainScore: upperPainLeftIliac.value.toInt(),
        aUSLITenderness: isLeftIliacTenderness.value ? 'Absent' : 'Present',
        aUSLITendernessPresent: selectedLeftIliacTenderness.value,
        aUSLISwellingLumps: isLeftIliacSwelling.value ? 'Absent' : 'Present',
        aUSLISwellingLumpsPresentDescription: leftIliacSwellingDescription.controller.text,
        aUSLISwellingLumpsPresentSize: int.tryParse(leftIliacSwellingSize.controller.text) ?? 0,
        aUSLISwellingLumpsPresentTexture: selectedLeftIliacTexture.value,
        aUSHernia: isHernia.value ? 'Absent' : 'Present',
        aUSHerniaPresent: selectedHerniaPresent.join(','),
        aUSUrinaryBladder: isUrinaryBladder.value ? 'Not Palpable' : 'Palpable',
        aUSUrinaryBladderPalpable: selectedUrinaryBladderPalpable.value);

    try {
      if (AppStorage.isStationGIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response =
            await repository.StationGUpdateAlimentary(
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
