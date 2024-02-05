import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/model/resuest/stationF/StationFEarsRequest.dart';
import 'package:nivish/app/data/model/resuest/stationF/StationFEyesRequest.dart';
import 'package:nivish/app/data/model/resuest/stationF/StationFHygiene.dart';
import 'package:nivish/app/data/model/resuest/stationF/StationFMouthRequest.dart';
import 'package:nivish/app/data/model/resuest/stationF/StationFNailsRequest.dart';
import 'package:nivish/app/data/model/resuest/stationF/StationFNoseRequest.dart';
import 'package:nivish/app/data/model/resuest/stationF/StationFOtherRequest.dart';
import 'package:nivish/app/data/model/resuest/stationF/StationFThyroid.dart';
import 'package:nivish/app/modules/home/controllers/home_controller.dart';
import 'package:nivish/app/modules/station_F/widget/F_preview_model.dart';
import 'package:nivish/base/base_controller.dart';
import 'package:nivish/utils/app_utils.dart';
import 'package:nivish/utils/helper/text_field_wrapper.dart';
import 'package:nivish/widgets/finnal_confirmation_widget.dart';
import '../../../../utils/loading/loading_utils.dart';
import '../../../../utils/storage/storage_utils.dart';
import '../../../../widgets/dialog/confirmation_dialog.dart';
import '../../../data/model/dto/response.dart';
import '../../../data/model/response/generic_response.dart';
import '../../../data/model/resuest/stationF/StationFGetModel.dart';
import '../../../data/model/resuest/stationF/StationFHeadRequest.dart';
import '../../../data/model/resuest/stationF/StationFRequestModel.dart';
import '../../../data/repository/stationARepository.dart';
import '../../../routes/app_routes.dart';
import '../widget/final_preview_widget.dart';

class StationFController extends BaseController<AllStationRepository> {
  Rx<StationFGetModel?> stationFResponse = Rx<StationFGetModel?>(null);

  TextFieldWrapper otherSkinLesionsWrapper = TextFieldWrapper();
  TextFieldWrapper otherSkinLesionsBIthMarksWrapper = TextFieldWrapper();
  TextFieldWrapper otherObservations = TextFieldWrapper();
  TextFieldWrapper otherWrapper = TextFieldWrapper();
  TextFieldWrapper otherAppearanceSizeWrapper = TextFieldWrapper();
  TextFieldWrapper otherHairAppearanceWrapper = TextFieldWrapper();
  TextFieldWrapper otherParasitesWrapper = TextFieldWrapper();
  TextFieldWrapper otherHearingWrapper = TextFieldWrapper();
  TextFieldWrapper otherMucosaWrapper = TextFieldWrapper();
  TextFieldWrapper otherTongueWrapper = TextFieldWrapper();
  TextFieldWrapper otherUvulaWrapper = TextFieldWrapper();
  TextFieldWrapper otherCleftWrapper = TextFieldWrapper();
  TextFieldWrapper otherCleftLipWrapper = TextFieldWrapper();
  TextFieldWrapper palateOthersWrapper = TextFieldWrapper();

  RxBool isSkinNormal = RxBool(true);
  RxBool isSkinTextureNormal = RxBool(true);
  RxBool isRashAbsent = RxBool(true);
  RxBool isCloseSkull = RxBool(true);
  RxBool isHairAppearance = RxBool(true);
  RxBool isScalp = RxBool(true);
  RxBool isParasites = RxBool(false);
  RxBool isHairLoss = RxBool(false);
  RxBool otherSkinLesions = RxBool(false);
  RxBool isAcne = RxBool(false);
  RxBool shapeNormal = RxBool(true);
  RxBool deformitySurface = false.obs;
  RxBool isPalpable = RxBool(true);
  RxBool isNotPalpableSupraclavicular = RxBool(true);
  RxBool isNotPalpableAxillary = RxBool(true);
  RxBool isNotPalpableSupratrochlear = RxBool(true);
  RxBool isNotPalpableInguinal = RxBool(true);
  RxBool isEyelidNormal = RxBool(true);
  RxBool isDischarge = RxBool(true);
  RxBool isHearingNormal = RxBool(true);
  RxBool isWearHearingAidYes = RxBool(false);
  RxBool isDischargeHearing = RxBool(true);
  RxBool isNoseDischarge = RxBool(true);
  RxBool isDryness = RxBool(true);
  RxBool isCrusting = RxBool(true);
  RxBool isPolyps = RxBool(true);
  RxBool isMucosa = RxBool(true);
  RxBool isTongue = RxBool(true);
  RxBool isTonsils = RxBool(true);
  RxBool isUvula = RxBool(false);
  RxBool isPalate = RxBool(false);

  RxString selectAcne = RxString('Mild');
  RxString selectedNailsColor = RxString('Pink');
  RxString selectedCuticles = RxString('Normal');
  RxString selectedNailBed = RxString('Absent');
  RxString selectedSkinColorList = RxString('Albinism');
  RxString selectedAppearanceSize = RxString('Normal');
  RxString selectedThyroidGlands = RxString('Normal');
  RxString selectedEnlarged = RxString('R Lobe');
  RxString selectedConjuctiva = RxString('Normal');
  RxString selectedSclera = RxString('Normal');
  RxString selectedEyeLid = RxString('Madarosis');
  RxString selectedDischargeRight = RxString('Watery');
  RxString selectedDischargeLeft = RxString('Watery');
  RxString selectedHearingReduced = RxString('Mild');
  RxString selectedDischargeHearingRight = RxString('Watery');
  RxString selectedDischargeHearingLeft = RxString('Watery');
  RxString selectedWax = RxString('Absent');
  RxString selectedEardrum = RxString('Normal');
  RxString selectedEardrumRight = RxString('Perforated');
  RxString selectedEardrumLeft = RxString('Perforated');
  RxString selectedNoseDischargeRight = RxString('Watery');
  RxString selectedNoseDischargeLeft = RxString('Watery');
  RxString selectedDryness = RxString('Right');
  RxString selectedCrusting = RxString('Right');
  RxString selectedPolyps = RxString('Right');
  RxString selectedSeptum = RxString('Normal');
  RxString selectedSinuses = RxString('Normal');
  RxString selectedUvula = RxString('Normal');
  RxString selectedPalate = RxString('Normal');
  RxString selectedNails = RxString('Good');
  RxString selectedHair = RxString('Good');
  RxString selectedSkin = RxString('Good');
  RxString selectedOdour = RxString('Nil');

  RxList<String> selectedSkinTexture = RxList();
  RxList<String> selectedRashPresent = RxList();
  RxList<String> selectedOtherSkinLesions1 = RxList();
  RxList<String> selectedBirthmarks1 = RxList();
  RxList<String> selectedNailsShape = RxList();
  RxList<String> selectedDeformitySurface = RxList();
  RxList<String> selectedSkullFontanella = RxList();
  RxList<String> selectedFace = RxList();
  RxList<String> selectedNeck = RxList();
  RxList<String> selectedChest = RxList();
  RxList<String> selectedAbdomen = RxList();
  RxList<String> selectedGroin = RxList();
  RxList<String> selectedBack = RxList();
  RxList<String> selectedArms = RxList();
  RxList<String> selectedHands = RxList();
  RxList<String> selectedLegs = RxList();
  RxList<String> selectedFeet = RxList();
  RxList<String> selectedFrontalFontanella = RxList();
  RxList<String> selectedOccipitalFontanella = RxList();

  RxList selectedHairAppearance = RxList();
  RxList selectedScalp = RxList();
  RxList selectedParasites = RxList();
  RxList selectedHairLoss = RxList();
  RxList selectedPalpable = RxList();
  RxList selectedLN = RxList();
  RxList selectedAxillaryLN = RxList();
  RxList selectedSupratrochlearLN = RxList();
  RxList selectedInguinalLN = RxList();
  RxList selectedDischargeYes = RxList();
  RxList selectedEarsDischargeYes = RxList();
  RxList selectedHearingAbnormal = RxList();
  RxList selectedHearingReducedWearsYesRight = RxList();
  RxList selectedWaxPresent = RxList();
  RxList selectedEarDrum = RxList();
  RxList selectedNoseDischargeYes = RxList();
  RxList selectedMucosaNames = RxList();
  RxList selectedTongueNames = RxList();
  RxList selectedTonsils = RxList();

  void onCheckedSkinNormal() {
    isSkinNormal.toggle();
  }

  void onCheckedSkinTextureNormal() {
    isSkinTextureNormal.toggle();
  }

  void onCheckedRashAbsent() {
    isRashAbsent.toggle();
  }

  void onCheckedCloseSkull() {
    isCloseSkull.toggle();
  }

  void onCheckedHairAppearance() {
    isHairAppearance.toggle();
  }

  void onCheckedScalp() {
    isScalp.toggle();
  }

  void onCheckedOtherSkinLesions() {
    otherSkinLesions.toggle();
  }

  void onCheckedShapeNormal() {
    shapeNormal.toggle();
  }

  void onCheckedSpecialistReferralNeeded() {
    isSpecialistReferralNeeded.toggle();
  }

  void onCheckedPalpable() {
    isPalpable.toggle();
  }

  void onCheckedNotPalpableSupraclavicular() {
    isNotPalpableSupraclavicular.toggle();
  }

  void onCheckedNotPalpableAxillary() {
    isNotPalpableAxillary.toggle();
  }

  void onCheckedNotPalpableSupratrochlear() {
    isNotPalpableSupratrochlear.toggle();
  }

  void onCheckedNotPalpableInguinal() {
    isNotPalpableInguinal.toggle();
  }

  void onCheckedEyeLidNormal() {
    isEyelidNormal.toggle();
  }

  void onCheckedDischarge() {
    isDischarge.toggle();
  }

  void onCheckedHearing() {
    isHearingNormal.toggle();
  }

  void onCheckedHearingYes() {
    isWearHearingAidYes.toggle();
  }

  void onCheckedDischargeHearing() {
    isDischargeHearing.toggle();
  }

  void onCheckedNoseDischarge() {
    isNoseDischarge.toggle();
  }

  void onCheckedDryness() {
    isDryness.toggle();
  }

  void onCheckedCrusting() {
    isCrusting.toggle();
  }

  void onCheckedPolyps() {
    isPolyps.toggle();
  }

  void onCheckedMucosa() {
    isMucosa.toggle();
  }

  void onCheckedTongue() {
    isTongue.toggle();
  }

  void onCheckedTonsils() {
    isTonsils.toggle();
  }

  void onCheckedUvula() {
    isUvula.toggle();
  }

  void onCheckedPalate() {
    isPalate.toggle();
  }

  RxList<String> acneList = RxList(["Mild", "Moderate", "Severe"]);
  RxList<String> nailsColorList =
      RxList(['Pink', "Blue-tinged", "Pale", "Discoloured"]);
  RxList<String> cuticlesList = RxList([
    'Normal',
    "Torn",
  ]);
  RxList<String> nailBedList = RxList([
    'Absent',
    "Present",
  ]);
  RxList<String> appearanceSizeList = RxList([
    'Normal',
    "Microcephalus",
    "Hydrocephalus",
  ]);

  RxList<String> skinColorList = RxList([
    'Albinism',
    'Yellow',
    'Cyanosed',
    'Ruddy',
  ]);
  RxList<String> rashPresentList = RxList([
    'Face',
    'Neck',
    'Chest',
    'Abdomen',
    'Groin',
    'Back',
    'Arms',
    'Hands',
    'Legs',
    'Feet',
  ]);
  RxList<String> skinTextureList =
      RxList(['Dry', 'Crinkled', 'Scaly', 'Hemorrhages', 'Oily', "Moist"]);

  RxList<String> otherSkinLesionsList1 = RxList([
    'Finger web boils',
    'Scabs',
    'Ringworm',
    'Leucoderma',
    'Scratches',
    'Birth marks',
    'Other'
  ]);

  RxList<String> birthmarksList = RxList(['Nevus', 'Café au lait', 'Other']);

  RxList<String> faceList = RxList([
    "Macular-Red",
    "Papular-Red",
    "Pustular-intact",
    "Macular-Pale",
    "Papular-Pale",
    "Pustular-Broken"
  ]);

  RxList<String> nailsShapeList = RxList(['Bitten', 'Clubbed', 'Spoon-shaped']);
  RxList<String> deformitySurfaceList = RxList(
      ['White Spots', 'Ridging', 'Brown lines/spots', 'Irregular thickening']);

  RxList<String> skullFontanellaList =
      RxList(['Frontal Fontanella', 'Occipital Fontanella']);

  RxList<String> frontalOccipitalFontanellaList =
      RxList(['Bulging', 'Sunken', 'Non-bulging / Flat', 'Enlarged / Wide']);
  final Map<String, String> hairAppearanceList = {
    'Greasy': 'Greasy',
    'Dry & Brittle': 'Dry & Brittle',
    'Early greying': 'Early greying',
    'Other': 'Other'
  };
  final Map<String, String> scalpList = {
    'Dandruff': 'Dandruff',
    'Edema': 'Edema',
    'Ringworm': 'Ringworm',
    'Ulcers': 'Ulcers',
    'Hematoma': 'Hematoma',
    'Folliculities': 'Folliculities',
    'Swelling': 'Swelling',
    'Pustules': 'Pustules',
    'Sebaceous Cyst': 'Sebaceous Cyst',
    'Lipoma': 'Lipoma'
  };
  final Map<String, String> parasitesList = {
    'Adults': 'Adults',
    'Nits': 'Nits',
    'Other': 'Other',
  };
  final Map<String, String> hairLossList = {
    'Patchy': 'Patchy',
    'Generalized': 'Generalized',
    'Temporal': 'Temporal',
    'Crown': 'Crown',
    'Frontal': 'Frontal'
  };

  RxList<String> thyroidGlandsList = RxList([
    "Normal",
    "Surgically Removed",
    "Enlarged",
  ]);
  RxList<String> enlargedList = RxList([
    "R Lobe",
    "L Lobe",
    "R & L Lobes",
  ]);
  final Map<String, String> palpableList = {
    'Submental': 'Submental',
    'Occipital': 'Occipital',
    'Submandibular R': 'Submandibular R',
    'Submandibular L': 'Submandibular L',
    'Anterior Cervical R': 'Anterior Cervical R',
    'Anterior Cervical L': 'Anterior Cervical L',
    'Lateral Cervical R': 'Lateral Cervical R',
    'Lateral Cervical L': 'Lateral Cervical L',
    'Posterior Cervical R': 'Posterior Cervical R',
    'Posterior Cervical L': 'Posterior Cervical L'
  };
  final Map<String, String> lnList = {
    'Right': 'Right',
    'Left': 'Left',
  };
  RxList<String> eyesDischargeYesList = RxList(['Right Eye', 'Left Eye']);
  RxList<String> conjuctivaList = RxList([
    "Normal",
    "Pallor",
    "Congestion",
    "Oedema",
  ]);
  RxList<String> scleraList = RxList([
    "Normal",
    "Yellow Tinged",
    "Muddy",
    "Haemorrhagic",
  ]);
  RxList<String> eyelidList = RxList(
      ["Madarosis", "Trichiasis", "Distichiasis", "Stye", "Blepharitis"]);
  RxList<String> dischargeRightList =
      RxList(["Watery", "Sticky White", "Sticky Yellow"]);
  RxList<String> dischargeLeftList =
      RxList(["Watery", "Sticky White", "Sticky Yellow"]);
  RxList<String> hearingAbnormalList =
      RxList(['Tinnitus', 'Absent', 'Exaggerate', 'Reduced', 'Other']);

  RxList<String> hearingReducedList =
      RxList(["Mild", "Moderate", "Severe", "Wears Hearing Aid"]);
  RxList<String> earsDischargeYesList = RxList(['Right Ear', 'Left Ear']);

  RxList<String> dischargeHearingRightList =
      RxList(["Watery", "Sticky White", "Blood-stained", "Sticky Yellow"]);
  RxList<String> dischargeHearingLeftList =
      RxList(["Watery", "Sticky White", "Blood-stained", "Sticky Yellow"]);
  RxList<String> waxHearingList =
      RxList(["Absent", "Can not be evaluated", "Present"]);
  RxList<String> eardrumList =
      RxList(["Normal", "Can not be evaluated", "Abnormal"]);
  RxList<String> eardrumRightList =
      RxList(["Perforated", "Hemorrhagic", "Absent/Missing"]);
  RxList<String> eardrumLeftList =
      RxList(["Perforated", "Hemorrhagic", "Absent/Missing"]);
  RxList<String> noseDischargeYesList =
      RxList(['Right Nostril', 'Left Nostril']);

  RxList<String> noseRightNostrilList =
      RxList(["Watery", "Purulent", "Blood-stained"]);
  RxList<String> noseLeftNostrilList =
      RxList(["Watery", "Purulent", "Blood-stained"]);
  RxList<String> drynessList = RxList(["Right", "Left", "Both"]);
  RxList<String> crustingList = RxList(["Right", "Left", "Both"]);
  RxList<String> polypsList = RxList(["Right", "Left", "Both"]);
  RxList<String> septumList = RxList(["Normal", "DNS", "Fracture"]);
  RxList<String> sinusesList = RxList(["Normal", "Tender"]);

  final Map<String, String> mucosaListName = {
    'Pale': 'Pale',
    'Vesicles': 'Vesicles',
    'Leukoplakia': 'Leukoplakia',
    'Red': 'Red',
    'Ulcers': 'Ulcers',
    'Cyanosed': 'Cyanosed',
    'Other': 'Other',
  };
  final Map<String, String> tongueListName = {
    'Pale': 'Pale',
    'Protruded': 'Protruded',
    'Smooth/Bald': 'Smooth/Bald',
    'Red': 'Red',
    'Enlarged': 'Enlarged',
    'Vesicles': 'Vesicles',
    'Cyanosed': 'Cyanosed',
    'Purulent Lesions': 'Purulent Lesions',
    'Ulcers': 'Ulcers',
    'Leukoplakia': 'Leukoplakia',
    'Other': 'Other'
  };

  RxList<String> tonsilsList = RxList(['Enlarged', 'Purulent']);

  RxList<String> uvulaList = RxList(["Normal", "Removed"]);

  RxList<String> palateList = RxList(["Normal"]);

  RxList<String> nailsList = RxList(["Good", "Unsatisfactory"]);

  RxList<String> hairList = RxList(["Good", "Unsatisfactory"]);

  RxList<String> skinList = RxList(["Good", "Unsatisfactory"]);

  RxList<String> odourList = RxList(["Nil", "Unsatisfactory"]);

  void onSelectedAcne({required String name}) {
    if (selectAcne.value == name) {
      selectAcne.value = '';
    } else {
      selectAcne.value = name;
    }
    acneList.refresh();
  }

  void onSelectNailsColor({required String name}) {
    if (selectedNailsColor.value == name) {
      selectedNailsColor.value = '';
    } else {
      selectedNailsColor.value = name;
    }
    nailsColorList.refresh();
  }

  void onSelectCuticles({required String name}) {
    if (selectedCuticles.value == name) {
      selectedCuticles.value = '';
    } else {
      selectedCuticles.value = name;
    }
    cuticlesList.refresh();
  }

  void onSelectNailBedInfection({required String name}) {
    if (selectedNailBed.value == name) {
      selectedNailBed.value = '';
    } else {
      selectedNailBed.value = name;
    }
    nailBedList.refresh();
  }

  void onSelectSkinColorList({required String name}) {
    if (selectedSkinColorList.value == name) {
      selectedSkinColorList.value = '';
    } else {
      selectedSkinColorList.value = name;
    }
    skinColorList.refresh();
  }

  void onSelectAppearanceSize({required String name}) {
    if (selectedAppearanceSize.value == name) {
      selectedAppearanceSize.value = '';
    } else {
      selectedAppearanceSize.value = name;
    }
    appearanceSizeList.refresh();
  }

  void onSelectHairAppearance({required int idx}) {
    String name = hairAppearanceList.keys.elementAt(idx);
    if (selectedHairAppearance.contains(name)) {
      selectedHairAppearance.remove(name);
    } else {
      selectedHairAppearance.add(name);
    }
  }

  void onSelectScalp({required int idx}) {
    String name = scalpList.keys.elementAt(idx);
    if (selectedScalp.contains(name)) {
      selectedScalp.remove(name);
    } else {
      selectedScalp.add(name);
    }
  }

  void onSelectParasites({required int idx}) {
    String name = parasitesList.keys.elementAt(idx);
    if (selectedParasites.contains(name)) {
      selectedParasites.remove(name);
    } else {
      selectedParasites.add(name);
    }
  }

  void onSelectHairLoss({required int idx}) {
    String name = hairLossList.keys.elementAt(idx);
    if (selectedHairLoss.contains(name)) {
      selectedHairLoss.remove(name);
    } else {
      selectedHairLoss.add(name);
    }
  }

  void onSelectThyroidGlands({required String name}) {
    if (selectedThyroidGlands.value == name) {
      selectedThyroidGlands.value = '';
    } else {
      selectedThyroidGlands.value = name;
    }
    thyroidGlandsList.refresh();
  }

  void onSelectEnlarged({required String name}) {
    if (selectedEnlarged.value == name) {
      selectedEnlarged.value = '';
    } else {
      selectedEnlarged.value = name;
    }
    enlargedList.refresh();
  }

  void onSelectPalpable({required int idx}) {
    String name = palpableList.keys.elementAt(idx);
    if (selectedPalpable.contains(name)) {
      selectedPalpable.remove(name);
    } else {
      selectedPalpable.add(name);
    }
  }

  void onSelectLN({required int idx}) {
    String name = lnList.keys.elementAt(idx);
    if (selectedLN.contains(name)) {
      selectedLN.remove(name);
    } else {
      selectedLN.add(name);
    }
  }

  void onSelectAxillaryLN({required int idx}) {
    String name = lnList.keys.elementAt(idx);
    if (selectedAxillaryLN.contains(name)) {
      selectedAxillaryLN.remove(name);
    } else {
      selectedAxillaryLN.add(name);
    }
  }

  void onSelectSupratrochlearLN({required int idx}) {
    String name = lnList.keys.elementAt(idx);
    if (selectedSupratrochlearLN.contains(name)) {
      selectedSupratrochlearLN.remove(name);
    } else {
      selectedSupratrochlearLN.add(name);
    }
  }

  void onSelectinguinalLN({required int idx}) {
    String name = lnList.keys.elementAt(idx);
    if (selectedInguinalLN.contains(name)) {
      selectedInguinalLN.remove(name);
    } else {
      selectedInguinalLN.add(name);
    }
  }

  void onSelectConjuctiva({required String name}) {
    if (selectedConjuctiva.value == name) {
      selectedConjuctiva.value = '';
    } else {
      selectedConjuctiva.value = name;
    }
    conjuctivaList.refresh();
  }

  void onSelectSclera({required String name}) {
    if (selectedSclera.value == name) {
      selectedSclera.value = '';
    } else {
      selectedSclera.value = name;
    }
    scleraList.refresh();
  }

  void onSelectDischargeYes({required int idx}) {
    String name = eyesDischargeYesList.elementAt(idx);
    if (selectedDischargeYes.contains(name)) {
      selectedDischargeYes.remove(name);
    } else {
      selectedDischargeYes.add(name);
    }
  }

  void onSelectEarsDischargeYes({required int idx}) {
    String name = earsDischargeYesList.elementAt(idx);
    if (selectedEarsDischargeYes.contains(name)) {
      selectedEarsDischargeYes.remove(name);
    } else {
      selectedEarsDischargeYes.add(name);
    }
  }

  void onSelectEyeLid({required String name}) {
    if (selectedEyeLid.value == name) {
      selectedEyeLid.value = '';
    } else {
      selectedEyeLid.value = name;
    }
    eyelidList.refresh();
  }

  void onSelectDischargeRight({required String name}) {
    if (selectedDischargeRight.value == name) {
      selectedDischargeRight.value = '';
    } else {
      selectedDischargeRight.value = name;
    }
    dischargeRightList.refresh();
  }

  void onSelectDischargeLeft({required String name}) {
    if (selectedDischargeLeft.value == name) {
      selectedDischargeLeft.value = '';
    } else {
      selectedDischargeLeft.value = name;
    }
    dischargeLeftList.refresh();
  }

  // void onSelectHearing({required String name}) {
  //   if (selectedHearing.value == name) {
  //     selectedHearing.value = '';
  //   } else {
  //     selectedHearing.value = name;
  //   }
  //   hearingList.refresh();
  // }

  void onSelectHearingReduced({required String name}) {
    if (selectedHearingReduced.value == name) {
      selectedHearingReduced.value = '';
    } else {
      selectedHearingReduced.value = name;
    }
    hearingReducedList.refresh();
  }

  void onSelectDischargeHearingRight({required String name}) {
    if (selectedDischargeHearingRight.value == name) {
      selectedDischargeHearingRight.value = '';
    } else {
      selectedDischargeHearingRight.value = name;
    }
    dischargeHearingRightList.refresh();
  }

  void onSelectDischargeHearingLeft({required String name}) {
    if (selectedDischargeHearingLeft.value == name) {
      selectedDischargeHearingLeft.value = '';
    } else {
      selectedDischargeHearingLeft.value = name;
    }
    dischargeHearingLeftList.refresh();
  }

  void onSelectHearingReducedWearsYesRight({required int idx}) {
    String name = lnList.keys.elementAt(idx);
    if (selectedHearingReducedWearsYesRight.contains(name)) {
      selectedHearingReducedWearsYesRight.remove(name);
    } else {
      selectedHearingReducedWearsYesRight.add(name);
    }
  }

  void onSelectWaxPresentRight({required int idx}) {
    String name = lnList.keys.elementAt(idx);
    if (selectedWaxPresent.contains(name)) {
      selectedWaxPresent.remove(name);
    } else {
      selectedWaxPresent.add(name);
    }
  }

  void onSelectEarDrum({required int idx}) {
    String name = earsDischargeYesList.elementAt(idx);
    if (selectedEarDrum.contains(name)) {
      selectedEarDrum.remove(name);
    } else {
      selectedEarDrum.add(name);
    }
  }

  void onSelectWax({required String name}) {
    if (selectedWax.value == name) {
      selectedWax.value = '';
    } else {
      selectedWax.value = name;
    }
    waxHearingList.refresh();
  }

  void onSelectEardrum({required String name}) {
    if (selectedEardrum.value == name) {
      selectedEardrum.value = '';
    } else {
      selectedEardrum.value = name;
    }
    eardrumList.refresh();
  }

  void onSelectEardrumRight({required String name}) {
    if (selectedEardrumRight.value == name) {
      selectedEardrumRight.value = '';
    } else {
      selectedEardrumRight.value = name;
    }
    eardrumRightList.refresh();
  }

  void onSelectEardrumLeft({required String name}) {
    if (selectedEardrumLeft.value == name) {
      selectedEardrumLeft.value = '';
    } else {
      selectedEardrumLeft.value = name;
    }
    eardrumLeftList.refresh();
  }

  void onSelectNoseDischargeYes({required int idx}) {
    String name = noseDischargeYesList.elementAt(idx);
    if (selectedNoseDischargeYes.contains(name)) {
      selectedNoseDischargeYes.remove(name);
    } else {
      selectedNoseDischargeYes.add(name);
    }
  }

  void onSelectNoseRightNostril({required String name}) {
    if (selectedNoseDischargeRight.value == name) {
      selectedNoseDischargeRight.value = '';
    } else {
      selectedNoseDischargeRight.value = name;
    }
    noseRightNostrilList.refresh();
  }

  void onSelectNoseLeftNostril({required String name}) {
    if (selectedNoseDischargeLeft.value == name) {
      selectedNoseDischargeLeft.value = '';
    } else {
      selectedNoseDischargeLeft.value = name;
    }
    noseLeftNostrilList.refresh();
  }

  void onSelectDryness({required String name}) {
    if (selectedDryness.value == name) {
      selectedDryness.value = '';
    } else {
      selectedDryness.value = name;
    }
    drynessList.refresh();
  }

  void onSelectCrusting({required String name}) {
    if (selectedCrusting.value == name) {
      selectedCrusting.value = '';
    } else {
      selectedCrusting.value = name;
    }
    crustingList.refresh();
  }

  void onSelectPolyps({required String name}) {
    if (selectedPolyps.value == name) {
      selectedPolyps.value = '';
    } else {
      selectedPolyps.value = name;
    }
    polypsList.refresh();
  }

  void onSelectSeptum({required String name}) {
    if (selectedSeptum.value == name) {
      selectedSeptum.value = '';
    } else {
      selectedSeptum.value = name;
    }
    septumList.refresh();
  }

  void onSelectSinuses({required String name}) {
    if (selectedSinuses.value == name) {
      selectedSinuses.value = '';
    } else {
      selectedSinuses.value = name;
    }
    sinusesList.refresh();
  }

  void onSelectMucosaNames({required int idx}) {
    String name = mucosaListName.keys.elementAt(idx);
    if (selectedMucosaNames.contains(name)) {
      selectedMucosaNames.remove(name);
    } else {
      selectedMucosaNames.add(name);
    }
  }

  void onSelectTongueNames({required int idx}) {
    String name = tongueListName.keys.elementAt(idx);
    if (selectedTongueNames.contains(name)) {
      selectedTongueNames.remove(name);
    } else {
      selectedTongueNames.add(name);
    }
  }

  void onSelectTonsils({required int idx}) {
    String name = tonsilsList.elementAt(idx);
    if (selectedTonsils.contains(name)) {
      selectedTonsils.remove(name);
    } else {
      selectedTonsils.add(name);
    }
  }

  void onSelectUvula({required String name}) {
    if (selectedUvula.value == name) {
      selectedUvula.value = '';
    } else {
      selectedUvula.value = name;
    }
    uvulaList.refresh();
  }

  void onSelectPalate({required String name}) {
    if (selectedPalate.value == name) {
      selectedPalate.value = '';
    } else {
      selectedPalate.value = name;
    }
    palateList.refresh();
  }

  void onSelectNails({required String name}) {
    if (selectedNails.value == name) {
      selectedNails.value = '';
    } else {
      selectedNails.value = name;
    }
    nailsList.refresh();
  }

  void onSelectHair({required String name}) {
    if (selectedHair.value == name) {
      selectedHair.value = '';
    } else {
      selectedHair.value = name;
    }
    hairList.refresh();
  }

  void onSelectSkin({required String name}) {
    if (selectedSkin.value == name) {
      selectedSkin.value = '';
    } else {
      selectedSkin.value = name;
    }
    skinList.refresh();
  }

  void onSelectOdour({required String name}) {
    if (selectedOdour.value == name) {
      selectedOdour.value = '';
    } else {
      selectedOdour.value = name;
    }
    odourList.refresh();
  }

  ///

  RxBool isSpecialistReferralNeeded = RxBool(false);

  RxList<String> selectedReferralType = RxList();
  RxString selectedReFlag = RxString('');

  RxList<String> referralTypeList = RxList([
    'Pediatrician',
    "Internist",
    "Dentist",
    "Cardiologist",
    "Dermatologist",
    "Endocrinologist",
    "ENT Specialist",
    "Gynecologist",
    "Hematologist",
    "Neurologist",
    "Opthalmologist",
    "Orthopedist",
    "Other"
  ]);

  RxList<String> referralFlagList = RxList([
    'Non-Urgent',
    "Urgent",
    "Emergency",
  ]);

  void onSelectReferralFlag({required String name}) {
    if (selectedReFlag.value == name) {
      selectedReFlag.value = '';
    } else {
      selectedReFlag.value = name;
    }
    referralFlagList.refresh();
  }

  ///station tab

  RxInt selectedTabIdx = 0.obs;

  void onSaveAndNext() async {
    switch (selectedTabIdx.value) {
      case 0:
        {
          if (isSkinTextureNormal.value == false &&
              (selectedSkinTexture.isEmpty)) {
            AppUtils.showSnackBar(
                'Please select exact values for Texture Of Skin');
          } else if (isRashAbsent.value == false &&
              (selectedRashPresent.isEmpty)) {
            AppUtils.showSnackBar(
                'Please select exact values for Rash - Present');
          } else if (isRashAbsent.value == false &&
              selectedRashPresent.isNotEmpty &&
              (selectedFace.isEmpty &&
                  selectedNeck.isEmpty &&
                  selectedChest.isEmpty &&
                  selectedAbdomen.isEmpty &&
                  selectedGroin.isEmpty &&
                  selectedBack.isEmpty &&
                  selectedArms.isEmpty &&
                  selectedHands.isEmpty &&
                  selectedLegs.isEmpty &&
                  selectedFeet.isEmpty)) {
            AppUtils.showSnackBar(
                'Please select exact values for the Specific body parts');
          } else if (otherSkinLesions.value &&
              ((selectedOtherSkinLesions1.isEmpty))) {
            AppUtils.showSnackBar(
                'Please select exact values for Other Skin Lesions');
          } else if (otherSkinLesions.value &&
              ((selectedOtherSkinLesions1.contains('Other') &&
                  (otherSkinLesionsWrapper.controller.text.isEmpty)))) {
            AppUtils.showSnackBar(
                'Please enter text for Other Skin Lesions - Other field');
          } else if (otherSkinLesions.value &&
              selectedOtherSkinLesions1.contains('Birth marks') &&
              ((selectedBirthmarks1.isEmpty))) {
            AppUtils.showSnackBar('Please select exact values for Birth marks');
          } else if (otherSkinLesions.value &&
              selectedOtherSkinLesions1.contains('Birth marks') &&
              ((selectedBirthmarks1.contains('Other') &&
                  otherSkinLesionsBIthMarksWrapper.controller.text.isEmpty))) {
            AppUtils.showSnackBar(
                'Please enter text for Other Skin Lesions - Birth marks - Other field');
          } else if (isAcne.value && selectAcne.isEmpty) {
            AppUtils.showSnackBar('Please select a value for Acne');
          } else {
            await submitStationFData(callBack: (success) {
              if (success ?? false) selectedTabIdx.value = 1;
            });
          }
        }
        break;
      case 1:
        {
          if (shapeNormal.value == false && (selectedNailsShape.isEmpty)) {
            AppUtils.showSnackBar('Please select exact values for  Shape');
          } else if (deformitySurface.value &&
              (selectedDeformitySurface.isEmpty)) {
            AppUtils.showSnackBar(
                'Please select exact values for Deformity / Surface');
          } else {
            await updateFNails(callBack: (success) {
              if (success ?? false) selectedTabIdx.value = 2;
            });
          }
        }

        break;
      case 2:
        {
          if (selectedAppearanceSize.value == "Other" &&
              (otherAppearanceSizeWrapper.controller.text.isEmpty)) {
            AppUtils.showSnackBar(
                'Please enter text for Appearance & Size - Other field');
          } else if (isHairAppearance.value == false &&
              (selectedHairAppearance.isEmpty)) {
            AppUtils.showSnackBar(
                'Please select exact values for Hair Appearance');
          } else if (isHairAppearance.value == false &&
              (selectedHairAppearance.contains('Other') &&
                  otherHairAppearanceWrapper.controller.text.isEmpty)) {
            AppUtils.showSnackBar(
                'Please enter text for Hair Appearance - Other field');
          } else if (isScalp.value == false && (selectedScalp.isEmpty)) {
            AppUtils.showSnackBar('Please select exact values for Scalp ');
          } else if (isParasites.value == true && (selectedParasites.isEmpty)) {
            AppUtils.showSnackBar('Please select exact values for Parasites');
          } else if (isParasites.value == true &&
              (selectedParasites.contains('Other') &&
                  otherParasitesWrapper.controller.text.isEmpty)) {
            AppUtils.showSnackBar(
                'Please enter text for Parasites - Other field');
          } else if (isHairLoss.value && (selectedHairLoss.isEmpty)) {
            AppUtils.showSnackBar(
                'Please select exact values for Hair Loss(Alopecia)');
          } else {
            await updateFHead(callBack: (success) {
              if (success ?? false) selectedTabIdx.value = 3;
            });
          }
        }
        break;
      case 3:
        {
          if (selectedThyroidGlands.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for ThyroidGlands');
          } else if (selectedEnlarged.value.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for ThyroidGlands - Enlarged');
          } else if (isPalpable.value == false && (selectedPalpable.isEmpty)) {
            AppUtils.showSnackBar(
                'Please select exact values for  Cervical LN');
          } else if (isNotPalpableSupraclavicular.value == false &&
              (selectedLN.isEmpty)) {
            AppUtils.showSnackBar(
                'Please select exact values for  Supraclavicular LN');
          } else if (isNotPalpableAxillary.value == false &&
              (selectedAxillaryLN.isEmpty)) {
            AppUtils.showSnackBar('Please select exact values for Axillary LN');
          } else if (isNotPalpableSupratrochlear.value == false &&
              (selectedSupratrochlearLN.isEmpty)) {
            AppUtils.showSnackBar(
                'Please select exact values for Supratrochlear LN ');
          } else if (isNotPalpableInguinal.value == false &&
              (selectedInguinalLN.isEmpty)) {
            AppUtils.showSnackBar('Please select exact values for Inguinal LN');
          } else {
            await updateFThyroidGlands(callBack: (success) {
              if (success ?? false) selectedTabIdx.value = 4;
            });
          }
        }
        break;

      case 4:
        {
          if (selectedSclera.isEmpty) {
            AppUtils.showSnackBar('Please select exact values for Sclera');
          } else if (selectedConjuctiva.isEmpty) {
            AppUtils.showSnackBar('Please select exact values for Conjuctiva');
          } else if (isDischarge.value == false &&
              (selectedDischargeYes.isEmpty)) {
            AppUtils.showSnackBar('Please select exact values for Discharge');
          } else if (isDischarge.value == false &&
              (selectedDischargeYes.contains('Right Eye') &&
                  selectedDischargeRight.isEmpty)) {
            AppUtils.showSnackBar(
                'Please select exact values for Discharge RightEye');
          } else if (isDischarge.value == false &&
              (selectedDischargeYes.contains('Left Eye') &&
                  selectedDischargeLeft.isEmpty)) {
            AppUtils.showSnackBar(
                'Please select exact values for Discharge Left Eye');
          } else {
            await updateFEyes(callBack: (success) {
              if (success ?? false) selectedTabIdx.value = 5;
            });
          }
        }
        break;
      case 5:
        {
          if (isHearingNormal.value == false &&
              (selectedHearingAbnormal.isEmpty)) {
            AppUtils.showSnackBar('Please select exact values for Hearing');
          } else if (isHearingNormal.value == false &&
              (selectedHearingAbnormal.contains('Other') &&
                  otherHearingWrapper.controller.text.isEmpty)) {
            AppUtils.showSnackBar(
                'Please select exact values for Other in Hearing');
          } else if (isDischargeHearing.value == false &&
              (selectedEarsDischargeYes.isEmpty)) {
            AppUtils.showSnackBar(
                'Please select exact values for Ear Discharge');
          } else {
            await updateFEars(callBack: (success) {
              if (success ?? false) selectedTabIdx.value = 6;
            });
          }
        }
        break;
      case 6:
        {
          if (isNoseDischarge.value == false &&
              (selectedNoseDischargeYes.isEmpty)) {
            AppUtils.showSnackBar(
                'Please select exact values for Nose Discharge');
          } else{
            await updateFNose(callBack: (success) {
              if (success ?? false) selectedTabIdx.value = 7;
            });
        }}
        break;

      case 7:
        {
          if (isMucosa.value == false && (selectedMucosaNames.isEmpty)) {
            AppUtils.showSnackBar('Please select exact values for Mucosa');
          } else if (isMucosa.value == false &&
              (selectedMucosaNames.contains('Other') &&
                  otherMucosaWrapper.controller.text.isEmpty)) {
            AppUtils.showSnackBar(
                'Please select exact values for  Other in Mucosa');
          } else if (isTongue.value == false && (selectedTongueNames.isEmpty)) {
            AppUtils.showSnackBar('Please select exact values for Tongue');
          } else if (isTongue.value == false &&
              (selectedTongueNames.contains('Other') &&
                  otherTongueWrapper.controller.text.isEmpty)) {
            AppUtils.showSnackBar(
                'Please select exact values for Other in Tongue');
          } else if (isTonsils.value == false && (selectedTonsils.isEmpty)) {
            AppUtils.showSnackBar('Please select exact values for Tonsils');
          } else if (selectedUvula.value == 'Abnormal' &&
              otherUvulaWrapper.controller.text.isEmpty) {
            AppUtils.showSnackBar('Please enter text for Uvula Abnormal');
          } else if (selectedPalate.value == "Cleft Palate" &&
              (otherCleftWrapper.controller.text.isEmpty)) {
            AppUtils.showSnackBar('Please enter text for Cleft Palate');
          } else if (selectedPalate.value == "Cleft Lip & Palate" &&
              (otherCleftLipWrapper.controller.text.isEmpty)) {
            AppUtils.showSnackBar('Please enter text for Cleft Lip & Palate');
          } else if (selectedPalate.value == "Other" &&
              (palateOthersWrapper.controller.text.isEmpty)) {
            AppUtils.showSnackBar('Please enter text for Palate Other');
          } else {
            await updateFMouth(callBack: (success) {
              if (success ?? false) selectedTabIdx.value = 8;
            });
          }
        }
        break;
      case 8:
        {
          await updateFHygiene(callBack: (success) {
            if (success ?? false) selectedTabIdx.value = 9;
          });
        }
        break;

      case 9:
        {
          await updateFOther(callBack: (success) {
            if (success ?? false) selectedTabIdx.value = 9;
          });
        }
        if (isSpecialistReferralNeeded.value &&
            (selectedReferralType.isEmpty || selectedReFlag.isEmpty)) {
          AppUtils.showSnackBar('Please select exact values for Type and Flag');
        } else if (selectedReferralType.contains('Other') &&
            otherWrapper.controller.text.isEmpty) {
          AppUtils.showSnackBar(
              'Please enter text for the Specialist Referral Recommended - Type - Other field');
        } else {
          StationFPreviewModel dataValue = StationFPreviewModel(
              skinColorValue: stationFResponse.value?.skinColourTone ?? '',
              skinColorAbnormalValue:
                  stationFResponse.value?.skinColourToneAbnormal ?? '',
              skinTextureValue: stationFResponse.value?.skinTextureOfSkin ?? '',
              skinTextureAbnormalValue:
                  stationFResponse.value?.skinTextureOfSkinAbnormal ?? '',
              rashValue: stationFResponse.value?.skinRash ?? '',
              rashPresentValue: stationFResponse.value?.skinRashPresent ?? '',
              skinRashPresentFaceValue:
                  stationFResponse.value?.skinRashPresentFace ?? '',
              skinRashPresentNeckValue:
                  stationFResponse.value?.skinRashPresentNeck ?? '',
              skinRashPresentChestValue:
                  stationFResponse.value?.skinRashPresentChest ?? '',
              skinRashPresentAbdomenValue:
                  stationFResponse.value?.skinRashPresentAbdomen ?? '',
              skinRashPresentGroinValue:
                  stationFResponse.value?.skinRashPresentGroin ?? '',
              skinRashPresentBackValue:
                  stationFResponse.value?.skinRashPresentBack ?? '',
              skinRashPresentArmsValue:
                  stationFResponse.value?.skinRashPresentArms ?? '',
              skinRashPresentHandsValue:
                  stationFResponse.value?.skinRashPresentHands ?? '',
              skinRashPresentLegsValue:
                  stationFResponse.value?.skinRashPresentLegs ?? '',
              skinRashPresentFeetValue:
                  stationFResponse.value?.skinRashPresentFeet ?? '',
              otherSkinLesionsValue:
                  stationFResponse.value?.otherSkinLesions ?? '',
              otherSkinLesionsYesValue:
                  stationFResponse.value?.otherSkinLesionsYes ?? '',
              otherSkinLesionsYesOtherValue:
                  stationFResponse.value?.otherSkinLesionsYesOther ?? '',
              otherSkinLesionsYesBirthMarksValue: stationFResponse.value?.otherSkinLesionsYesBirthMarks ?? '',
              otherSkinLesionsYesBirthMarksOtherValue: stationFResponse.value?.otherSkinLesionsYesBirthMarksOther ?? '',
              acneValue: stationFResponse.value?.skinAcne ?? '',
              acneYesValue: stationFResponse.value?.skinAcneYes ?? '',
              nailsColorValue: stationFResponse.value?.nailsColor ?? '',
              shapeNormalValue: stationFResponse.value?.nailsShape ?? '',
              shapeAbnormalValue: stationFResponse.value?.nailsShapeAbnormal ?? '',
              deformitySurfaceValue: stationFResponse.value?.nailsDeformity ?? '',
              deformitySurfaceYesValue: stationFResponse.value?.nailsDeformityYes ?? '',
              cuticlesValue: stationFResponse.value?.nailsCuticles ?? '',
              nailBedValue: stationFResponse.value?.nailBedInfection ?? '',
              fontanelleSkullValue: stationFResponse.value?.headSkullFontanelle ?? '',
              fontanelleSkullOpenValue: stationFResponse.value?.headSkullFontanelleOpen ?? '',
              fontanelleSkullOpenFontanellaValue: stationFResponse.value?.headSkullFontanelleOpenFontanella ?? '',
              fontanelleSkullOpenOccipitalValue: stationFResponse.value?.headSkullFontanelleOpenOccipital ?? '',
              appearanceSizeValue: stationFResponse.value?.headSkullAppearanceAndSize ?? '',
              appearanceSizeOtherValue: stationFResponse.value?.headSkullAppearanceAndSizeOther ?? '',
              hairAppearanceValue: stationFResponse.value?.headHairAppearance ?? '',
              hairAppearanceAbnormalValue: stationFResponse.value?.headHairAppearanceAbnormal ?? '',
              hairAppearanceAbnormalOtherValue: stationFResponse.value?.headHairAppearanceAbnormalOther ?? '',
              scalpValue: stationFResponse.value?.headScalp ?? '',
              scalpAbnormalValue: stationFResponse.value?.headScalpAbnormal ?? '',
              parasitesValue: stationFResponse.value?.headParasites ?? '',
              parasitesYesValue: stationFResponse.value?.headParasitesYes ?? '',
              parasitesYesOtherValue: stationFResponse.value?.headParasitesYesOther ?? '',
              hairLossValue: stationFResponse.value?.headHairLoss ?? '',
              hairLossYesValue: stationFResponse.value?.headHairLossYes ?? '',
              thyroidGlandsValue: stationFResponse.value?.thyroidLymphThyroidGland ?? '',
              thyroidLymphThyroidGlandEnlargedValue: stationFResponse.value?.thyroidLymphThyroidGlandEnlarged ?? '',
              cervicalValue: stationFResponse.value?.thyroidLymphCervicalLN ?? '',
              cervicalPalpableValue: stationFResponse.value?.thyroidLymphCervicalLNPalpable ?? '',
              notPalpableSupraclavicularValue: stationFResponse.value?.thyroidLymphSupraclavicularLN ?? '',
              palpableSupraclavicularValue: stationFResponse.value?.thyroidLymphSupraclavicularLNPalpable ?? '',
              notPalpableAxillaryValue: stationFResponse.value?.thyroidLymphAxillaryLN ?? '',
              palpableAxillaryValue: stationFResponse.value?.thyroidLymphAxillaryLNPalpable ?? '',
              notPalpableSupratrochlearValue: stationFResponse.value?.thyroidLymphSupratrochlearLN ?? '',
              palpableSupratrochlearValue: stationFResponse.value?.thyroidLymphSupratrochlearLNPalpable ?? '',
              notPalpableInguinalValue: stationFResponse.value?.thyroidLymphInguinalLN ?? '',
              palpableInguinalValue: stationFResponse.value?.thyroidLymphInguinalLNPalpable ?? '',
              conjuctivaValue: stationFResponse.value?.eyesConjuctiva ?? '',
              scleraValue: stationFResponse.value?.eyesSclera ?? '',
              dischargeValue: stationFResponse.value?.eyesDischarge ?? '',
              dischargeYesValue: stationFResponse.value?.eyesDischargeYes ?? '',
              dischargeYesRightValue: stationFResponse.value?.eyesDischargeYesRightEye ?? '',
              dischargeYesLeftValue: stationFResponse.value?.eyesDischargeYesLeftEye ?? '',
              eyelidValue: stationFResponse.value?.eyesEyelids ?? '',
              eyelidAbnormalValue: stationFResponse.value?.eyesEyelidsAbnormal ?? '',
              hearingValue: stationFResponse.value?.earsHearing ?? '',
              hearingAbnormalValue: stationFResponse.value?.earsHearingAbnormal ?? '',
              hearingAbnormalReducedValue: stationFResponse.value?.earsHearingAbnormalReduced ?? '',
              hearingAbnormalReducedWearsHearingValue: stationFResponse.value?.earsHearingAbnormalReducedWearsHearingAid ?? '',
              hearingAbnormalReducedWearsHearingYesValue: stationFResponse.value?.earsHearingAbnormalReducedWearsHearingAidYes ?? '',
              hearingAbnormalOtherValue: stationFResponse.value?.earsHearingAbnormalReducedOther ?? '',
              dischargeHearingValue: stationFResponse.value?.earsDischarge ?? '',
              dischargeHearingYesValue: stationFResponse.value?.earsDischargeYes ?? '',
              dischargeHearingYesRightValue: stationFResponse.value?.earsDischargeYesRightEar ?? '',
              dischargeHearingYesLeftValue: stationFResponse.value?.earsDischargeYesLeftEar ?? '',
              waxValue: stationFResponse.value?.earWax ?? '',
              waxPresentValue: stationFResponse.value?.earWaxPresent ?? '',
              eardrumValue: stationFResponse.value?.earEardrum ?? '',
              eardrumAbnormalValue: stationFResponse.value?.earEardrumAbnormal ?? '',
              eardrumAbnormalRightValue: stationFResponse.value?.earEardrumAbnormalRightEar ?? '',
              eardrumAbnormalLeftValue: stationFResponse.value?.earEardrumAbnormalLeftEar ?? '',
              noseDischargeValue: stationFResponse.value?.noseDischarge ?? '',
              noseDischargeYesValue: stationFResponse.value?.noseDischargeYes ?? '',
              noseDischargeYesRightValue: stationFResponse.value?.noseDischargeYesRightNostril ?? '',
              noseDischargeYesLeftValue: stationFResponse.value?.noseDischargeYesLeftNostril ?? '',
              drynessValue: stationFResponse.value?.noseDryness ?? '',
              drynessYesValue: stationFResponse.value?.noseDrynessYes ?? '',
              crustingValue: stationFResponse.value?.noseCrusting ?? '',
              crustingYesValue: stationFResponse.value?.noseCrustingYes ?? '',
              polypsValue: stationFResponse.value?.nosePolyps ?? '',
              polypsYesValue: stationFResponse.value?.nosePolypsYes ?? '',
              septumValue: stationFResponse.value?.noseSeptumBridge ?? '',
              sinusesValue: stationFResponse.value?.noseSinuses ?? '',
              mucosaValue: stationFResponse.value?.mouthThroatMucosa ?? '',
              mucosaAbnormalValue: stationFResponse.value?.mouthThroatMucosaAbnormal ?? '',
              mucosaAbnormalOtherValue: stationFResponse.value?.mouthThroatMucosaAbnormalOther ?? '',
              tongueValue: stationFResponse.value?.mouthThroatTongue ?? '',
              tongueAbnormalValue: stationFResponse.value?.mouthThroatTongueAbnormal ?? '',
              tongueAbnormalOtherValue: stationFResponse.value?.mouthThroatTongueAbnormalOther ?? '',
              tonsilsValue: stationFResponse.value?.mouthTonsils ?? '',
              tonsilsAbnormalValue: stationFResponse.value?.mouthTonsilsAbnormal ?? '',
              uvulaValue: stationFResponse.value?.mouthUvula ?? '',
              uvulaAbnormalValue: stationFResponse.value?.mouthUvulaAbnormal ?? '',
              palateValue: stationFResponse.value?.mouthPalate ?? '',
              palateCleftValue: stationFResponse.value?.mouthPalateCleftPalate ?? '',
              palateCleftLipValue: stationFResponse.value?.mouthPalateCleftLipPalate ?? '',
              palateOtherValue: stationFResponse.value?.mouthPalateOther ?? '',
              nailsValue: stationFResponse.value?.hygieneNails ?? '',
              hairValue: stationFResponse.value?.hygieneHair ?? '',
              skinValue: stationFResponse.value?.hygieneSkin ?? '',
              odourValue: stationFResponse.value?.hygieneOdour ?? '',
              otherObservationsValue: stationFResponse.value?.otherObservations ?? '',
              specialistReferralNeededValue: stationFResponse.value?.specialistReferralNeeded ?? '',
              selectedReferralTypeValue: stationFResponse.value?.specialistReferralNeededType ?? '',
              othervalue: stationFResponse.value?.other ?? '',
              selectedReFlagValue: stationFResponse.value?.specialistReferralNeededFlag ?? '');
          AppUtils.getBottomSheet(children: [
            GetBuilder<HomeController>(
              builder: (homeController) => FinalConfirmationWidget(
                title: "Station F details successfully saved",
                child: FinalFPreviewWidget(data: dataValue),
                onEdit: () => Get.back(),
                onSubmit: () {
                  Get.dialog(ConfirmationDialog(onConfirm: () async {
                    await AppStorage.clearStationFid();
                    await AppStorage.clearStudent();
                    clearFormData();
                    Get.offAllNamed(Routes.DASHBOARD);
                    AppUtils.showSnackBar('Created Successfully');
                  }));
                },
              ),
            )
          ]);
        }
        break;

      default:
        {
          AppUtils.showSnackBar('Somethings went wrong');
        }
        break;
    }
  }

  void onPrevious() {
    if (selectedTabIdx.value > 0) {
      selectedTabIdx.value -= 1;
    }
  }

  clearFormData() {
    //
    selectedTabIdx.value = 0;
    //
    selectedReferralType.clear();
    selectedReFlag.value = 'Non-Urgent';
    otherObservations.controller.clear();
    otherWrapper.controller.clear();
    isSpecialistReferralNeeded.value = false;
    //
    isSkinNormal.value = true;
    selectedSkinColorList.value = 'Albinism';
    isSkinTextureNormal.value = true;
    selectedSkinTexture.clear();
    isRashAbsent.value = true;
    selectedRashPresent.clear();
    selectedFace.clear();
    selectedNeck.clear();
    selectedChest.clear();
    selectedAbdomen.clear();
    selectedGroin.clear();
    selectedBack.clear();
    selectedArms.clear();
    selectedHands.clear();
    selectedLegs.clear();
    selectedFeet.clear();
    otherSkinLesions.value = false;
    selectedOtherSkinLesions1.clear();
    otherSkinLesionsWrapper.controller.text = '';
    selectedBirthmarks1.clear();
    otherSkinLesionsBIthMarksWrapper.controller.text = '';
    isAcne.value = false;
    selectAcne.value = 'Mild';
    //
    selectedNailsColor.value = 'Pink';
    shapeNormal.value = true;
    selectedNailsShape.clear();
    deformitySurface.value = false;
    selectedDeformitySurface.clear();
    selectedCuticles.value = 'Normal';
    selectedNailBed.value = 'Absent';
    //
    isCloseSkull.value = true;
    selectedSkullFontanella.clear();
    selectedFrontalFontanella.clear();
    selectedOccipitalFontanella.clear();
    selectedAppearanceSize.value = 'Normal';
    otherAppearanceSizeWrapper.controller.text = '';
    isHairAppearance.value = true;
    selectedHairAppearance.clear();
    otherHairAppearanceWrapper.controller.text = '';
    isScalp.value = true;
    selectedScalp.clear();
    isParasites.value = false;
    selectedParasites.clear();
    otherParasitesWrapper.controller.text = '';
    isHairLoss.value = false;
    selectedHairLoss.clear();
    //
    selectedThyroidGlands.value = 'Normal';
    selectedEnlarged.value = 'R Lobe';
    isPalpable.value = true;
    selectedPalpable.clear();
    isNotPalpableSupraclavicular.value = true;
    selectedLN.clear();
    isNotPalpableAxillary.value = true;
    selectedAxillaryLN.clear();
    isNotPalpableSupratrochlear.value = true;
    selectedSupratrochlearLN.clear();
    isNotPalpableInguinal.value = true;
    selectedInguinalLN.clear();
    //
    selectedConjuctiva.value = 'Normal';
    selectedSclera.value = 'Normal';
    isDischarge.value = true;
    selectedDischargeYes.clear();
    selectedDischargeRight.value = 'Watery';
    selectedDischargeLeft.value = 'Watery';
    isEyelidNormal.value = true;
    selectedEyeLid.value = 'Madarosis';
    //
    isHearingNormal.value = true;
    selectedHearingAbnormal.clear();
    selectedHearingReduced.value = 'Mild';
    isWearHearingAidYes.value = false;
    selectedHearingReducedWearsYesRight.clear();
    otherHearingWrapper.controller.text = '';
    isDischargeHearing.value = true;
    selectedEarsDischargeYes.clear();
    selectedDischargeHearingRight.value = 'Watery';
    selectedDischargeHearingLeft.value = 'Watery';
    selectedWax.value = 'Absent';
    selectedWaxPresent.clear();
    selectedEardrum.value = 'Normal';
    selectedEarDrum.clear();
    selectedEardrumRight.value = 'Perforated';
    selectedEardrumLeft.value = 'Perforated';
    //
    isNoseDischarge.value = true;
    selectedNoseDischargeYes.clear();
    selectedNoseDischargeRight.value = 'Watery';
    selectedNoseDischargeLeft.value = 'Watery';
    isDryness.value = true;
    selectedDryness.value = 'Right';
    isCrusting.value = true;
    selectedCrusting.value = 'Right';
    isPolyps.value = true;
    selectedPolyps.value = 'Right';
    selectedSeptum.value = 'Normal';
    selectedSinuses.value = 'Normal';
    //
    isMucosa.value = true;
    selectedMucosaNames.clear();
    otherMucosaWrapper.controller.text = '';
    isTongue.value = true;
    selectedTongueNames.clear();
    otherTongueWrapper.controller.text = '';
    isTonsils.value = true;
    selectedTonsils.clear();
    selectedUvula.value = 'Normal';
    otherUvulaWrapper.controller.text = '';
    selectedPalate.value = 'Normal';
    otherCleftWrapper.controller.text = '';
    otherCleftLipWrapper.controller.text = '';
    palateOthersWrapper.controller.text = '';
    //
    selectedNails.value = 'Good';
    selectedHair.value = 'Good';
    selectedSkin.value = 'Good';
    selectedOdour.value = 'Nil';
  }

  submitStationFData({required Function(bool? success) callBack}) async {
    StationFRequestModel requestData = StationFRequestModel(
      hcid: AppStorage.getUser().stations?.first.hcid,
      hcpid: AppStorage.getUser().stations?.first.hcpId,
      infoseekId: AppStorage.getStudent().infoseekId,
      skinColourTone: isSkinNormal.value ? 'Normal' : 'Abnormal',
      skinColourToneAbnormal: selectedSkinColorList.value,
      skinTextureOfSkin: isSkinTextureNormal.value ? 'Normal' : 'Abnormal',
      skinTextureOfSkinAbnormal: selectedSkinTexture.join(','),
      skinRash: isRashAbsent.value ? 'Absent' : 'Present',
      skinRashPresent: selectedRashPresent.join(','),
      skinRashPresentFace: selectedFace.join(','),
      skinRashPresentNeck: selectedNeck.join(','),
      skinRashPresentChest: selectedChest.join(','),
      skinRashPresentAbdomen: selectedAbdomen.join(','),
      skinRashPresentGroin: selectedGroin.join(','),
      skinRashPresentBack: selectedBack.join(','),
      skinRashPresentArms: selectedArms.join(','),
      skinRashPresentHands: selectedHands.join(','),
      skinRashPresentLegs: selectedLegs.join(','),
      skinRashPresentFeet: selectedFeet.join(','),
      otherSkinLesions: otherSkinLesions.value ? 'Yes' : 'No',
      otherSkinLesionsYes: selectedOtherSkinLesions1.join(','),
      otherSkinLesionsYesOther: otherSkinLesionsWrapper.controller.text,
      otherSkinLesionsYesBirthMarks: selectedBirthmarks1.join(','),
      otherSkinLesionsYesBirthMarksOther:
          otherSkinLesionsBIthMarksWrapper.controller.text,
      skinAcne: isAcne.value ? 'Yes' : 'No',
      skinAcneYes: selectAcne.value,
      entryTime:
          '${TimeOfDay.fromDateTime(DateTime.now()).hour}:${TimeOfDay.fromDateTime(DateTime.now()).minute}',
    );

    try {
      LoadingUtils.showLoader();
      RepoResponse<GenericResponse> response =
          await repository.submitStationFData(requestData: requestData);
      print(" 123  $response");
      if (response.data?.status == 200 || response.data?.status == 201) {
        LoadingUtils.hideLoader();
        final id = response.data?.result["id"];
        AppStorage.setStationFId(id);
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

  updateFNails({required Function(bool? success) callBack}) async {
    StationFNailsRequest requestData = StationFNailsRequest(
        nailsColor: selectedNailsColor.value,
        nailsShape: shapeNormal.value ? "Normal" : "Abnormal",
        nailsShapeAbnormal: selectedNailsShape.join(','),
        nailsDeformity: deformitySurface.value ? "Yes" : "No",
        nailsDeformityYes: selectedDeformitySurface.join(','),
        nailsCuticles: selectedCuticles.value,
        nailBedInfection: selectedNailBed.value);

    try {
      if (AppStorage.isStationFIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response = await repository.updateFNails(
            requestData: requestData, id: AppStorage.getStationFId());
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

  updateFHead({required Function(bool? success) callBack}) async {
    StationFHeadRequest requestData = StationFHeadRequest(
        headSkullFontanelle: isCloseSkull.value ? "Closed" : "Open",
        headSkullFontanelleOpen: selectedSkullFontanella.join(','),
        headSkullFontanelleOpenFontanella: selectedFrontalFontanella.join(','),
        headSkullFontanelleOpenOccipital: selectedOccipitalFontanella.join(','),
        headSkullAppearanceAndSize: selectedAppearanceSize.value,
        headSkullAppearanceAndSizeOther:
            otherAppearanceSizeWrapper.controller.text,
        headHairAppearance: isHairAppearance.value ? "Normal" : "Abnormal",
        headHairAppearanceAbnormal: selectedHairAppearance.join(','),
        headHairAppearanceAbnormalOther:
            otherHairAppearanceWrapper.controller.text,
        headScalp: isScalp.value ? "Normal" : "Abnormal",
        headScalpAbnormal: selectedScalp.join(','),
        headParasites: isParasites.value ? "Yes" : "No",
        headParasitesYes: selectedParasites.join(','),
        headParasitesYesOther: otherParasitesWrapper.controller.text,
        headHairLoss: isHairLoss.value ? "Yes" : "No",
        headHairLossYes: selectedHairLoss.join(','));

    try {
      if (AppStorage.isStationFIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response = await repository.updateFHead(
            requestData: requestData, id: AppStorage.getStationFId());
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

  updateFThyroidGlands({required Function(bool? success) callBack}) async {
    StationFThyroid requestData = StationFThyroid(
        thyroidLymphThyroidGland: selectedThyroidGlands.value,
        thyroidLymphThyroidGlandEnlarged: selectedEnlarged.value,
        thyroidLymphCervicalLN: isPalpable.value ? "Not Palpable" : "Palpable",
        thyroidLymphCervicalLNPalpable: selectedPalpable.join(','),
        thyroidLymphSupraclavicularLN:
            isNotPalpableSupraclavicular.value ? "Not Palpable" : "Palpable",
        thyroidLymphSupraclavicularLNPalpable: selectedLN.join(','),
        thyroidLymphAxillaryLN:
            isNotPalpableAxillary.value ? "Not Palpable" : "Palpable",
        thyroidLymphAxillaryLNPalpable: selectedAxillaryLN.join(','),
        thyroidLymphSupratrochlearLN:
            isNotPalpableSupratrochlear.value ? "Not Palpable" : "Palpable",
        thyroidLymphSupratrochlearLNPalpable:
            selectedSupratrochlearLN.join(','),
        thyroidLymphInguinalLN:
            isNotPalpableInguinal.value ? "Not Palpable" : "Palpable",
        thyroidLymphInguinalLNPalpable: selectedInguinalLN.join(','));

    try {
      if (AppStorage.isStationFIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response =
            await repository.updateFThyroidGlands(
                requestData: requestData, id: AppStorage.getStationFId());
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

  updateFEyes({required Function(bool? success) callBack}) async {
    StationFEyesRequest requestData = StationFEyesRequest(
        eyesConjuctiva: selectedConjuctiva.value,
        eyesSclera: selectedSclera.value,
        eyesDischarge: isDischarge.value ? "No" : "Yes",
        eyesDischargeYes: selectedDischargeYes.join(','),
        eyesDischargeYesRightEye: selectedDischargeRight.value,
        eyesDischargeYesLeftEye: selectedDischargeLeft.value,
        eyesEyelids: isEyelidNormal.value ? "Normal" : "Abnormal",
        eyesEyelidsAbnormal: selectedEyeLid.value);

    try {
      if (AppStorage.isStationFIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response = await repository.updateFEyes(
            requestData: requestData, id: AppStorage.getStationFId());
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

  updateFEars({required Function(bool? success) callBack}) async {
    StationFEarsRequest requestData = StationFEarsRequest(
        earsHearing: isHearingNormal.value ? "Normal" : "Abnormal",
        earsHearingAbnormal: selectedHearingAbnormal.join(','),
        earsHearingAbnormalReduced: selectedHearingReduced.value,
        earsHearingAbnormalReducedWearsHearingAid:
            isWearHearingAidYes.value ? "Yes" : "No",
        earsHearingAbnormalReducedWearsHearingAidYes:
            selectedHearingReducedWearsYesRight.join(','),
        earsHearingAbnormalReducedOther: otherHearingWrapper.controller.text,
        earsDischarge: isDischargeHearing.value ? "No" : "Yes",
        earsDischargeYes: selectedEarsDischargeYes.join(','),
        earsDischargeYesRightEar: selectedDischargeHearingRight.value,
        earsDischargeYesLeftEar: selectedDischargeHearingLeft.value,
        earWax: selectedWax.value,
        earWaxPresent: selectedWaxPresent.join(','),
        earEardrum: selectedEardrum.value,
        earEardrumAbnormal: selectedEarDrum.join(','),
        earEardrumAbnormalRightEar: selectedEardrumRight.value,
        earEardrumAbnormalLeftEar: selectedEardrumLeft.value);

    try {
      if (AppStorage.isStationFIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response = await repository.updateFEars(
            requestData: requestData, id: AppStorage.getStationFId());
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

  updateFNose({required Function(bool? success) callBack}) async {
    StationFNoseRequest requestData = StationFNoseRequest(
        noseDischarge: isNoseDischarge.value ? "No" : "Yes",
        noseDischargeYes: selectedNoseDischargeYes.join(','),
        noseDischargeYesRightNostril: selectedNoseDischargeRight.value,
        noseDischargeYesLeftNostril: selectedNoseDischargeLeft.value,
        noseDryness: isDryness.value ? "No" : "Yes",
        noseDrynessYes: selectedDryness.value,
        noseCrusting: isCrusting.value ? "No" : "Yes",
        noseCrustingYes: selectedCrusting.value,
        nosePolyps: isPolyps.value ? "No" : "Yes",
        nosePolypsYes: selectedPolyps.value,
        noseSeptumBridge: selectedSeptum.value,
        noseSinuses: selectedSinuses.value);

    try {
      if (AppStorage.isStationFIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response = await repository.updateFNose(
            requestData: requestData, id: AppStorage.getStationFId());
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

  updateFMouth({required Function(bool? success) callBack}) async {
    StationFMouthRequest requestData = StationFMouthRequest(
        mouthThroatMucosa: isMucosa.value ? "Normal" : "Abnormal",
        mouthThroatMucosaAbnormal: selectedMucosaNames.join(','),
        mouthThroatMucosaAbnormalOther: otherMucosaWrapper.controller.text,
        mouthThroatTongue: isTongue.value ? "Normal" : "Abnormal",
        mouthThroatTongueAbnormal: selectedTongueNames.join(','),
        mouthThroatTongueAbnormalOther: otherTongueWrapper.controller.text,
        mouthTonsils: isTonsils.value ? "Normal" : "Abnormal",
        mouthTonsilsAbnormal: selectedTonsils.join(','),
        mouthUvula: selectedUvula.value,
        mouthUvulaAbnormal: otherUvulaWrapper.controller.text,
        mouthPalate: selectedPalate.value,
        mouthPalateCleftPalate: otherCleftWrapper.controller.text,
        mouthPalateCleftLipPalate: otherCleftLipWrapper.controller.text,
        mouthPalateOther: palateOthersWrapper.controller.text);

    try {
      if (AppStorage.isStationFIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response = await repository.updateFMouth(
            requestData: requestData, id: AppStorage.getStationFId());
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

  updateFHygiene({required Function(bool? success) callBack}) async {
    StationFHygiene requestData = StationFHygiene(
        hygieneNails: selectedNails.value,
        hygieneHair: selectedHair.value,
        hygieneSkin: selectedSkin.value,
        hygieneOdour: selectedOdour.value);

    try {
      if (AppStorage.isStationFIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response =
            await repository.updateFHygiene(
                requestData: requestData, id: AppStorage.getStationFId());
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

  updateFOther({required Function(bool? success) callBack}) async {
    StationFOtherRequest requestData = StationFOtherRequest(
      otherObservations: otherObservations.controller.text,
      specialistReferralNeeded: isSpecialistReferralNeeded.value ? 'Yes' : 'No',
      specialistReferralNeededType: selectedReferralType.join(','),
      specialistReferralNeededFlag: selectedReFlag.value,
      other: otherWrapper.controller.text,
      completed: "Yes",
      endTime:
          '${TimeOfDay.fromDateTime(DateTime.now()).hour}:${TimeOfDay.fromDateTime(DateTime.now()).minute}',
    );

    try {
      if (AppStorage.isStationFIdExists()) {
        RepoResponse<GenericResponse> response = await repository.updateFOther(
            requestData: requestData, id: AppStorage.getStationFId());
        print(" 456  $response");
        if (response.data?.status == 200 || response.data?.status == 201) {
          await getStationFDetails();
          callBack.call(true);
        } else {
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

  Future<bool> getStationFDetails() async {
    try {
      RepoResponse<GenericResponse> response =
          await repository.getStationFDetails(id: AppStorage.getStationFId());
      if (response.data?.status == 200 || response.data?.status == 201) {
        var data = response.data?.result as List;
        stationFResponse.value = StationFGetModel.fromJson(data.first);
        return true;
      } else {
        AppUtils.showErrorMessage(response);
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
