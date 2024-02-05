import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/model/dto/response.dart';
import 'package:nivish/app/data/model/response/generic_response.dart';
import 'package:nivish/app/data/model/resuest/stationE/LowerLimbRequest.dart';
import 'package:nivish/app/data/model/resuest/stationE/StationECreateRequest.dart';
import 'package:nivish/app/data/repository/stationARepository.dart';
import 'package:nivish/app/modules/home/controllers/home_controller.dart';
import 'package:nivish/app/modules/station_E/widget/E_preview_model.dart';
import 'package:nivish/app/routes/app_routes.dart';
import 'package:nivish/base/base_controller.dart';
import 'package:nivish/utils/app_utils.dart';
import 'package:nivish/utils/helper/text_field_wrapper.dart';
import 'package:nivish/utils/loading/loading_utils.dart';
import 'package:nivish/utils/storage/storage_utils.dart';
import 'package:nivish/widgets/dialog/confirmation_dialog.dart';
import 'package:nivish/widgets/finnal_confirmation_widget.dart';
import '../../../data/model/resuest/stationE/OtherObservationsStationERequest.dart';
import '../../../data/model/resuest/stationE/StationEGetModel.dart';
import '../../../data/model/resuest/stationE/StationEWearUpdateModel.dart';
import '../../../data/model/resuest/stationE/UpperLimbRightRequest.dart';
import '../../../../widgets/Age_Gender_validations.dart';
import '../widget/final_preview_widget.dart';

class StationEController extends BaseController<AllStationRepository> {
  Rx<StationEGetModel?> stationEResponse = Rx<StationEGetModel?>(null);

  TextFieldWrapper otherMobilityTextField = TextFieldWrapper();
  TextFieldWrapper otherGaitTextField = TextFieldWrapper();
  TextFieldWrapper otherProsthesisTextField = TextFieldWrapper();
  TextFieldWrapper otherSpineTextField = TextFieldWrapper();
  TextFieldWrapper otherShoulderTextField = TextFieldWrapper();
  TextFieldWrapper otherObservations = TextFieldWrapper();
  TextFieldWrapper otherWrapper = TextFieldWrapper();

  RxString selectedMobilityList = RxString('No Developmental Delay');
  RxString selectedAmbulantList = RxString('Uses a Wheelchair');
  RxString selectedGaitList = RxString('Shuffling');
  // RxString selectedGaitLimp = RxString('');
  RxList selectedWearBrace = RxList();
  RxList selectedProsthesis = RxList();
  RxString selectedSpineAppearance = RxString('Kyphosis');
  RxList selectedShoulderAppearance = RxList();
  RxString selectedSpineMobility = RxString('Mild');
  RxString selectedNeckMobility = RxString('Mild');

  RxBool gaitLimpNormal = RxBool(false);
  RxBool gaitLowerLimb = RxBool(false);
  RxBool isGaitNormal = RxBool(true);

  void onCheckedGaitLimpNormal() {
    gaitLimpNormal.toggle();
  }

  void onCheckedGaitLowerLimb() {
    gaitLowerLimb.toggle();
  }

  /// upper limb Right
  RxList selectedUpperLimbAppearanceRight = RxList();
  RxString selectedUpperLimbMotorFunctionRight = RxString('Normal');
  RxString selectedRangeOfMovementUpperLimbRight = RxString('');
  RxList selectedHyperFlexibleUpperLimbRight = RxList();
  RxString selectedRestrictedUpperLimbRight = RxString('Mild');
  RxString selectedBicepsUpperLimbRight = RxString('Absent');
  RxString selectedRadialUpperLimbRight = RxString('Absent');
  RxString selectedTouchAbnormalUpperLimbRight = RxString('Hot object');

  RxBool upperLimbAppearanceRightNormal = RxBool(true);
  RxBool rangeOfMovementNormalUpperLimbRight = RxBool(true);
  RxBool hyperFlexibleUpperLimbRight = RxBool(false);
  RxBool restrictedUpperLimbRight = RxBool(false);
  RxBool bicepsNormalUpperLimbRight = RxBool(true);
  RxBool radialNormalUpperLimbRight = RxBool(true);
  RxBool sensoryFunctionAllNormalUpperLimbRight = RxBool(true);
  RxBool pressureAbnormalUpperLimbRight = RxBool(false);
  RxBool touchAbnormalUpperLimbRight = RxBool(false);
  RxBool painPresentUpperLimbRight = RxBool(false);
  RxBool tendernessPresentUpperLimbRight = RxBool(false);
  final Map<String, String> upperLimbAppearanceRightListName = {
    'Atrophy': 'Atrophy',
    'Contracture': 'Contracture',
    'Deformity': 'Deformity',
    'Hypertrophy': 'Hypertrophy',
    'Oedema': 'Oedema'
  };
  RxList<String> upperLimbMotorFunctionRightList = RxList([
    'Normal',
    "Fasciculations",
    "Rigidity [hypertonia]",
    "Flaccidity [hypotonia]",
    "Spasticity [hypertonia]",
  ]);
  RxList<String> rangeOfMovementRightList = RxList([
    'Hyper Flexible',
    "Restricted",
  ]);
  final Map<String, String> hyperFlexibleRightList = {
    'Fingers': 'Fingers',
    'Hand': 'Hand',
    'Elbow': 'Elbow',
    'Shoulder': 'Shoulder',
  };
  RxList<String> restrictedRightList = RxList([
    'Mild',
    "Moderate",
    "Severe",
  ]);
  RxList<String> bicepsRightList = RxList([
    "Absent",
    "Sluggish",
    "Exaggerated",
    "Clonus",
  ]);
  RxList<String> radialRightList = RxList([
    "Absent",
    "Sluggish",
    "Exaggerated",
    "Clonus",
  ]);
  RxList<String> touchAbnormalRightList = RxList([
    "Hot object",
    "Cold object",
    "Both hot & cold objects",
  ]);
  RxList<String> sensoryFunctionListRight = RxList([
    'Pressure Abnormal',
    'Touch Abnormal',
    'Pain Present',
    'Tenderness Present',
  ]);
  RxList<String> selectedSensoryFunctionRight = RxList();

  void onCheckedUpperLimbAppearanceRightNormal() {
    upperLimbAppearanceRightNormal.toggle();
  }

  void onCheckedRangeOfMovementUpperLimbRight() {
    rangeOfMovementNormalUpperLimbRight.toggle();
  }

  void onCheckedHyperFlexibleUpperLimbRight() {
    hyperFlexibleUpperLimbRight.toggle();
  }

  void onCheckedRestrictedUpperLimbRight() {
    restrictedUpperLimbRight.toggle();
  }

  void onCheckedBicepsUpperLimbRight() {
    bicepsNormalUpperLimbRight.toggle();
  }

  void onCheckedRadialUpperLimbRight() {
    radialNormalUpperLimbRight.toggle();
  }

  void onCheckedSensoryFunctionAllNormalUpperLimbRight() {
    sensoryFunctionAllNormalUpperLimbRight.toggle();
  }

  void onCheckedPressureAbnormalUpperLimbRight() {
    pressureAbnormalUpperLimbRight.toggle();
  }

  void onCheckedTouchAbnormalUpperLimbRight() {
    touchAbnormalUpperLimbRight.toggle();
  }

  void onCheckedPainPresentUpperLimbRight() {
    painPresentUpperLimbRight.toggle();
  }

  void onCheckedTendernessPresentUpperLimbRight() {
    tendernessPresentUpperLimbRight.toggle();
  }

  void onSelectUpperLimbAppearanceRight({required int idx}) {
    String name = upperLimbAppearanceRightListName.keys.elementAt(idx);
    if (selectedUpperLimbAppearanceRight.contains(name)) {
      selectedUpperLimbAppearanceRight.remove(name);
    } else {
      selectedUpperLimbAppearanceRight.add(name);
    }
  }

  void onSelectUpperLimbMotorFunctionRight({required String name}) {
    if (selectedUpperLimbMotorFunctionRight.value == name) {
      selectedUpperLimbMotorFunctionRight.value = '';
    } else {
      selectedUpperLimbMotorFunctionRight.value = name;
    }
    upperLimbMotorFunctionRightList.refresh();
  }

  void onSelectRangeOfMovementUpperLimbRight({required String name}) {
    if (selectedRangeOfMovementUpperLimbRight.value == name) {
      selectedRangeOfMovementUpperLimbRight.value = '';
    } else {
      selectedRangeOfMovementUpperLimbRight.value = name;
    }
    rangeOfMovementRightList.refresh();
  }

  void onSelectHyperFlexibleUpperLimbRight({required int idx}) {
    String name = hyperFlexibleRightList.keys.elementAt(idx);
    if (selectedHyperFlexibleUpperLimbRight.contains(name)) {
      selectedHyperFlexibleUpperLimbRight.remove(name);
    } else {
      selectedHyperFlexibleUpperLimbRight.add(name);
    }
  }

  void onSelectRestrictedUpperLimbRight({required String name}) {
    if (selectedRestrictedUpperLimbRight.value == name) {
      selectedRestrictedUpperLimbRight.value = '';
    } else {
      selectedRestrictedUpperLimbRight.value = name;
    }
    restrictedRightList.refresh();
  }

  void onSelectBicepsUpperLimbRight({required String name}) {
    if (selectedBicepsUpperLimbRight.value == name) {
      selectedBicepsUpperLimbRight.value = '';
    } else {
      selectedBicepsUpperLimbRight.value = name;
    }
    bicepsRightList.refresh();
  }

  void onSelectRadialUpperLimbRight({required String name}) {
    if (selectedRadialUpperLimbRight.value == name) {
      selectedRadialUpperLimbRight.value = '';
    } else {
      selectedRadialUpperLimbRight.value = name;
    }
    radialRightList.refresh();
  }

  void onSelectTouchAbnormalUpperLimbRight({required String name}) {
    if (selectedTouchAbnormalUpperLimbRight.value == name) {
      selectedTouchAbnormalUpperLimbRight.value = '';
    } else {
      selectedTouchAbnormalUpperLimbRight.value = name;
    }
    touchAbnormalRightList.refresh();
  }

  RxDouble lowerAgeUpperLimbRight = 0.0.obs;
  RxDouble upperAgeUpperLimbRight = 0.0.obs;

  final StreamController<RangeValues> _sliderStreamController =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get sliderStreamUpperLimbRight =>
      _sliderStreamController.stream;

  void updateSliderStreamUpperLimbRight(RangeValues values) {
    _sliderStreamController.add(values);
  }

  RxDouble lowerAgeFirstUpperLimbRight = 0.0.obs;
  RxDouble upperAgeFirstUpperLimbRight = 0.0.obs;

  final StreamController<RangeValues> firstSliderStreamController =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get firstSliderStreamUpperLimbRight =>
      firstSliderStreamController.stream;

  void updateFirstSliderStreamUpperLimbRight(RangeValues values) {
    firstSliderStreamController.add(values);
  }

  RxDouble lowerAgeSecondUpperLimbRight = 0.0.obs;
  RxDouble upperAgeSecondUpperLimbRight = 0.0.obs;

  final StreamController<RangeValues> secondSliderStreamController =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get secondSliderStreamUpperLimbRight =>
      secondSliderStreamController.stream;

  void updateSecondSliderStreamUpperLimbRight(RangeValues values) {
    secondSliderStreamController.add(values);
  }

  void updateAgeRangeUpperLimbRight(RangeValues values) {
    lowerAgeUpperLimbRight.value = values.start;
    upperAgeUpperLimbRight.value = values.end;
  }

  void updateFirstRange(RangeValues values) {
    lowerAgeFirstUpperLimbRight.value = values.start;
    upperAgeFirstUpperLimbRight.value = values.end;
  }

  void updateSecondRange(RangeValues values) {
    lowerAgeSecondUpperLimbRight.value = values.start;
    upperAgeSecondUpperLimbRight.value = values.end;
  }

  /// upper limb Left
  RxList selectedUpperLimbAppearanceLeft = RxList();
  RxString selectedUpperLimbMotorFunctionLeft = RxString('Normal');
  RxString selectedRangeOfMovementUpperLimbLeft = RxString('');
  RxList selectedHyperFlexibleUpperLimbLeft = RxList();
  RxString selectedRestrictedUpperLimbLeft = RxString('Mild');
  RxString selectedBicepsUpperLimbLeft = RxString('Absent');
  RxString selectedRadialUpperLimbLeft = RxString('Absent');
  RxString selectedTouchAbnormalUpperLimbLeft = RxString('Hot object');

  RxBool upperLimbAppearanceLeftNormal = RxBool(true);
  RxBool rangeOfMovementNormalUpperLimbLeft = RxBool(true);
  RxBool hyperFlexibleUpperLimbLeft = RxBool(false);
  RxBool restrictedUpperLimbLeft = RxBool(false);
  RxBool bicepsNormalUpperLimbLeft = RxBool(true);
  RxBool radialNormalUpperLimbLeft = RxBool(true);
  RxBool sensoryFunctionAllNormalUpperLimbLeft = RxBool(true);
  RxBool pressureAbnormalUpperLimbLeft = RxBool(false);
  RxBool touchAbnormalUpperLimbLeft = RxBool(false);
  RxBool painPresentUpperLimbLeft = RxBool(false);
  RxBool tendernessPresentUpperLimbLeft = RxBool(false);
  final Map<String, String> upperLimbAppearanceLeftListName = {
    'Atrophy': 'Atrophy',
    'Contracture': 'Contracture',
    'Deformity': 'Deformity',
    'Hypertrophy': 'Hypertrophy',
    'Oedema': 'Oedema'
  };
  RxList<String> upperLimbMotorFunctionLeftList = RxList([
    'Normal',
    "Fasciculations",
    "Rigidity [hypertonia]",
    "Flaccidity [hypotonia]",
    "Spasticity [hypertonia]",
  ]);
  RxList<String> rangeOfMovementLeftList = RxList([
    'Hyper Flexible',
    "Restricted",
  ]);
  final Map<String, String> hyperFlexibleLeftList = {
    'Fingers': 'Fingers',
    'Hand': 'Hand',
    'Elbow': 'Elbow',
    'Shoulder': 'Shoulder',
  };
  RxList<String> restrictedLeftList = RxList([
    'Mild',
    "Moderate",
    "Severe",
  ]);
  RxList<String> bicepsLeftList = RxList([
    "Absent",
    "Sluggish",
    "Exaggerated",
    "Clonus",
  ]);
  RxList<String> radialLeftList = RxList([
    "Absent",
    "Sluggish",
    "Exaggerated",
    "Clonus",
  ]);
  RxList<String> touchAbnormalLeftList = RxList([
    "Hot object",
    "Cold object",
    "Both hot & cold objects",
  ]);
  RxList<String> sensoryFunctionListLeft = RxList([
    'Pressure Abnormal',
    'Touch Abnormal',
    'Pain Present',
    'Tenderness Present',
  ]);
  RxList<String> selectedSensoryFunctionLeft = RxList();
  void onCheckedUpperLimbAppearanceLeftNormal() {
    upperLimbAppearanceLeftNormal.toggle();
  }

  void onCheckedRangeOfMovementUpperLimbLeft() {
    rangeOfMovementNormalUpperLimbLeft.toggle();
  }

  void onCheckedHyperFlexibleUpperLimbLeft() {
    hyperFlexibleUpperLimbLeft.toggle();
  }

  void onCheckedRestrictedUpperLimbLeft() {
    restrictedUpperLimbLeft.toggle();
  }

  void onCheckedBicepsUpperLimbLeft() {
    bicepsNormalUpperLimbLeft.toggle();
  }

  void onCheckedRadialUpperLimbLeft() {
    radialNormalUpperLimbLeft.toggle();
  }

  void onCheckedSensoryFunctionAllNormalUpperLimbLeft() {
    sensoryFunctionAllNormalUpperLimbLeft.toggle();
  }

  void onCheckedPressureAbnormalUpperLimbLeft() {
    pressureAbnormalUpperLimbLeft.toggle();
  }

  void onCheckedTouchAbnormalUpperLimbLeft() {
    touchAbnormalUpperLimbLeft.toggle();
  }

  void onCheckedPainPresentUpperLimbLeft() {
    painPresentUpperLimbLeft.toggle();
  }

  void onCheckedTendernessPresentUpperLimbLeft() {
    tendernessPresentUpperLimbLeft.toggle();
  }

  void onSelectUpperLimbAppearanceLeft({required int idx}) {
    String name = upperLimbAppearanceLeftListName.keys.elementAt(idx);
    if (selectedUpperLimbAppearanceLeft.contains(name)) {
      selectedUpperLimbAppearanceLeft.remove(name);
    } else {
      selectedUpperLimbAppearanceLeft.add(name);
    }
  }

  void onSelectUpperLimbMotorFunctionLeft({required String name}) {
    if (selectedUpperLimbMotorFunctionLeft.value == name) {
      selectedUpperLimbMotorFunctionLeft.value = '';
    } else {
      selectedUpperLimbMotorFunctionLeft.value = name;
    }
    upperLimbMotorFunctionLeftList.refresh();
  }

  void onSelectRangeOfMovementUpperLimbLeft({required String name}) {
    if (selectedRangeOfMovementUpperLimbLeft.value == name) {
      selectedRangeOfMovementUpperLimbLeft.value = '';
    } else {
      selectedRangeOfMovementUpperLimbLeft.value = name;
    }
    rangeOfMovementLeftList.refresh();
  }

  void onSelectHyperFlexibleUpperLimbLeft({required int idx}) {
    String name = hyperFlexibleLeftList.keys.elementAt(idx);
    if (selectedHyperFlexibleUpperLimbLeft.contains(name)) {
      selectedHyperFlexibleUpperLimbLeft.remove(name);
    } else {
      selectedHyperFlexibleUpperLimbLeft.add(name);
    }
  }

  void onSelectRestrictedUpperLimbLeft({required String name}) {
    if (selectedRestrictedUpperLimbLeft.value == name) {
      selectedRestrictedUpperLimbLeft.value = '';
    } else {
      selectedRestrictedUpperLimbLeft.value = name;
    }
    restrictedLeftList.refresh();
  }

  void onSelectBicepsUpperLimbLeft({required String name}) {
    if (selectedBicepsUpperLimbLeft.value == name) {
      selectedBicepsUpperLimbLeft.value = '';
    } else {
      selectedBicepsUpperLimbLeft.value = name;
    }
    bicepsLeftList.refresh();
  }

  void onSelectRadialUpperLimbLeft({required String name}) {
    if (selectedRadialUpperLimbLeft.value == name) {
      selectedRadialUpperLimbLeft.value = '';
    } else {
      selectedRadialUpperLimbLeft.value = name;
    }
    radialLeftList.refresh();
  }

  void onSelectTouchAbnormalUpperLimbLeft({required String name}) {
    if (selectedTouchAbnormalUpperLimbLeft.value == name) {
      selectedTouchAbnormalUpperLimbLeft.value = '';
    } else {
      selectedTouchAbnormalUpperLimbLeft.value = name;
    }
    touchAbnormalLeftList.refresh();
  }

  RxDouble lowerAgeUpperLimbLeft = 0.0.obs;
  RxDouble upperAgeUpperLimbLeft = 0.0.obs;

  final StreamController<RangeValues> _sliderStreamControllerLeft =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get sliderStreamUpperLimbLeft =>
      _sliderStreamControllerLeft.stream;

  void updateSliderStreamUpperLimbLeft(RangeValues values) {
    _sliderStreamControllerLeft.add(values);
  }

  RxDouble lowerAgeFirstUpperLimbLeft = 0.0.obs;
  RxDouble upperAgeFirstUpperLimbLeft = 0.0.obs;

  final StreamController<RangeValues> firstSliderStreamControllerLeft =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get firstSliderStreamUpperLimbLeft =>
      firstSliderStreamControllerLeft.stream;

  void updateFirstSliderStreamUpperLimbLeft(RangeValues values) {
    firstSliderStreamControllerLeft.add(values);
  }

  RxDouble lowerAgeSecondUpperLimbLeft = 0.0.obs;
  RxDouble upperAgeSecondUpperLimbLeft = 0.0.obs;

  final StreamController<RangeValues> secondSliderStreamControllerLeft =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get secondSliderStreamUpperLimbLeft =>
      secondSliderStreamControllerLeft.stream;

  void updateSecondSliderStreamUpperLimbLeft(RangeValues values) {
    secondSliderStreamControllerLeft.add(values);
  }

  void updateAgeRangeUpperLimbLeft(RangeValues values) {
    lowerAgeUpperLimbLeft.value = values.start;
    upperAgeUpperLimbLeft.value = values.end;
  }

  void updateFirstRangeLeft(RangeValues values) {
    lowerAgeFirstUpperLimbLeft.value = values.start;
    upperAgeFirstUpperLimbLeft.value = values.end;
  }

  void updateSecondRangeLeft(RangeValues values) {
    lowerAgeSecondUpperLimbLeft.value = values.start;
    upperAgeSecondUpperLimbLeft.value = values.end;
  }

  /// lower limb Right
  RxList selectedLowerLimbAppearanceRight = RxList();
  RxString selectedLowerLimbMotorFunctionRight = RxString('Normal');
  RxString selectedRangeOfMovementLowerLimbRight = RxString('');
  RxString selectedRestrictedLowerLimbRight = RxString('Mild');
  RxString selectedRadialLowerLimbRight = RxString('Absent');
  RxString selectedTouchAbnormalLowerLimbRight = RxString('Hot object');

  RxBool lowerLimbAppearanceRightNormal = RxBool(true);
  RxBool rangeOfMovementNormalLowerLimbRight = RxBool(true);
  RxBool hyperFlexibleLowerLimbRight = RxBool(false);
  RxBool restrictedLowerLimbRight = RxBool(false);
  RxBool bicepsNormalLowerLimbRight = RxBool(true);
  RxBool radialNormalLowerLimbRight = RxBool(true);
  RxBool sensoryFunctionAllNormalLowerLimbRight = RxBool(true);
  RxBool pressureAbnormalLowerLimbRight = RxBool(false);
  RxBool touchAbnormalLowerLimbRight = RxBool(false);
  RxBool painPresentLowerLimbRight = RxBool(false);
  RxBool tendernessPresentLowerLimbRight = RxBool(false);
  final Map<String, String> lowerLimbAppearanceRightList = {
    'Atrophy': 'Atrophy',
    'Contracture': 'Contracture',
    'Deformity': 'Deformity',
    'Hypertrophy': 'Hypertrophy',
    'Oedema': 'Oedema'
  };
  RxList<String> lowerLimbMotorFunctionRightList = RxList([
    'Normal',
    "Fasciculations",
    "Rigidity [hypertonia]",
    "Flaccidity [hypotonia]",
    "Spasticity [hypertonia]",
  ]);
  RxList<String> radialLowerRightList = RxList([
    "Absent",
    "Sluggish",
    "Exaggerated",
    "Clonus",
  ]);
  RxList<String> touchAbnormalLowerRightList = RxList([
    "Hot object",
    "Cold object",
    "Both hot & cold objects",
  ]);
  RxList<String> sensoryFunctionListLowerRight = RxList([
    'Pressure Abnormal',
    'Touch Abnormal',
    'Pain Present',
    'Tenderness Present',
  ]);
  RxList<String> selectedSensoryFunctionLowerRight = RxList();
  void onCheckedLowerLimbAppearanceRightNormal() {
    lowerLimbAppearanceRightNormal.toggle();
  }

  void onCheckedRangeOfMovementLowerLimbRight() {
    rangeOfMovementNormalLowerLimbRight.toggle();
  }

  void onCheckedBicepsLowerLimbRight() {
    bicepsNormalLowerLimbRight.toggle();
  }

  void onCheckedRadialLowerLimbRight() {
    radialNormalLowerLimbRight.toggle();
  }

  void onCheckedSensoryFunctionAllNormalLowerLimbRight() {
    sensoryFunctionAllNormalLowerLimbRight.toggle();
  }

  void onCheckedPressureAbnormalLowerLimbRight() {
    pressureAbnormalLowerLimbRight.toggle();
  }

  void onCheckedTouchAbnormalLowerLimbRight() {
    touchAbnormalLowerLimbRight.toggle();
  }

  void onCheckedPainPresentLowerLimbRight() {
    painPresentLowerLimbRight.toggle();
  }

  void onCheckedTendernessPresentLowerLimbRight() {
    tendernessPresentLowerLimbRight.toggle();
  }

  void onSelectLowerLimbAppearanceRight({required int idx}) {
    String name = lowerLimbAppearanceRightList.keys.elementAt(idx);
    if (selectedLowerLimbAppearanceRight.contains(name)) {
      selectedLowerLimbAppearanceRight.remove(name);
    } else {
      selectedLowerLimbAppearanceRight.add(name);
    }
  }

  void onSelectLowerLimbMotorFunctionRight({required String name}) {
    if (selectedLowerLimbMotorFunctionRight.value == name) {
      selectedLowerLimbMotorFunctionRight.value = '';
    } else {
      selectedLowerLimbMotorFunctionRight.value = name;
    }
    lowerLimbMotorFunctionRightList.refresh();
  }

  void onSelectRadialLowerLimbRight({required String name}) {
    if (selectedRadialLowerLimbRight.value == name) {
      selectedRadialLowerLimbRight.value = '';
    } else {
      selectedRadialLowerLimbRight.value = name;
    }
    radialLowerRightList.refresh();
  }

  void onSelectTouchAbnormalLowerLimbRight({required String name}) {
    if (selectedTouchAbnormalLowerLimbRight.value == name) {
      selectedTouchAbnormalLowerLimbRight.value = '';
    } else {
      selectedTouchAbnormalLowerLimbRight.value = name;
    }
    touchAbnormalLowerRightList.refresh();
  }

  RxDouble lowerAgeLowerLimbRight = 0.0.obs;
  RxDouble upperAgeLowerLimbRight = 0.0.obs;

  final StreamController<RangeValues> _sliderStreamControllerLower =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get sliderStreamLowerLimbRight =>
      _sliderStreamControllerLower.stream;

  void updateSliderStreamLowerLimbRight(RangeValues values) {
    _sliderStreamControllerLower.add(values);
  }

  RxDouble lowerAgeFirstLowerLimbRight = 0.0.obs;
  RxDouble upperAgeFirstLowerLimbRight = 0.0.obs;

  final StreamController<RangeValues> firstSliderStreamControllerLower =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get firstSliderStreamLowerLimbRight =>
      firstSliderStreamControllerLower.stream;

  void updateFirstSliderStreamLowerLimbRight(RangeValues values) {
    firstSliderStreamControllerLower.add(values);
  }

  RxDouble lowerAgeSecondLowerLimbRight = 0.0.obs;
  RxDouble upperAgeSecondLowerLimbRight = 0.0.obs;

  final StreamController<RangeValues> secondSliderStreamControllerLower =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get secondSliderStreamLowerLimbRight =>
      secondSliderStreamControllerLower.stream;

  void updateSecondSliderStreamLowerLimbRight(RangeValues values) {
    secondSliderStreamControllerLower.add(values);
  }

  void updateAgeRangeLowerLimbRight(RangeValues values) {
    lowerAgeLowerLimbRight.value = values.start;
    upperAgeLowerLimbRight.value = values.end;
  }

  void updateFirstRangeLower(RangeValues values) {
    lowerAgeFirstLowerLimbRight.value = values.start;
    upperAgeFirstLowerLimbRight.value = values.end;
  }

  void updateSecondRangeLower(RangeValues values) {
    lowerAgeSecondLowerLimbRight.value = values.start;
    upperAgeSecondLowerLimbRight.value = values.end;
  }

  /// lower limb Left
  RxList selectedLowerLimbAppearanceLeft = RxList();
  RxString selectedLowerLimbMotorFunctionLeft = RxString('Normal');
  RxString selectedRangeOfMovementLowerLimbLeft = RxString('');
  RxString selectedRestrictedLowerLimbLeft = RxString('Mild');
  RxString selectedRadialLowerLimbLeft = RxString('Absent');
  RxString selectedTouchAbnormalLowerLimbLeft = RxString('Hot object');

  RxBool lowerLimbAppearanceLeftNormal = RxBool(true);
  RxBool rangeOfMovementNormalLowerLimbLeft = RxBool(true);
  RxBool hyperFlexibleLowerLimbLeft = RxBool(false);
  RxBool restrictedLowerLimbLeft = RxBool(false);
  RxBool bicepsNormalLowerLimbLeft = RxBool(true);
  RxBool radialNormalLowerLimbLeft = RxBool(true);
  RxBool sensoryFunctionAllNormalLowerLimbLeft = RxBool(true);
  RxBool pressureAbnormalLowerLimbLeft = RxBool(false);
  RxBool touchAbnormalLowerLimbLeft = RxBool(false);
  RxBool painPresentLowerLimbLeft = RxBool(false);
  RxBool tendernessPresentLowerLimbLeft = RxBool(false);
  final Map<String, String> lowerLimbAppearanceLeftList = {
    'Atrophy': 'Atrophy',
    'Contracture': 'Contracture',
    'Deformity': 'Deformity',
    'Hypertrophy': 'Hypertrophy',
    'Oedema': 'Oedema'
  };

  RxList<String> lowerLimbMotorFunctionLeftList = RxList([
    'Normal',
    "Fasciculations",
    "Rigidity [hypertonia]",
    "Flaccidity [hypotonia]",
    "Spasticity [hypertonia]",
  ]);
  RxList<String> radialLowerLeftList = RxList([
    "Absent",
    "Sluggish",
    "Exaggerated",
    "Clonus",
  ]);
  RxList<String> touchAbnormalLowerLeftList = RxList([
    "Hot object",
    "Cold object",
    "Both hot & cold objects",
  ]);

  RxList<String> sensoryFunctionListLowerLeft = RxList([
    'Pressure Abnormal',
    'Touch Abnormal',
    'Pain Present',
    'Tenderness Present',
  ]);
  RxList<String> selectedSensoryFunctionLowerLeft = RxList();
  void onCheckedLowerLimbAppearanceLeftNormal() {
    lowerLimbAppearanceLeftNormal.toggle();
  }

  void onCheckedRangeOfMovementLowerLimbLeft() {
    rangeOfMovementNormalLowerLimbLeft.toggle();
  }

  void onCheckedBicepsLowerLimbLeft() {
    bicepsNormalLowerLimbLeft.toggle();
  }

  void onCheckedRadialLowerLimbLeft() {
    radialNormalLowerLimbLeft.toggle();
  }

  void onCheckedSensoryFunctionAllNormalLowerLimbLeft() {
    sensoryFunctionAllNormalLowerLimbLeft.toggle();
  }

  void onCheckedPressureAbnormalLowerLimbLeft() {
    pressureAbnormalLowerLimbLeft.toggle();
  }

  void onCheckedTouchAbnormalLowerLimbLeft() {
    touchAbnormalLowerLimbLeft.toggle();
  }

  void onCheckedPainPresentLowerLimbLeft() {
    painPresentLowerLimbLeft.toggle();
  }

  void onCheckedTendernessPresentLowerLimbLeft() {
    tendernessPresentLowerLimbLeft.toggle();
  }

  void onSelectLowerLimbAppearanceLeft({required int idx}) {
    String name = lowerLimbAppearanceLeftList.keys.elementAt(idx);
    if (selectedLowerLimbAppearanceLeft.contains(name)) {
      selectedLowerLimbAppearanceLeft.remove(name);
    } else {
      selectedLowerLimbAppearanceLeft.add(name);
    }
  }

  void onSelectLowerLimbMotorFunctionLeft({required String name}) {
    if (selectedLowerLimbMotorFunctionLeft.value == name) {
      selectedLowerLimbMotorFunctionLeft.value = '';
    } else {
      selectedLowerLimbMotorFunctionLeft.value = name;
    }
    lowerLimbMotorFunctionLeftList.refresh();
  }

  void onSelectRadialLowerLimbLeft({required String name}) {
    if (selectedRadialLowerLimbLeft.value == name) {
      selectedRadialLowerLimbLeft.value = '';
    } else {
      selectedRadialLowerLimbLeft.value = name;
    }
    radialLowerLeftList.refresh();
  }

  void onSelectTouchAbnormalLowerLimbLeft({required String name}) {
    if (selectedTouchAbnormalLowerLimbLeft.value == name) {
      selectedTouchAbnormalLowerLimbLeft.value = '';
    } else {
      selectedTouchAbnormalLowerLimbLeft.value = name;
    }
    touchAbnormalLowerLeftList.refresh();
  }

  RxDouble lowerAgeLowerLimbLeft = 0.0.obs;
  RxDouble upperAgeLowerLimbLeft = 0.0.obs;

  final StreamController<RangeValues> _sliderStreamControllerLowerLeft =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get sliderStreamLowerLimbLeft =>
      _sliderStreamControllerLowerLeft.stream;

  void updateSliderStreamLowerLimbLeft(RangeValues values) {
    _sliderStreamControllerLowerLeft.add(values);
  }

  RxDouble lowerAgeFirstLowerLimbLeft = 0.0.obs;
  RxDouble upperAgeFirstLowerLimbLeft = 0.0.obs;

  final StreamController<RangeValues> firstSliderStreamControllerLowerLeft =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get firstSliderStreamLowerLimbLeft =>
      firstSliderStreamControllerLowerLeft.stream;

  void updateFirstSliderStreamLowerLimbLeft(RangeValues values) {
    firstSliderStreamControllerLowerLeft.add(values);
  }

  RxDouble lowerAgeSecondLowerLimbLeft = 0.0.obs;
  RxDouble upperAgeSecondLowerLimbLeft = 0.0.obs;

  final StreamController<RangeValues> secondSliderStreamControllerLowerLeft =
      StreamController<RangeValues>.broadcast();
  Stream<RangeValues> get secondSliderStreamLowerLimbLeft =>
      secondSliderStreamControllerLowerLeft.stream;

  void updateSecondSliderStreamLowerLimbLeft(RangeValues values) {
    secondSliderStreamControllerLowerLeft.add(values);
  }

  void updateAgeRangeLowerLimbLeft(RangeValues values) {
    lowerAgeLowerLimbLeft.value = values.start;
    upperAgeLowerLimbLeft.value = values.end;
  }

  void updateFirstRangeLowerLeft(RangeValues values) {
    lowerAgeFirstLowerLimbLeft.value = values.start;
    upperAgeFirstLowerLimbLeft.value = values.end;
  }

  void updateSecondRangeLowerLeft(RangeValues values) {
    lowerAgeSecondLowerLimbLeft.value = values.start;
    upperAgeSecondLowerLimbLeft.value = values.end;
  }

  ///
  RxBool isCanWalk = RxBool(true);
  RxBool isAmbulant = RxBool(true);
  RxBool gaitNormal = RxBool(true);

  RxBool isWearBraceSupport = RxBool(false);
  RxBool isProsthesis = RxBool(false);

  RxBool spineNormal = RxBool(true);

  RxBool shoulderNormal = RxBool(true);

  RxBool spineMobilityNormal = RxBool(true);

  RxBool neckMobilityNormal = RxBool(true);

  RxList<String> mobilityList = RxList([
    'No Developmental Delay',
    'Delayed Milestone',
  ]);
  RxList<String> ambulantList = RxList([
    'Uses a Wheelchair',
    'Uses Crutches',
    'Uses other motorized system for movement',
  ]);
  RxList<String> gaitList =
      RxList(['Shuffling', 'Other abnormal gait', 'Limp']);

  final Map<String, String> wearBraceListsName = {
    "Neck": "Neck",
    "Right Upper Limb": "Right Upper Limb",
    "Right Lower Limb": "Right Lower Limb",
    "Shoulders": "Shoulders",
    "Left Upper Limb": "Left Upper Limb",
    "Left Lower Limb": "Left Lower Limb",
    "Back": "Back",
    "Chest": "Chest",
  };

  final Map<String, String> prosthesisListName = {
    "Knee": "Knee",
    "Right Upper Limb": "Right Upper Limb",
    "Right shoulder": "Right Shoulder",
    "Hip": "Hip",
    "Left Upper Limb": "Left Upper Limb",
    "Left shoulder": "Left Shoulder",
    "Spine": "Spine",
    "Right Lower Limb": "Right Lower Limb",
    "Left Lower Limb": "Left Lower Limb",
    "Other": "Other"
  };
  RxList<String> spineAppearanceList = RxList([
    'Kyphosis',
    "Scoliosis",
    "Kypho-scoliosis",
    "Rigid",
  ]);
  final Map<String, String> shoulderAppearanceListName = {
    'Postural': 'Postural',
    'Bony Causes': 'Bony Causes',
    'Muscle spasms / knots': 'Muscle spams / knots',
    'Other': 'Other'
  };

  RxList<String> spineMobilityList = RxList([
    'Mild',
    "Moderate",
    "Severe",
  ]);
  RxList<String> neckMobilityList = RxList([
    'Mild',
    "Moderate",
    "Severe",
  ]);

  void onCheckedCanWalk() {
    isCanWalk.toggle();
  }

  void onCheckedAmbulant() {
    isAmbulant.toggle();
  }

  void onCheckedGaitNormal() {
    gaitNormal.toggle();
  }

  void onCheckedSpineNormal() {
    spineNormal.toggle();
  }

  void onCheckedShoulderNormal() {
    shoulderNormal.toggle();
  }

  void onCheckedWearBrace() {
    isWearBraceSupport.toggle();
  }

  void onCheckedSpineMobilityNormal() {
    spineMobilityNormal.toggle();
  }

  void onCheckedNeckMobilityNormal() {
    neckMobilityNormal.toggle();
  }

  void onSelectMobilityList({required String name}) {
    if (selectedMobilityList.value == name) {
      selectedMobilityList.value = '';
    } else {
      selectedMobilityList.value = name;
    }
    mobilityList.refresh();
  }

  void onSelectAmbulantList({required String name}) {
    if (selectedAmbulantList.value == name) {
      selectedAmbulantList.value = '';
    } else {
      selectedAmbulantList.value = name;
    }
    ambulantList.refresh();
  }

  void onSelectGaitList({required String name}) {
    if (selectedGaitList.value == name) {
      selectedGaitList.value = '';
    } else {
      selectedGaitList.value = name;
    }
    gaitList.refresh();
  }

  void onToggleGait() {
    isGaitNormal.toggle();
  }

  void onSelectWearBraceSupport({required int idx}) {
    String name = wearBraceListsName.keys.elementAt(idx);
    if (selectedWearBrace.contains(name)) {
      selectedWearBrace.remove(name);
    } else {
      selectedWearBrace.add(name);
    }
  }

  void onCheckedProsthesis() {
    isProsthesis.toggle();
  }

  void onSelectProsthesis({required int idx}) {
    String name = prosthesisListName.keys.elementAt(idx);
    if (selectedProsthesis.contains(name)) {
      selectedProsthesis.remove(name);
    } else {
      selectedProsthesis.add(name);
    }
  }

  void onSelectSpineAppearance({required String name}) {
    if (selectedSpineAppearance.value == name) {
      selectedSpineAppearance.value = '';
    } else {
      selectedSpineAppearance.value = name;
    }
    spineAppearanceList.refresh();
  }

  void onSelectShoulderAppearance({required int idx}) {
    String name = shoulderAppearanceListName.keys.elementAt(idx);
    if (selectedShoulderAppearance.contains(name)) {
      selectedShoulderAppearance.remove(name);
    } else {
      selectedShoulderAppearance.add(name);
    }
  }

  void onSelectSpineMobility({required String name}) {
    if (selectedSpineMobility.value == name) {
      selectedSpineMobility.value = '';
    } else {
      selectedSpineMobility.value = name;
    }
    spineMobilityList.refresh();
  }

  void onSelectNeckMobility({required String name}) {
    if (selectedNeckMobility.value == name) {
      selectedNeckMobility.value = '';
    } else {
      selectedNeckMobility.value = name;
    }
    neckMobilityList.refresh();
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

  void onCheckedSpecialistReferralNeeded() {
    isSpecialistReferralNeeded.toggle();
  }

  ///station tab

  RxInt selectedTabIdx = 0.obs;

  Future<void> onSaveAndNext() async {
    switch (selectedTabIdx.value) {
      case 0:
        {
          if (StudentInfo.calculateAge() >= 2) {
            if (!isAmbulant.value && selectedAmbulantList.isEmpty) {
              AppUtils.showSnackBar(
                  'Please select exact values for Ambulant - No');
            } else if (!gaitNormal.value && selectedGaitList.isEmpty) {
              AppUtils.showSnackBar(
                  'Please select exact values for Gait - Abnormal');
            } else if (!gaitNormal.value &&
                selectedGaitList.value == 'Limp' &&
                gaitLowerLimb.value &&
                otherGaitTextField.controller.text.isEmpty) {
              AppUtils.showSnackBar(
                  'Please enter text for Gait - Other causes');
            } else {
              await submitStationEData(callBack: (success) {
                if (success ?? false) selectedTabIdx.value = 1;
              });
            }
          } else {
            if (!isCanWalk.value &&
                selectedMobilityList.value == 'Other' &&
                otherMobilityTextField.controller.text.isEmpty) {
              AppUtils.showSnackBar('Please enter text for Mobility - Other');
            } else if (!gaitNormal.value &&
                selectedGaitList.value == 'Limp' &&
                gaitLowerLimb.value &&
                otherGaitTextField.controller.text.isEmpty) {
              AppUtils.showSnackBar(
                  'Please enter text for Gait - Other causes');
            } else {
              await submitStationEData(callBack: (success) {
                if (success ?? false) selectedTabIdx.value = 2;
              });
            }
          }
        }
        break;
      case 1:
        {
          if (isWearBraceSupport.value && selectedWearBrace.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Wear Brace/Support');
          } else if (isProsthesis.value && selectedProsthesis.isEmpty) {
            AppUtils.showSnackBar('Please select exact values for Prosthesis');
          } else if (isProsthesis.value &&
              selectedProsthesis.contains('Other') &&
              otherProsthesisTextField.controller.text.isEmpty) {
            AppUtils.showSnackBar('Please enter text for Prosthesis - Other');
          } else {
            selectedTabIdx.value = 2;
          }
        }
        break;
      case 2:
        {
          if (!spineNormal.value &&
              selectedSpineAppearance.value == 'Other' &&
              otherSpineTextField.controller.text.isEmpty) {
            AppUtils.showSnackBar(
                'Please enter text for Spine Appearance - Other');
          } else if (!shoulderNormal.value &&
              selectedShoulderAppearance.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Shoulder Griddle Appearance Abnormal');
          } else if (!shoulderNormal.value &&
              selectedShoulderAppearance.contains('Other') &&
              otherShoulderTextField.controller.text.isEmpty) {
            AppUtils.showSnackBar(
                'Please enter text for Shoulder Griddle Appearance - Other');
          } else {
            selectedTabIdx.value = 3;
          }
        }
        break;
      case 3:
        {
          if (!spineMobilityNormal.value &&
              selectedSpineMobility.value.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Spine Mobility - Restricted movement');
          } else if (!neckMobilityNormal.value &&
              selectedNeckMobility.value.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Neck Mobility - Restricted movement');
          } else {
            await updateEWearSpineAppearanceSpineMobility(callBack: (success) {
              if (success ?? false) selectedTabIdx.value = 4;
            });
          }
        }
        break;

      case 4:
        {
          if (!upperLimbAppearanceRightNormal.value &&
              selectedUpperLimbAppearanceRight.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Upper Limb - Right - Appearance');
          } else if (selectedUpperLimbMotorFunctionRight.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Upper Limb - Right - Tone');
          } else if (!rangeOfMovementNormalUpperLimbRight.value &&
              hyperFlexibleUpperLimbRight.value &&
              selectedHyperFlexibleUpperLimbRight.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Upper Limb - Right - Range of Movement - Hyper Flexible');
          } else if (!rangeOfMovementNormalUpperLimbRight.value &&
              !hyperFlexibleUpperLimbRight.value &&
              selectedRestrictedUpperLimbRight.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Upper Limb - Right - Range of Movement - Restricted');
          } else if (!bicepsNormalUpperLimbRight.value &&
              selectedBicepsUpperLimbRight.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Upper Limb - Right - Deep Tendon Reflexes - Biceps - Abnormal');
          } else if (!radialNormalUpperLimbRight.value &&
              selectedRadialUpperLimbRight.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Upper Limb - Right - Deep Tendon Reflexes - Radial - Abnormal');
          } else if (!sensoryFunctionAllNormalUpperLimbRight.value &&
              selectedSensoryFunctionRight.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Upper Limb - Right - Deep Tendon Reflexes - Sensory Function - Abnormal');
          } else if (!sensoryFunctionAllNormalUpperLimbRight.value &&
              selectedSensoryFunctionRight.contains('Touch Abnormal') &&
              selectedTouchAbnormalUpperLimbRight.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Upper Limb - Right - Sensory Function - Touch Abnormal');
          } else if (!sensoryFunctionAllNormalUpperLimbRight.value &&
              selectedSensoryFunctionRight.contains('Pain Present') &&
              upperAgeFirstUpperLimbRight.value.toInt() == 0) {
            AppUtils.showSnackBar(
                'Please select exact values for Upper Limb - Right - Sensory Function - Pain Present');
          } else if (!sensoryFunctionAllNormalUpperLimbRight.value &&
              selectedSensoryFunctionRight.contains('Tenderness Present') &&
              upperAgeSecondUpperLimbRight.value.toInt() == 0) {
            AppUtils.showSnackBar(
                'Please select exact values for Upper Limb - Right - Sensory Function - Tenderness Present');
          } else {
            selectedTabIdx.value = 5;
          }
        }
        break;
      case 5:
        {
          if (!upperLimbAppearanceLeftNormal.value &&
              selectedUpperLimbAppearanceLeft.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Upper Limb - Left - Appearance');
          } else if (selectedUpperLimbMotorFunctionLeft.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Upper Limb - Left - Tone');
          } else if (!rangeOfMovementNormalUpperLimbLeft.value &&
              hyperFlexibleUpperLimbLeft.value &&
              selectedHyperFlexibleUpperLimbLeft.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Upper Limb - Left - Range of Movement - Hyper Flexible');
          } else if (!rangeOfMovementNormalUpperLimbLeft.value &&
              !hyperFlexibleUpperLimbLeft.value &&
              selectedRestrictedUpperLimbLeft.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Upper Limb - Left - Range of Movement - Restricted');
          } else if (!bicepsNormalUpperLimbLeft.value &&
              selectedBicepsUpperLimbLeft.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Upper Limb - Left - Deep Tendon Reflexes - Biceps - Abnormal');
          } else if (!radialNormalUpperLimbLeft.value &&
              selectedRadialUpperLimbLeft.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Upper Limb - Left - Deep Tendon Reflexes - Radial - Abnormal');
          } else if (!sensoryFunctionAllNormalUpperLimbLeft.value &&
              selectedSensoryFunctionLeft.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Upper Limb - Left - Deep Tendon Reflexes - Sensory Function - Abnormal');
          } else if (!sensoryFunctionAllNormalUpperLimbLeft.value &&
              selectedSensoryFunctionLeft.contains('Touch Abnormal') &&
              selectedTouchAbnormalUpperLimbLeft.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Upper Limb - Left - Sensory Function - Touch Abnormal');
          } else if (!sensoryFunctionAllNormalUpperLimbLeft.value &&
              selectedSensoryFunctionLeft.contains('Pain Present') &&
              upperAgeFirstUpperLimbLeft.value.toInt() == 0) {
            AppUtils.showSnackBar(
                'Please select exact values for Upper Limb - Left - Sensory Function - Pain Present');
          } else if (!sensoryFunctionAllNormalUpperLimbLeft.value &&
              selectedSensoryFunctionLeft.contains('Tenderness Present') &&
              upperAgeSecondUpperLimbLeft.value.toInt() == 0) {
            AppUtils.showSnackBar(
                'Please select exact values for Upper Limb - Left - Sensory Function - Tenderness Present');
          } else {
            await updateEUpperLimbRightLeft(callBack: (success) {
              if (success ?? false) selectedTabIdx.value = 6;
            });
          }
        }
        break;

      case 6:
        {
          if (!lowerLimbAppearanceRightNormal.value &&
              selectedLowerLimbAppearanceRight.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Lower Limb - Right - Appearance');
          } else if (selectedLowerLimbMotorFunctionRight.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Lower Limb - Right - Tone');
          } else if (!radialNormalLowerLimbRight.value &&
              selectedRadialLowerLimbRight.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Lower Limb - Right - Knee - Abnormal');
          } else if (!sensoryFunctionAllNormalLowerLimbRight.value &&
              selectedSensoryFunctionLowerRight.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Lower Limb - Right - Deep Tendon Reflexes - Sensory Function - Abnormal');
          } else if (!sensoryFunctionAllNormalLowerLimbRight.value &&
              selectedSensoryFunctionLowerRight.contains('Touch Abnormal') &&
              selectedTouchAbnormalLowerLimbRight.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Lower Limb - Right - Sensory Function - Touch Abnormal');
          } else if (!sensoryFunctionAllNormalLowerLimbRight.value &&
              selectedSensoryFunctionLowerRight.contains('Pain Present') &&
              upperAgeFirstLowerLimbRight.value.toInt() == 0) {
            AppUtils.showSnackBar(
                'Please select exact values for Lower Limb - Right - Sensory Function - Pain Present');
          } else if (!sensoryFunctionAllNormalLowerLimbRight.value &&
              selectedSensoryFunctionLowerRight
                  .contains('Tenderness Present') &&
              upperAgeSecondLowerLimbRight.value.toInt() == 0) {
            AppUtils.showSnackBar(
                'Please select exact values for Lower Limb - Right - Sensory Function - Tenderness Present');
          } else {
            selectedTabIdx.value = 7;
          }
        }
        break;

      case 7:
        {
          if (!lowerLimbAppearanceLeftNormal.value &&
              selectedLowerLimbAppearanceLeft.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Lower Limb - Left - Appearance');
          } else if (selectedLowerLimbMotorFunctionLeft.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Lower Limb - Left - Tone');
          } else if (!radialNormalLowerLimbLeft.value &&
              selectedRadialLowerLimbLeft.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Lower Limb - Left - Knee - Abnormal');
          } else if (!sensoryFunctionAllNormalLowerLimbLeft.value &&
              selectedSensoryFunctionLowerLeft.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Lower Limb - Left - Deep Tendon Reflexes - Sensory Function - Abnormal');
          } else if (!sensoryFunctionAllNormalLowerLimbLeft.value &&
              selectedSensoryFunctionLowerLeft.contains('Touch Abnormal') &&
              selectedTouchAbnormalLowerLimbLeft.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Lower Limb - Left - Sensory Function - Touch Abnormal');
          } else if (!sensoryFunctionAllNormalLowerLimbLeft.value &&
              selectedSensoryFunctionLowerLeft.contains('Pain Present') &&
              upperAgeFirstLowerLimbLeft.value.toInt() == 0) {
            AppUtils.showSnackBar(
                'Please select exact values for Lower Limb - Left - Sensory Function - Pain Present');
          } else if (!sensoryFunctionAllNormalLowerLimbLeft.value &&
              selectedSensoryFunctionLowerLeft.contains('Tenderness Present') &&
              upperAgeSecondLowerLimbLeft.value.toInt() == 0) {
            AppUtils.showSnackBar(
                'Please select exact values for Lower Limb - Left - Sensory Function - Tenderness Present');
          } else {
            await updateELowerLimbRightLeft(callBack: (success) {
              if (success ?? false) selectedTabIdx.value = 8;
            });
          }
        }
        break;

      case 8:
        if (isSpecialistReferralNeeded.value &&
            (selectedReferralType.isEmpty || selectedReFlag.isEmpty)) {
          AppUtils.showSnackBar('Please select exact values for Type and Flag');
        } else if (selectedReferralType.contains('Other') &&
            otherWrapper.controller.text.isEmpty) {
          AppUtils.showSnackBar(
              'Please enter text for the Specialist Referral Recommended - Type - Other field');
        } else {
          await updateEOther(callBack: (success) {
            if (success ?? false) selectedTabIdx.value = 8;
          });

          StationEPreviewModel dataValue = StationEPreviewModel(
              mobilityValue: stationEResponse.value?.childMobility ?? '',
              canNotWalkValue:
                  stationEResponse.value?.childMobilityCanNotWalk ?? '',
              canNotWalkOtherValue:
                  stationEResponse.value?.childMobilityCanNotWalkOther ?? '',
              ambulantValue: stationEResponse.value?.studentAmbulant ?? '',
              ambulantNoValue: stationEResponse.value?.studentAmbulantNo ?? '',
              gaitNormalValue: stationEResponse.value?.gait ?? '',
              gaitAbNormalValue: stationEResponse.value?.gaitAbnormal ?? '',
              gaitAbnormalLimpValue:
                  stationEResponse.value?.gaitAbnormalLimp ?? '',
              gaitAbnormalLimpOtherValue:
                  stationEResponse.value?.gaitAbnormalLimpOther ?? '',
              wearBraceValue: stationEResponse.value?.wearBraceSupport ?? '',
              wearBraceYesValue:
                  stationEResponse.value?.wearBraceSupportYes ?? '',
              prosthesisValue: stationEResponse.value?.prosthesis ?? '',
              prosthesisYesValue: stationEResponse.value?.prosthesisYes ?? '',
              prosthesisYesOtherValue:
                  stationEResponse.value?.prosthesisYesOther ?? '',
              spineAppearanceValue:
                  stationEResponse.value?.spineAppearance ?? '',
              spineAppearanceAbnormalValue:
                  stationEResponse.value?.spineAppearanceAbnormal ?? '',
              spineAppearanceAbnormalOtherValue:
                  stationEResponse.value?.spineAppearanceAbnormalOther ?? "",
              shoulderValue:
                  stationEResponse.value?.shoulderGriddleAppearance ?? '',
              shoulderAbnormalValue:
                  stationEResponse.value?.shoulderGriddleAppearanceAbnormal ??
                      '',
              shoulderAbnormalOtherValue:
                  stationEResponse.value?.shoulderGriddleAppearanceAbnormalOther ??
                      '',
              spineMobilityNormalValue:
                  stationEResponse.value?.spineMobility ?? '',
              spineMobilityRestrictedValue:
                  stationEResponse.value?.spineMobilityRestrictedMovement ?? '',
              neckMobilityNormalValue: stationEResponse.value?.neckMobility ?? '',
              neckMobilityRestrictedValue: stationEResponse.value?.neckMobilityRestrictedMovement ?? '',
              upperLimbAppearanceRightNormalValue: stationEResponse.value?.uLRightAppearance ?? '',
              uLRightAppearanceAbnormalValue: stationEResponse.value?.uLRightAppearanceAbnormal ?? '',
              uLRightMotorFunctionToneValue: stationEResponse.value?.uLRightMotorFunctionTone ?? '',
              uLRightMotorFunctionRangeOfMovementValue: stationEResponse.value?.uLRightMotorFunctionRangeOfMovement ?? '',
              uLRightMFRMAbnormalValue: stationEResponse.value?.uLRightMFRMAbnormal ?? '',
              uLRightMFRMAbnormalHyperFlexibleValue: stationEResponse.value?.uLRightMFRMAbnormalHyperFlexible ?? '',
              uLRightMFRMAbnormalRestrictedValue: stationEResponse.value?.uLRightMFRMAbnormalRestricted ?? '',
              uLRightMotorFunctionStrengthValue: stationEResponse.value?.uLRightMotorFunctionStrength ?? '',
              uLRightDeepTendonReflexesBicepsValue: stationEResponse.value?.uLRightDeepTendonReflexesBiceps ?? '',
              uLRightDTRBicepsAbnormalValue: stationEResponse.value?.uLRightDTRBicepsAbnormal ?? '',
              uLRightDeepTendonReflexesRadialValue: stationEResponse.value?.uLRightDeepTendonReflexesRadial ?? '',
              uLRightDTRRadialAbnormalValue: stationEResponse.value?.uLRightDTRRadialAbnormal ?? '',
              uLRightDeepTendonReflexesSensoryFunctionValue: stationEResponse.value?.uLRightDeepTendonReflexesSensoryFunction ?? '',
              uLRightDTRSFAbnormalTouchValue: stationEResponse.value?.uLRightDTRSFAbnormalTouch ?? "",
              uLRightDTRSFAbnormalPainPresentValue: stationEResponse.value?.uLRightDTRSFAbnormalPainPresent ?? 0,
              uLRightDTRSFAbnormalPressureAbnormalValue: stationEResponse.value?.uLRightDTRSFAbnormalPressureAbnormal ?? false,
              uLRightDTRSFAbnormalTendernessPresentValue: stationEResponse.value?.uLRightDTRSFAbnormalTendernessPresent ?? 0,
              uLLeftAppearanceValue: stationEResponse.value?.uLLeftAppearance ?? '',
              uLLeftAppearanceAbnormalValue: stationEResponse.value?.uLLeftAppearanceAbnormal ?? '',
              uLLeftMotorFunctionToneValue: stationEResponse.value?.uLLeftMotorFunctionTone ?? '',
              uLLeftMotorFunctionRangeOfMovementValue: stationEResponse.value?.uLLeftMotorFunctionRangeOfMovement ?? '',
              uLLeftMFRMAbnormalValue: stationEResponse.value?.uLLeftMFRMAbnormal ?? '',
              uLLeftMFRMAbnormalHyperFlexibleValue: stationEResponse.value?.uLLeftMFRMAbnormalHyperFlexible ?? '',
              uLLeftMFRMAbnormalRestrictedValue: stationEResponse.value?.uLLeftMFRMAbnormalRestricted ?? '',
              uLLeftMotorFunctionStrengthValue: stationEResponse.value?.uLLeftMotorFunctionStrength ?? '',
              uLLeftDeepTendonReflexesBicepsValue: stationEResponse.value?.uLLeftDeepTendonReflexesBiceps ?? '',
              uLLeftDTRBicepsAbnormalValue: stationEResponse.value?.uLLeftDTRBicepsAbnormal ?? '',
              uLLeftDeepTendonReflexesRadialValue: stationEResponse.value?.uLLeftDeepTendonReflexesRadial ?? '',
              uLLeftDTRRadialAbnormalValue: stationEResponse.value?.uLLeftDTRRadialAbnormal ?? '',
              uLLeftDeepTendonReflexesSensoryFunctionValue: stationEResponse.value?.uLLeftDeepTendonReflexesSensoryFunction ?? '',
              uLLeftDTRSFAbnormalTouchValue: stationEResponse.value?.uLLeftDTRSFAbnormalTouch ?? '',
              uLLeftDTRSFAbnormalPainPresentValue: stationEResponse.value?.uLLeftDTRSFAbnormalPainPresent ?? 0,
              uLLeftDTRSFAbnormalPressureAbnormalValue: stationEResponse.value?.uLLeftDTRSFAbnormalPressureAbnormal ?? false,
              uLLeftDTRSFAbnormalTendernessPresentValue: stationEResponse.value?.uLLeftDTRSFAbnormalTendernessPresent ?? 0,
              lLRightAppearanceValue: stationEResponse.value?.lLRightAppearance ?? '',
              lLRightAppearanceAbnormalValue: stationEResponse.value?.lLRightAppearanceAbnormal ?? '',
              lLRightMotorFunctionToneValue: stationEResponse.value?.lLRightMotorFunctionTone ?? '',
              lLRightMotorFunctionRangeOfMovementValue: stationEResponse.value?.lLRightMotorFunctionRangeOfMovement ?? '',
              lLRightMotorFunctionStrengthValue: stationEResponse.value?.lLRightMotorFunctionStrength ?? '',
              lLRightMotorFunctionKneeValue: stationEResponse.value?.lLRightMotorFunctionKnee ?? '',
              lLRightMotorFunctionKneeAbnormalValue: stationEResponse.value?.lLRightMotorFunctionKneeAbnormal ?? '',
              lLRightDeepTendonReflexesSensoryFunctionValue: stationEResponse.value?.lLRightDeepTendonReflexesSensoryFunction ?? '',
              lLRightDTRSFAbnormalTouchValue: stationEResponse.value?.lLRightDTRSFAbnormalTouch ?? '',
              lLRightDTRSFAbnormalPainPresentValue: stationEResponse.value?.lLRightDTRSFAbnormalPainPresent ?? 0,
              lLRightDTRSFAbnormalPressureAbnormalValue: stationEResponse.value?.lLRightDTRSFAbnormalPressureAbnormal ?? false,
              lLRightDTRSFAbnormalTendernessPresentValue: stationEResponse.value?.lLRightDTRSFAbnormalTendernessPresent ?? 0,
              lLLeftAppearanceValue: stationEResponse.value?.lLLeftAppearance ?? '',
              lLLeftAppearanceAbnormalValue: stationEResponse.value?.lLLeftAppearanceAbnormal ?? '',
              lLLeftMotorFunctionToneValue: stationEResponse.value?.lLLeftMotorFunctionTone ?? '',
              lLLeftMotorFunctionRangeOfMovementValue: stationEResponse.value?.lLLeftMotorFunctionRangeOfMovement ?? '',
              lLLeftMotorFunctionStrengthValue: stationEResponse.value?.lLLeftMotorFunctionStrength ?? '',
              lLLeftMotorFunctionKneeValue: stationEResponse.value?.lLLeftMotorFunctionKnee ?? '',
              lLLeftMotorFunctionKneeAbnormalValue: stationEResponse.value?.lLLeftMotorFunctionKneeAbnormal ?? '',
              lLLeftDeepTendonReflexesSensoryFunctionValue: stationEResponse.value?.lLLeftDeepTendonReflexesSensoryFunction ?? '',
              lLLeftDTRSFAbnormalTouchValue: stationEResponse.value?.lLLeftDTRSFAbnormalTouch ?? '',
              lLLeftDTRSFAbnormalPainPresentValue: stationEResponse.value?.lLLeftDTRSFAbnormalPainPresent ?? 0,
              lLLeftDTRSFAbnormalPressureAbnormalValue: stationEResponse.value?.lLLeftDTRSFAbnormalPressureAbnormal ?? false,
              lLLeftDTRSFAbnormalTendernessPresentValue: stationEResponse.value?.lLLeftDTRSFAbnormalTendernessPresent ?? 0,
              otherObservationsValue: stationEResponse.value?.otherObservations ?? '',
              specialistReferralNeededValue: stationEResponse.value?.specialistReferralNeeded ?? '',
              specialistReferralNeededTypeValue: stationEResponse.value?.specialistReferralNeededType ?? '',
              specialistReferralNeededFlagValue: stationEResponse.value?.specialistReferralNeededFlag ?? '',
              other: stationEResponse.value?.other ?? '');
          AppUtils.getBottomSheet(children: [
            GetBuilder<HomeController>(
              builder: (homeController) => FinalConfirmationWidget(
                title: "Station E details successfully saved",
                child: FinalEPreviewWidget(data: dataValue),
                onEdit: () => Get.back(),
                onSubmit: () {
                  Get.dialog(
                    ConfirmationDialog(
                      onConfirm: () async {
                        await AppStorage.clearStationEid();
                        await AppStorage.clearStudent();
                        clearFormData();
                        Get.offAllNamed(Routes.DASHBOARD);
                        AppUtils.showSnackBar('Created Successfully');
                      },
                    ),
                  );
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
      if (StudentInfo.calculateAge() < 2 && selectedTabIdx.value == 2) {
        selectedTabIdx.value -= 2;
      } else {
        selectedTabIdx.value -= 1;
      }
    }
  }

  clearFormData() {
    //
    selectedTabIdx.value = 0;
    //
    selectedReferralType.clear();
    selectedReFlag.value = '';
    otherObservations.controller.clear();
    otherWrapper.controller.clear();
    isSpecialistReferralNeeded.value = false;
    //
    isCanWalk.value = true;
    selectedMobilityList.value = 'No Developmental Delay';
    otherMobilityTextField.controller.text = '';
    isAmbulant.value = true;
    selectedAmbulantList.value = 'Uses a Wheelchair';
    gaitNormal.value = true;
    selectedGaitList.value = 'Shuffling';
    gaitLowerLimb.value = false;
    otherGaitTextField.controller.text = '';
    isWearBraceSupport.value = false;
    selectedWearBrace.clear();
    isProsthesis.value = false;
    selectedProsthesis.clear();
    otherProsthesisTextField.controller.text = '';
    spineNormal.value = true;
    selectedSpineAppearance.value = 'Kyphosis';
    otherSpineTextField.controller.text = '';
    shoulderNormal.value = true;
    selectedShoulderAppearance.clear();
    otherShoulderTextField.controller.text = '';
    spineMobilityNormal.value = true;
    selectedSpineMobility.value = 'Mild';
    neckMobilityNormal.value = true;
    selectedNeckMobility.value = 'Mild';
    //
    upperLimbAppearanceRightNormal.value = true;
    selectedUpperLimbAppearanceRight.clear();
    selectedUpperLimbMotorFunctionRight.value = 'Normal';
    rangeOfMovementNormalUpperLimbRight.value = true;
    selectedHyperFlexibleUpperLimbRight.clear();
    selectedRestrictedUpperLimbRight.value = 'Mild';
    updateAgeRangeUpperLimbRight(const RangeValues(0, 0));
    bicepsNormalUpperLimbRight.value = true;
    selectedBicepsUpperLimbRight.value = 'Absent';
    radialNormalUpperLimbRight.value = true;
    selectedRadialUpperLimbRight.value = 'Absent';
    sensoryFunctionAllNormalUpperLimbRight.value = true;
    selectedSensoryFunctionRight.clear();
    selectedTouchAbnormalUpperLimbRight.value = 'Hot object';
    updateFirstRange(const RangeValues(0, 0));
    updateSecondRange(const RangeValues(0, 0));
    //
    upperLimbAppearanceLeftNormal.value = true;
    selectedUpperLimbAppearanceLeft.clear();
    selectedUpperLimbMotorFunctionLeft.value = 'Normal';
    rangeOfMovementNormalUpperLimbLeft.value = true;
    selectedHyperFlexibleUpperLimbLeft.clear();
    selectedRestrictedUpperLimbLeft.value = 'Mild';
    updateAgeRangeUpperLimbLeft(const RangeValues(0, 0));
    bicepsNormalUpperLimbLeft.value = true;
    selectedBicepsUpperLimbLeft.value = 'Absent';
    radialNormalUpperLimbLeft.value = true;
    selectedRadialUpperLimbLeft.value = 'Absent';
    sensoryFunctionAllNormalUpperLimbLeft.value = true;
    selectedSensoryFunctionLeft.clear();
    selectedTouchAbnormalUpperLimbLeft.value = 'Hot object';
    updateFirstRangeLeft(const RangeValues(0, 0));
    updateSecondRangeLeft(const RangeValues(0, 0));
    //
    lowerLimbAppearanceRightNormal.value = true;
    selectedLowerLimbAppearanceRight.clear();
    selectedLowerLimbMotorFunctionRight.value = 'Normal';
    rangeOfMovementNormalLowerLimbRight.value = true;
    selectedRestrictedLowerLimbRight.value = 'Mild';
    updateAgeRangeLowerLimbRight(const RangeValues(0, 0));
    bicepsNormalLowerLimbRight.value = true;
    radialNormalLowerLimbRight.value = true;
    selectedRadialLowerLimbRight.value = 'Absent';
    sensoryFunctionAllNormalLowerLimbRight.value = true;
    selectedSensoryFunctionLowerRight.clear();
    selectedTouchAbnormalLowerLimbRight.value = 'Hot object';
    updateFirstRangeLower(const RangeValues(0, 0));
    updateSecondRangeLower(const RangeValues(0, 0));
    //
    lowerLimbAppearanceLeftNormal.value = true;
    selectedLowerLimbAppearanceLeft.clear();
    selectedLowerLimbMotorFunctionLeft.value = 'Normal';
    rangeOfMovementNormalLowerLimbLeft.value = true;
    selectedRestrictedLowerLimbLeft.value = 'Mild';
    updateAgeRangeLowerLimbLeft(const RangeValues(0, 0));
    bicepsNormalLowerLimbLeft.value = true;
    radialNormalLowerLimbLeft.value = true;
    selectedRadialLowerLimbLeft.value = 'Absent';
    sensoryFunctionAllNormalLowerLimbLeft.value = true;
    selectedSensoryFunctionLowerLeft.clear();
    selectedTouchAbnormalLowerLimbLeft.value = 'Hot object';
    updateFirstRangeLowerLeft(const RangeValues(0, 0));
    updateSecondRangeLowerLeft(const RangeValues(0, 0));
  }

  /// Api implementation

  submitStationEData({required Function(bool? success) callBack}) async {
    StationECreateRequest requestData = StationECreateRequest(
        hcid: AppStorage.getUser().stations?.first.hcid,
        hcpid: AppStorage.getUser().stations?.first.hcpId,
        infoSeekId: AppStorage.getStudent().infoseekId,
        childMobility: isCanWalk.value ? 'Can Walk' : 'Can not Walk',
        childMobilityCanNotWalk: selectedMobilityList.value,
        childMobilityCanNotWalkOther: otherMobilityTextField.controller.text,
        studentAmbulant: isAmbulant.value ? 'Yes' : 'No',
        studentAmbulantNo: selectedAmbulantList.value,
        gait: gaitNormal.value ? 'Normal' : 'Abnormal',
        gaitAbnormal: selectedGaitList.value,
        gaitAbnormalLimp: !gaitLowerLimb.value
            ? "Lower limb length discrepancy"
            : 'Other causes',
        gaitAbnormalLimpOther: otherGaitTextField.controller.text,
        entryTime:
            '${TimeOfDay.fromDateTime(DateTime.now()).hour}:${TimeOfDay.fromDateTime(DateTime.now()).minute}');

    try {
      LoadingUtils.showLoader();
      RepoResponse<GenericResponse> response =
          await repository.submitStationEData(requestData: requestData);

      if (response.data?.status == 200 || response.data?.status == 201) {
        LoadingUtils.hideLoader();
        final id = response.data?.result["id"];
        AppStorage.setStationEId(id);
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

  updateEWearSpineAppearanceSpineMobility(
      {required Function(bool? success) callBack}) async {
    StationEWearUpdateModel requestData = StationEWearUpdateModel(
      wearBraceSupport: StudentInfo.calculateAge() >= 2
          ? isWearBraceSupport.value
              ? 'Yes'
              : 'No'
          : null,
      wearBraceSupportYes:
          StudentInfo.calculateAge() >= 2 ? selectedWearBrace.join(',') : null,
      prosthesis: StudentInfo.calculateAge() >= 2
          ? isProsthesis.value
              ? 'Yes'
              : 'No'
          : null,
      prosthesisYes:
          StudentInfo.calculateAge() >= 2 ? selectedProsthesis.join(',') : null,
      prosthesisYesOther: StudentInfo.calculateAge() >= 2
          ? otherProsthesisTextField.controller.text
          : null,
      spineAppearance: spineNormal.value ? 'Normal' : 'Abnormal',
      spineAppearanceAbnormal: selectedSpineAppearance.value,
      spineAppearanceAbnormalOther: otherSpineTextField.controller.text,
      shoulderGriddleAppearance: shoulderNormal.value ? 'Normal' : 'Abnormal',
      shoulderGriddleAppearanceAbnormal: selectedShoulderAppearance.join(','),
      shoulderGriddleAppearanceAbnormalOther:
          otherShoulderTextField.controller.text,
      spineMobility:
          spineMobilityNormal.value ? 'Normal' : 'Restricted movement',
      spineMobilityRestrictedMovement: selectedSpineMobility.value,
      neckMobility: neckMobilityNormal.value ? 'Normal' : 'Restricted movement',
      neckMobilityRestrictedMovement: selectedNeckMobility.value,
    );

    try {
      if (AppStorage.isStationEIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response =
            await repository.updateEWearSpineAppearanceSpineMobility(
                requestData: requestData, id: AppStorage.getStationEId());

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

  updateEUpperLimbRightLeft({required Function(bool? success) callBack}) async {
    UpperLimbRightRequest requestData = UpperLimbRightRequest(
      uLRightAppearance:
          upperLimbAppearanceRightNormal.value ? "Normal" : "Abnormal",
      uLRightAppearanceAbnormal: selectedUpperLimbAppearanceRight.join(','),
      uLRightMotorFunctionTone: selectedUpperLimbMotorFunctionRight.value,
      uLRightMotorFunctionRangeOfMovement:
          rangeOfMovementNormalUpperLimbRight.value ? "Normal" : "Abnormal",
      uLRightMFRMAbnormal:
          hyperFlexibleUpperLimbRight.value ? "Hyper Flexible" : "Restricted",
      uLRightMFRMAbnormalHyperFlexible:
          selectedHyperFlexibleUpperLimbRight.join(','),
      uLRightMFRMAbnormalRestricted: selectedRestrictedUpperLimbRight.value,
      uLRightMotorFunctionStrength: '${upperAgeUpperLimbRight.value.toInt()}',
      uLRightDeepTendonReflexesBiceps:
          bicepsNormalUpperLimbRight.value ? "Normal [Brisk]" : "Abnormal",
      uLRightDTRBicepsAbnormal: selectedBicepsUpperLimbRight.value,
      uLRightDeepTendonReflexesRadial:
          radialNormalUpperLimbRight.value ? "Normal [Brisk]" : "Abnormal",
      uLRightDTRRadialAbnormal: selectedRadialUpperLimbRight.value,
      uLRightDeepTendonReflexesSensoryFunction:
          sensoryFunctionAllNormalUpperLimbRight.value
              ? "All Normal"
              : "Abnormal",
      uLRightDTRSFAbnormal: selectedSensoryFunctionRight.join(','),
      uLRightDTRSFAbnormalTouch: selectedTouchAbnormalUpperLimbRight.value,
      uLRightDTRSFAbnormalPainPresent:
          upperAgeFirstUpperLimbRight.value.toInt(),
      uLRightDTRSFAbnormalPressureAbnormal: false,
      uLRightDTRSFAbnormalTendernessPresent:
          upperAgeSecondUpperLimbRight.value.toInt(),
      uLLeftAppearance:
          upperLimbAppearanceLeftNormal.value ? "Normal" : "Abnormal",
      uLLeftAppearanceAbnormal: selectedUpperLimbAppearanceLeft.join(','),
      uLLeftMotorFunctionTone: selectedUpperLimbMotorFunctionLeft.value,
      uLLeftMotorFunctionRangeOfMovement:
          rangeOfMovementNormalUpperLimbLeft.value ? "Normal" : "Abnormal",
      uLLeftMFRMAbnormal:
          hyperFlexibleUpperLimbLeft.value ? "Hyper Flexible" : "Restricted",
      uLLeftMFRMAbnormalHyperFlexible:
          selectedHyperFlexibleUpperLimbLeft.join(','),
      uLLeftMFRMAbnormalRestricted: selectedRestrictedUpperLimbLeft.value,
      uLLeftMotorFunctionStrength: '${upperAgeUpperLimbLeft.value.toInt()}',
      uLLeftDeepTendonReflexesBiceps:
          bicepsNormalUpperLimbLeft.value ? "Normal [Brisk]" : "Abnormal",
      uLLeftDTRBicepsAbnormal: selectedBicepsUpperLimbLeft.value,
      uLLeftDeepTendonReflexesRadial:
          radialNormalUpperLimbLeft.value ? "Normal [Brisk]" : "Abnormal",
      uLLeftDTRRadialAbnormal: selectedRadialUpperLimbLeft.value,
      uLLeftDeepTendonReflexesSensoryFunction:
          sensoryFunctionAllNormalUpperLimbLeft.value
              ? "All Normal"
              : "Abnormal",
      uLLeftDTRSFAbnormal: selectedSensoryFunctionLeft.join(','),
      uLLeftDTRSFAbnormalTouch: selectedTouchAbnormalUpperLimbLeft.value,
      uLLeftDTRSFAbnormalPainPresent: upperAgeFirstUpperLimbLeft.value.toInt(),
      uLLeftDTRSFAbnormalPressureAbnormal: false,
      uLLeftDTRSFAbnormalTendernessPresent:
          upperAgeSecondUpperLimbLeft.value.toInt(),
    );

    try {
      if (AppStorage.isStationEIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response =
            await repository.updateEUpperLimb(
                requestData: requestData, id: AppStorage.getStationEId());

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

  updateELowerLimbRightLeft({required Function(bool? success) callBack}) async {
    LowerLimbRequest requestData = LowerLimbRequest(
        lLRightAppearance:
            lowerLimbAppearanceRightNormal.value ? "Normal" : "Abnormal",
        lLRightAppearanceAbnormal: selectedLowerLimbAppearanceRight.join(','),
        lLRightMotorFunctionTone: selectedLowerLimbMotorFunctionRight.value,
        lLRightMotorFunctionRangeOfMovement:
            rangeOfMovementNormalLowerLimbRight.value ? "Normal" : "Abnormal",
        lLRightMotorFunctionStrength: '${upperAgeLowerLimbRight.value.toInt()}',
        lLRightMotorFunctionKnee:
            radialNormalLowerLimbRight.value ? "Normal [Brisk]" : "Abnormal",
        lLRightMotorFunctionKneeAbnormal: selectedRadialLowerLimbRight.value,
        lLRightDeepTendonReflexesSensoryFunction:
            sensoryFunctionAllNormalLowerLimbRight.value
                ? "All Normal"
                : "Abnormal",
        lLRightDTRSFAbnormal: selectedSensoryFunctionLowerRight.join(','),
        lLRightDTRSFAbnormalTouch: selectedTouchAbnormalLowerLimbRight.value,
        lLRightDTRSFAbnormalPainPresent:
            upperAgeFirstLowerLimbRight.value.toInt(),
        lLRightDTRSFAbnormalPressureAbnormal: false,
        lLRightDTRSFAbnormalTendernessPresent:
            upperAgeSecondLowerLimbRight.value.toInt(),
        lLLeftAppearance:
            lowerLimbAppearanceLeftNormal.value ? "Normal" : "Abnormal",
        lLLeftAppearanceAbnormal: selectedLowerLimbAppearanceLeft.join(','),
        lLLeftMotorFunctionTone: selectedLowerLimbMotorFunctionLeft.value,
        lLLeftMotorFunctionRangeOfMovement:
            rangeOfMovementNormalLowerLimbLeft.value ? "Normal" : "Abnormal",
        lLLeftMotorFunctionStrength: '${upperAgeLowerLimbLeft.value.toInt()}',
        lLLeftMotorFunctionKnee:
            radialNormalLowerLimbLeft.value ? "Normal [Brisk]" : "Abnormal",
        lLLeftMotorFunctionKneeAbnormal: selectedRadialLowerLimbLeft.value,
        lLLeftDeepTendonReflexesSensoryFunction:
            sensoryFunctionAllNormalLowerLimbLeft.value
                ? "All Normal"
                : "Abnormal",
        lLLeftDTRSFAbnormal: selectedSensoryFunctionLowerLeft.join(','),
        lLLeftDTRSFAbnormalTouch: selectedTouchAbnormalLowerLimbLeft.value,
        lLLeftDTRSFAbnormalPainPresent:
            upperAgeFirstLowerLimbLeft.value.toInt(),
        lLLeftDTRSFAbnormalPressureAbnormal: false,
        lLLeftDTRSFAbnormalTendernessPresent:
            upperAgeSecondLowerLimbLeft.value.toInt());

    try {
      if (AppStorage.isStationEIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response =
            await repository.updateELowerLimb(
                requestData: requestData, id: AppStorage.getStationEId());

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

  updateEOther({required Function(bool? success) callBack}) async {
    OtherObservationsStationERequest requestData = OtherObservationsStationERequest(
        otherObservations: otherObservations.controller.text,
        specialistReferralNeeded:
            isSpecialistReferralNeeded.value ? 'Yes' : "No",
        specialistReferralNeededType: selectedReferralType.join(','),
        specialistReferralNeededFlag: selectedReFlag.value,
        other: otherWrapper.controller.text,
        completed: "Yes",
        endTime:
            '${TimeOfDay.fromDateTime(DateTime.now()).hour}:${TimeOfDay.fromDateTime(DateTime.now()).minute}');

    try {
      if (AppStorage.isStationEIdExists()) {
        RepoResponse<GenericResponse> response = await repository.updateEOther(
            requestData: requestData, id: AppStorage.getStationEId());

        if (response.data?.status == 200 || response.data?.status == 201) {
          await getStationEDetails();
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

  Future<bool> getStationEDetails() async {
    try {
      RepoResponse<GenericResponse> response =
          await repository.getStationEDetails(id: AppStorage.getStationEId());
      if (response.data?.status == 200 || response.data?.status == 201) {
        var data = response.data?.result as List;
        stationEResponse.value = StationEGetModel.fromJson(data.first);
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
