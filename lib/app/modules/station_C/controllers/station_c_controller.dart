import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/model/dto/response.dart';
import 'package:nivish/app/data/model/response/generic_response.dart';
import 'package:nivish/app/data/model/resuest/StationCExtraOcularRequest.dart';
import 'package:nivish/app/data/model/resuest/StationCOtherObservationRequest.dart';
import 'package:nivish/app/data/model/resuest/StationCRequest.dart';
import 'package:nivish/app/data/model/resuest/StationCVisualActivityRequest.dart';
import 'package:nivish/app/data/model/resuest/StationCVisualChallengeRequest.dart';
import 'package:nivish/app/data/repository/stationARepository.dart';
import 'package:nivish/app/modules/home/controllers/home_controller.dart';
import 'package:nivish/app/modules/station_C/controllers/station_C_visually_right_eye_controller.dart';
import 'package:nivish/app/routes/app_routes.dart';
import 'package:nivish/base/base_controller.dart';
import 'package:nivish/utils/app_utils.dart';
import 'package:nivish/utils/loading/loading_utils.dart';
import 'package:nivish/utils/storage/storage_utils.dart';
import 'package:nivish/widgets/Age_Gender_validations.dart';
import 'package:nivish/widgets/dialog/confirmation_dialog.dart';
import 'package:nivish/widgets/finnal_confirmation_widget.dart';
import '../../../../utils/helper/text_field_wrapper.dart';
import '../../../data/model/resuest/StationCGetModel.dart';
import '../tabs/common_widget/final_preview_widget.dart';
import '../widget/C_preview_model.dart';

class StationCController extends BaseController<AllStationRepository> {
  VisuallyChallengedController controller1 =
      Get.put(VisuallyChallengedController());

  Rx<StationCGetModel?> stationCResponse = Rx<StationCGetModel?>(null);

  TextFieldWrapper otherObservations = TextFieldWrapper();
  TextFieldWrapper otherWrapper = TextFieldWrapper();
  TextFieldWrapper dateRight = TextFieldWrapper();
  TextFieldWrapper dateLeft = TextFieldWrapper();

  final visualAcuityFormKey = GlobalKey<FormState>();

  ///

  // problem tab

  RxBool isProblemReadingBook = RxBool(false);
  RxBool isProblemReadingBlackBoard = RxBool(false);
  RxBool isNightVision = RxBool(false);
  RxBool shouldCorrectVision = RxBool(false);

  RxList<String> visionCorrectedList = RxList([
    'Glasses',
    "Lenses",
    "Surgical",
  ]);

  RxList<String> selectedVisionCorrected = RxList();

  // Extra ocular
  ////// right eye
  RxBool isNormalMovementRE = RxBool(true);
  RxBool isStrabismusRE = RxBool(false);
  RxBool isDroppingLidRE = RxBool(false);
  RxBool isRestrictMobilityRE = RxBool(false);
  RxBool isNystagumsRE = RxBool(false);
  RxBool isBulgingRE = RxBool(false);
  ////// left eye
  RxBool isNormalMovementLE = RxBool(true);
  RxBool isStrabismusLE = RxBool(false);
  RxBool isDroppingLidLE = RxBool(false);
  RxBool isRestrictMobilityLE = RxBool(false);
  RxBool isNystagumsLE = RxBool(false);
  RxBool isBulgingLE = RxBool(false);
  RxBool isEnucleationLE = RxBool(false);

  // visually Challenge
  RxBool isLeftEye = RxBool(false);

  // visual activity
  RxBool isColorBlind = RxBool(false);
  List<String> colorBlindOptionList = [
    "Red-Green Partial",
    "Blue-Green Partial",
    "Total Colour Blindness"
  ];

  TextFieldWrapper distantRightVisionWrapper = TextFieldWrapper();
  TextFieldWrapper distantLeftVisionWrapper = TextFieldWrapper();
  TextFieldWrapper nearRightVisionWrapper = TextFieldWrapper();
  TextFieldWrapper nearLeftVisionWrapper = TextFieldWrapper();
  TextFieldWrapper distantRightWithOutGlassVisionWrapper = TextFieldWrapper();
  TextFieldWrapper distantLeftWithOutGlassVisionWrapper = TextFieldWrapper();
  TextFieldWrapper nearRightWithOutGlassVisionWrapper = TextFieldWrapper();
  TextFieldWrapper nearLeftWithOutGlassVisionWrapper = TextFieldWrapper();

  RxString selectedColorBlindOption = RxString('Red-Green Partial');

  // other observation
  RxBool isSpecialistReferralNeeded = RxBool(false);

  RxList<String> selectedReferralType = RxList();

  ///

  RxString selectedReFlag = RxString('');

  RxString selectedNormalEyeMovementRight = RxString('');
  RxString selectedStrabismusRight = RxString('');
  RxString selectedDroppingLidRight = RxString('');
  RxString selectedRestrictedMobilityRight = RxString('');
  RxString selectedNystagmusRight = RxString('');
  RxString selectedBulgingRight = RxString('');

  RxString selectedNormalEyeMovementLeft = RxString('');
  RxString selectedStrabismusLeft = RxString('');
  RxString selectedDroppingLidLeft = RxString('');
  RxString selectedRestrictedMobilityLeft = RxString('');
  RxString selectedNystagmusLeft = RxString('');
  RxString selectedBulgingLeft = RxString('');

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

  void onCheckedSpecialistReferralNeeded() {
    isSpecialistReferralNeeded.toggle();
  }

  void onSelectReferralFlag({required String name}) {
    if (selectedReFlag.value == name) {
      selectedReFlag.value = '';
    } else {
      selectedReFlag.value = name;
    }
    referralFlagList.refresh();
  }

  /// Visually Acuity

  RxBool colorBlindness = RxBool(false);
  RxBool totalColorBlindness = false.obs;
  RxBool redGreenPartial = false.obs;
  RxBool blueGreenPartial = false.obs;

  RxBool withGlassesLenses = true.obs;
  RxBool withOutGlassesLenses = false.obs;
  RxBool isWithOutGlassesChecked = false.obs;

  void onCheckedColorBlindness() {
    colorBlindness.toggle();
  }

  ///station tab

  RxInt selectedTabIdx = 0.obs;

  void onSaveAndNext() async {
    switch (selectedTabIdx.value) {
      case 0:
        {
          if (StudentInfo.calculateAge() < 2) {
            await submitStationCData(callBack: (success) {
              if (success ?? false) {
                updateExtraOcular(callBack: (success) {
                  if (success ?? false) selectedTabIdx.value = 5;
                });
              }
            });
          } else {
            await submitStationCData(callBack: (success) {
              if (success ?? false) selectedTabIdx.value = 1;
            });
          }
        }
        break;
      case 1:
        {
          await updateExtraOcular(callBack: (success) {
            if (success ?? false) selectedTabIdx.value = 2;
          });
        }
        break;
      case 2:
        if (controller1.isRE.value == true) {
          if (controller1.isEnucleationRE.value == true &&
              controller1.dateRE.controller.text == '') {
            AppUtils.showSnackBar(
                'Please select exact values for Enucleation - Yes - When Remove?');
          } else if (controller1.isEnucleationRE.value == true &&
              controller1.selectedYesRemoveRE.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Enucleation - Yes - Why Remove?');
          } else if (controller1.isEnucleationRE.value == true &&
              controller1.selectedYesRemoveRE.contains('Other') &&
              controller1.typeHereRE.controller.text == '') {
            AppUtils.showSnackBar(
                'Please select exact values for Enucleation - Yes - Why Remove? - Other');
          } else if (controller1.isEnucleationRE.value == false &&
              controller1.selectedContractRe.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Enucleation - No');
          } else {
            selectedTabIdx.value = 3;
          }
        } else {
          selectedTabIdx.value = 3;
        }
        break;
      case 3:
        if (controller1.isLE.value == true) {
          if (controller1.isEnucleationLE.value == true &&
              controller1.dateLE.controller.text == '') {
            AppUtils.showSnackBar(
                'Please select exact values for Enucleation - No - When Remove?');
          } else if (controller1.isEnucleationLE.value == true &&
              controller1.selectedYesRemoveLE.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Enucleation - No - Why Remove?');
          } else if (controller1.isEnucleationLE.value == true &&
              controller1.selectedYesRemoveLE.contains('Other') &&
              controller1.typeHereLE.controller.text == '') {
            AppUtils.showSnackBar(
                'Please select exact values for Enucleation - No - Why Remove? - Other');
          } else if (controller1.isEnucleationLE.value == false &&
              controller1.selectedContractLe.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Enucleation - No');
          } else {
            await updateVisuallyChallenged(callBack: (success) {
              if (success ?? false) selectedTabIdx.value = 4;
            });
          }
        } else {
          await updateVisuallyChallenged(callBack: (success) {
            if (success ?? false) selectedTabIdx.value = 4;
          });
        }
        break;
      case 4:
        if (isColorBlind.value && selectedColorBlindOption.value.isEmpty) {
          AppUtils.showSnackBar(
              'Please select exact values for Color Blindness');
        } else {
          await updateVisualAcuity(callBack: (success) {
            if (success ?? false) selectedTabIdx.value = 5;
          });
        }
        break;
      case 5:
        if (isSpecialistReferralNeeded.value &&
            (selectedReferralType.isEmpty || selectedReFlag.isEmpty)) {
          AppUtils.showSnackBar('Please select exact values for Type and Flag');
        } else if (selectedReferralType.contains('Other') &&
            otherWrapper.controller.text.isEmpty) {
          AppUtils.showSnackBar(
              'Please enter text for the Specialist Referral Recommended - Type - Other field');
        } else {
          await updateOtherObservation(callBack: (success) {
            if (success ?? false) selectedTabIdx.value = 5;
          });

          StationCPreviewModel dataValue = StationCPreviewModel(
            problemToReadingBooksValue:
                stationCResponse.value?.problemReadingBooks ?? '',
            // isProblemReadingBook.value ? 'Yes' : 'No',
            problemReadingBlackBoardValue:
                stationCResponse.value?.problemReadingBlackboard ?? '',

            // isProblemReadingBlackBoard.value ? 'Yes' : 'No',
            nightVisionValue: stationCResponse.value?.nightVision ?? '',

            // isNightVision.value ? 'Normal' : 'Abnormal',
            visionCorrectedValue: stationCResponse.value?.visionCorrected ?? '',

            // shouldCorrectVision.value ? "Yes" : "No",
            visionCorrectedYesValue:
                stationCResponse.value?.visionCorrectedYes ?? '',
            normalMovementREValue:
                stationCResponse.value?.extraOcularRightNormalEyeMovement ?? '',

            // isNormalMovementRE.value ? "Yes" : "No",
            strabismusREValue:
                stationCResponse.value?.extraOcularRightStrabismus ?? '',

            // isStrabismusRE.value ? "Yes" : "No",
            droppingLidREValue:
                stationCResponse.value?.extraOcularRightDroopingLid ?? '',

            // isDroppingLidRE.value ? "Yes" : "No",
            restrictMobilityREValue:
                stationCResponse.value?.extraOcularRightRestrictedMobility ??
                    '',

            // isRestrictMobilityRE.value ? "Yes" : "No",
            nystagumsREValue:
                stationCResponse.value?.extraOcularRightNystagmus ?? '',

            // isNystagumsRE.value ? "Yes" : "No",
            bulgingREValue:
                stationCResponse.value?.extraOcularRightBulging ?? '',

            // isBulgingRE.value ? "Yes" : "No",
            normalMovementLEValue:
                stationCResponse.value?.extraOcularLeftNormalEyeMovement ?? '',

            // isNormalMovementLE.value ? "Yes" : "No",
            strabismusLEValue:
                stationCResponse.value?.extraOcularLeftStrabismus ?? '',

            // isStrabismusLE.value ? "Yes" : "No",
            droppingLidLEValue:
                stationCResponse.value?.extraOcularLeftDroopingLid ?? '',

            // isDroppingLidLE.value ? "Yes" : "No",
            restrictMobilityLEValue:
                stationCResponse.value?.extraOcularLeftRestrictedMobility ?? '',

            // isRestrictMobilityLE.value ? "Yes" : "No",
            nystagumsLEValue:
                stationCResponse.value?.extraOcularLeftNystagmus ?? '',

            // isNystagumsLE.value ? "Yes" : "No",
            bulgingLEValue:
                stationCResponse.value?.extraOcularLeftBulging ?? '',

            // isBulgingLE.value ? "Yes" : "No",
            visuallyChallengedControllerREValue:
                stationCResponse.value?.visuallyChallengedRightEye ?? '',
            // controller1.isRE.value ? "Yes" : "No",

            visuallyChallengedRightEyeEnucleationValue:
                stationCResponse.value?.visuallyChallengedRightEyeEnucleation ??
                    '',

            visuallyChallengedRightEyeEnucleationWhenRemovedValue:
                stationCResponse.value
                        ?.visuallyChallengedRightEyeEnucleationWhenRemoved ??
                    '',

            visuallyChallengedRightEyeEnucleationWhyRemovedValue:
                stationCResponse.value
                        ?.visuallyChallengedRightEyeEnucleationWhyRemoved ??
                    '',

            visuallyChallengedRightEyeEnucleationWhyRemovedOtherValue:
                stationCResponse.value
                        ?.visuallyChallengedRightEyeEnucleationWhyRemovedOther ??
                    '',

            vCRightEyeEnucleationArtificialEyeUsedValue: stationCResponse
                    .value?.vCRightEyeEnucleationArtificialEyeUsed ??
                '',

            visuallyChallengedRightEyeEnucleationCataractValue: stationCResponse
                    .value?.visuallyChallengedRightEyeEnucleationCataract ??
                '',

            visuallyChallengedRightEyeEnucleationCornealOpacityValue:
                stationCResponse.value
                        ?.visuallyChallengedRightEyeEnucleationCornealOpacity ??
                    '',

            visuallyChallengedRightEyeEnucleationGlaucomaValue: stationCResponse
                    .value?.visuallyChallengedRightEyeEnucleationGlaucoma ??
                '',

            visuallyChallengedRightEyeEnucleationPhthisisBulbiValue:
                stationCResponse.value
                        ?.visuallyChallengedRightEyeEnucleationPhthisisBulbi ??
                    '',

            visuallyChallengedControllerLEValue:
                stationCResponse.value?.visuallyChallengedLeftEye ?? '',
            // controller1.isLE.value ? "Yes" : "No",

            visuallyChallengedLeftEyeEnucleationValue:
                stationCResponse.value?.visuallyChallengedLeftEyeEnucleation ??
                    '',

            visuallyChallengedLeftEyeEnucleationWhenRemovedValue:
                stationCResponse.value
                        ?.visuallyChallengedLeftEyeEnucleationWhenRemoved ??
                    '',

            visuallyChallengedLeftEyeEnucleationWhyRemovedValue:
                stationCResponse.value
                        ?.visuallyChallengedLeftEyeEnucleationWhyRemoved ??
                    '',

            visuallyChallengedLeftEyeEnucleationWhyRemovedOtherValue:
                stationCResponse.value
                        ?.visuallyChallengedLeftEyeEnucleationWhyRemovedOther ??
                    '',

            vCLeftEyeEnucleationArtificialEyeUsedValue:
                stationCResponse.value?.vCLeftEyeEnucleationArtificialEyeUsed ??
                    '',

            visuallyChallengedLeftEyeEnucleationCataractValue: stationCResponse
                    .value?.visuallyChallengedLeftEyeEnucleationCataract ??
                '',

            visuallyChallengedLeftEyeEnucleationCornealOpacityValue:
                stationCResponse.value
                        ?.visuallyChallengedLeftEyeEnucleationCornealOpacity ??
                    '',

            visuallyChallengedLeftEyeEnucleationGlaucomaValue: stationCResponse
                    .value?.visuallyChallengedLeftEyeEnucleationGlaucoma ??
                '',

            visuallyChallengedLeftEyeEnucleationPhthisisBulbiValue:
                stationCResponse.value
                        ?.visuallyChallengedLeftEyeEnucleationPhthisisBulbi ??
                    '',
            visualAcuityValue: stationCResponse.value?.visualAcuity ?? '',

            distantVisionWithLensesRightValue: stationCResponse
                    .value?.visualAcuityWithLensesDistantVisionRight ??
                0,

            // '6/${distantRightVisionWrapper.controller.text}',
            distantVisionWithLensesLeftValue: stationCResponse
                    .value?.visualAcuityWithLensesDistantVisionLeft ??
                0,

            // '6/${distantLeftVisionWrapper.controller.text}',
            nearVisionWithLensesRightValue:
                stationCResponse.value?.visualAcuityWithLensesNearVisionRight ??
                    0,

            // '6/${nearRightVisionWrapper.controller.text}',
            nearVisionWithLensesLeftValue:
                stationCResponse.value?.visualAcuityWithLensesNearVisionLeft ??
                    0,

            // '6/${nearLeftVisionWrapper.controller.text}',
            distantVisionWithoutLensesRightValue: stationCResponse
                    .value?.visualAcuityWithoutLensesDistantVisionRight ??
                0,

            distantVisionWithoutLensesLeftValue: stationCResponse
                    .value?.visualAcuityWithoutLensesDistantVisionLeft ??
                0,

            nearVisionWithoutLensesRightValue: stationCResponse
                    .value?.visualAcuityWithoutLensesNearVisionRight ??
                0,

            nearVisionWithoutLensesLeftValue: stationCResponse
                    .value?.visualAcuityWithoutLensesNearVisionLeft ??
                0,

            visualAcuityColorBlindValue:
                stationCResponse.value?.visualAcuityColorBlindness ?? '',

            // isColorBlind.value ? "Yes" : "No",
            visualAcuityColorBlindnessYesValue:
                stationCResponse.value?.visualAcuityColorBlindnessYes ?? '',

            otherObservationsValue:
                stationCResponse.value?.otherObservations ?? '',

            // otherObservations.controller.text,
            specialistReferralNeededValue:
                stationCResponse.value?.specialistReferralNeeded ?? '',

            selectedReferralTypeValue:
                stationCResponse.value?.specialistReferralNeededType ?? '',

            // selectedReferralType.join(', '),
            selectedReFlagValue:
                stationCResponse.value?.specialistReferralNeededFlag ?? '',

            // selectedReFlag.value,
            other: stationCResponse.value?.other ?? '',
          );
          AppUtils.getBottomSheet(
            children: [
              GetBuilder<HomeController>(
                builder: (homeController) => FinalConfirmationWidget(
                  title: "Station C details successfully saved",
                  child: FinalCPreviewWidget(data: dataValue),
                  onEdit: () => Get.back(),
                  onSubmit: () {
                    Get.dialog(ConfirmationDialog(
                      message: 'Doy you want to submit ?',
                      onCancel: () => Get.back(),
                      onConfirm: () async {
                        await AppStorage.clearStationCid();
                        await AppStorage.clearStudent();
                        clearFormData();
                        Get.offAllNamed(Routes.DASHBOARD);
                        AppUtils.showSnackBar('Created Successfully');
                        // Get.back();
                        // await updateOtherObservation(
                        //   callBack: (success) async {
                        //     if (success ?? false) {
                        //       selectedTabIdx.value = 0;
                        //       await Get.find<DashboardController>()
                        //           .resetController();
                        //       clearFormData();
                        //       Get.offAllNamed(Routes.DASHBOARD);
                        //       AppUtils.showSnackBar('Created Successfully');
                        //     }
                        //   },
                        // );
                      },
                    ));
                  },
                ),
              )
            ],
          );
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
      } else if (selectedTabIdx.value == 5 && StudentInfo.calculateAge() < 2) {
        selectedTabIdx.value = 0;
      } else {
        selectedTabIdx.value -= 1;
      }
    }
  }

  void toggleEnucleation({required bool value}) {
    isEnucleationLE.value = value;
  }

  /// api part
  submitStationCData({required Function(bool? success) callBack}) async {
    StationCRequest requestData = StationCRequest(
      hcid: AppStorage.getUser().stations?.first.hcid,
      hcpid: AppStorage.getUser().stations?.first.hcpId,
      infoseekId: AppStorage.getStudent().infoseekId,
      problemReadingBooks: StudentInfo.calculateAge() >= 2
          ? (isProblemReadingBook.value ? 'Yes' : 'No')
          : null,
      problemReadingBlackboard: StudentInfo.calculateAge() >= 2
          ? (isProblemReadingBlackBoard.value ? 'Yes' : 'No')
          : null,
      nightVision: StudentInfo.calculateAge() >= 2
          ? (isNightVision.value ? 'Normal' : 'Abnormal')
          : null,
      visionCorrected: StudentInfo.calculateAge() >= 2
          ? (shouldCorrectVision.value ? 'Yes' : 'No')
          : null,
      visionCorrectedYes: StudentInfo.calculateAge() >= 2
          ? (selectedVisionCorrected.join(','))
          : null,
      entryTime:
          '${TimeOfDay.fromDateTime(DateTime.now()).hour}:${TimeOfDay.fromDateTime(DateTime.now()).minute}',
    );

    try {
      LoadingUtils.showLoader();
      RepoResponse<GenericResponse> response =
          await repository.submitStationCData(requestData: requestData);

      if (response.data?.status == 200 || response.data?.status == 201) {
        LoadingUtils.hideLoader();
        final id = response.data?.result["id"];
        AppStorage.setStationCId(id);
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

  updateExtraOcular({required Function(bool? success) callBack}) async {
    StationCExtraOcularRequest requestData = StationCExtraOcularRequest(
      extraOcularRightNormalEyeMovement:
          isNormalMovementRE.value ? 'Yes' : 'No',
      extraOcularRightStrabismus: isStrabismusRE.value ? 'Yes' : 'No',
      extraOcularRightDroopingLid: isDroppingLidRE.value ? 'Yes' : 'No',
      extraOcularRightRestrictedMobility:
          isRestrictMobilityRE.value ? 'Yes' : 'No',
      extraOcularRightNystagmus: isNystagumsRE.value ? 'Yes' : 'No',
      extraOcularRightBulging: isBulgingRE.value ? 'Yes' : 'No',
      extraOcularLeftNormalEyeMovement: isNormalMovementLE.value ? 'Yes' : 'No',
      extraOcularLeftStrabismus: isStrabismusLE.value ? 'Yes' : 'No',
      extraOcularLeftDroopingLid: isDroppingLidLE.value ? 'Yes' : 'No',
      extraOcularLeftRestrictedMobility:
          isRestrictMobilityLE.value ? 'Yes' : 'No',
      extraOcularLeftNystagmus: isNystagumsLE.value ? 'Yes' : 'No',
      extraOcularLeftBulging: isBulgingLE.value ? 'Yes' : 'No',
    );

    try {
      if (AppStorage.isStationCIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response =
            await repository.updateExtraOcular(
                requestData: requestData, id: AppStorage.getStationCId());

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

  updateVisuallyChallenged({required Function(bool? success) callBack}) async {
    StationCVisuallyChallengedRequest requestData =
        StationCVisuallyChallengedRequest(
      visuallyChallengedRightEye: controller1.isRE.value ? "Yes" : "No",
      visuallyChallengedRightEyeEnucleation:
          controller1.isEnucleationRE.value ? "Yes" : "No",
      visuallyChallengedRightEyeEnucleationWhenRemoved:
          controller1.dateRE.controller.text,
      visuallyChallengedRightEyeEnucleationWhyRemoved:
          controller1.selectedYesRemoveRE.join(','),
      visuallyChallengedRightEyeEnucleationWhyRemovedOther:
          controller1.typeHereRE.controller.text,
      vCRightEyeEnucleationArtificialEyeUsed:
          controller1.isArtificialRE.value ? "Yes" : "No",
      visuallyChallengedRightEyeEnucleationNo:
          controller1.selectedContractRe.join(','),
      visuallyChallengedRightEyeEnucleationCataract:
          controller1.selectedContractRE.value,
      visuallyChallengedRightEyeEnucleationCornealOpacity:
          controller1.selectedCornealOpacityRE.value,
      visuallyChallengedRightEyeEnucleationGlaucoma:
          controller1.selectedGlaucomaRE.value,
      visuallyChallengedRightEyeEnucleationPhthisisBulbi:
          controller1.selectedPhthisisBulbitRE.value,
      visuallyChallengedLeftEye: controller1.isLE.value ? "Yes" : "No",
      visuallyChallengedLeftEyeEnucleation:
          controller1.isEnucleationLE.value ? "Yes" : "No",
      visuallyChallengedLeftEyeEnucleationWhenRemoved:
          controller1.dateLE.controller.text,
      visuallyChallengedLeftEyeEnucleationWhyRemoved:
          controller1.selectedYesRemoveLE.join(','),
      visuallyChallengedLeftEyeEnucleationWhyRemovedOther:
          controller1.typeHereLE.controller.text,
      vCLeftEyeEnucleationArtificialEyeUsed:
          controller1.isArtificialLE.value ? "Yes" : "No",
      visuallyChallengedLeftEyeEnucleationNo: controller1.noLEList.join(','),
      visuallyChallengedLeftEyeEnucleationCataract:
          controller1.selectedContractLE.value,
      visuallyChallengedLeftEyeEnucleationCornealOpacity:
          controller1.selectedCornealOpacityLE.value,
      visuallyChallengedLeftEyeEnucleationGlaucoma:
          controller1.selectedGlaucomaLE.value,
      visuallyChallengedLeftEyeEnucleationPhthisisBulbi:
          controller1.selectedPhthisisBulbitLE.value,
    );

    try {
      if (AppStorage.isStationCIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response =
            await repository.updateVisuallyChallenged(
                requestData: requestData, id: AppStorage.getStationCId());

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

  updateVisualAcuity({required Function(bool? success) callBack}) async {
    if (visualAcuityFormKey.currentState!.validate()) {
      StationCVisualActivityRequest requestData = StationCVisualActivityRequest(
          visualAcuity: 'yes',
          visualAcuityWithLensesDistantVisionLeft:
              int.parse(distantLeftVisionWrapper.controller.text),
          visualAcuityWithLensesDistantVisionRight:
              int.parse(distantRightVisionWrapper.controller.text),
          visualAcuityWithLensesNearVisionLeft:
              int.parse(nearLeftVisionWrapper.controller.text),
          visualAcuityWithLensesNearVisionRight:
              int.parse(nearRightVisionWrapper.controller.text),
          visualAcuityWithoutLensesDistantVisionLeft: distantLeftWithOutGlassVisionWrapper
                  .controller.text.isNotEmpty
              ? int.parse(distantLeftWithOutGlassVisionWrapper.controller.text)
              : null,
          visualAcuityWithoutLensesDistantVisionRight:
              distantRightWithOutGlassVisionWrapper.controller.text.isNotEmpty
                  ? int.parse(
                      distantRightWithOutGlassVisionWrapper.controller.text)
                  : null,
          visualAcuityWithoutLensesNearVisionLeft:
              nearLeftWithOutGlassVisionWrapper.controller.text.isNotEmpty
                  ? int.parse(nearLeftWithOutGlassVisionWrapper.controller.text)
                  : null,
          visualAcuityWithoutLensesNearVisionRight:
              nearRightWithOutGlassVisionWrapper.controller.text.isNotEmpty
                  ? int.parse(nearRightWithOutGlassVisionWrapper.controller.text)
                  : null,
          visualAcuityColorBlindness: isColorBlind.value ? "Yes" : "No",
          visualAcuityColorBlindnessYes: selectedColorBlindOption.value);
      try {
        if (AppStorage.isStationCIdExists()) {
          RepoResponse<GenericResponse> response =
              await repository.updateVisuallyActivity(
                  requestData: requestData, id: AppStorage.getStationCId());

          if (response.data?.status == 200 || response.data?.status == 201) {
            callBack.call(true);
          } else {
            callBack.call(false);
            AppUtils.showErrorMessage(response);
          }
        }
      } catch (exp) {
        callBack.call(false);
        print(exp);
      }
    }
  }

  updateOtherObservation({required Function(bool? success) callBack}) async {
    StationCOtherObservationRequest requestData =
        StationCOtherObservationRequest(
      otherObservations: otherObservations.controller.text,
      other: otherWrapper.controller.text,
      specialistReferralNeeded: isSpecialistReferralNeeded.value ? 'Yes' : 'No',
      specialistReferralNeededType: selectedReferralType.join(','),
      specialistReferralNeededFlag: selectedReFlag.value,
      completed: 'Yes',
      endTime:
          '${TimeOfDay.fromDateTime(DateTime.now()).hour}:${TimeOfDay.fromDateTime(DateTime.now()).minute}',
    );

    try {
      if (AppStorage.isStationCIdExists()) {
        RepoResponse<GenericResponse> response =
            await repository.updateOtherObservation(
                requestData: requestData, id: AppStorage.getStationCId());

        if (response.data?.status == 200 || response.data?.status == 201) {
          await getStationCDetails();
          callBack.call(true);
        } else {
          callBack.call(false);
          AppUtils.showErrorMessage(response);
        }
      }
    } catch (exp) {
      callBack.call(false);
      print(exp);
    }
  }

  updateSubmitStationCData({required Function(bool? success) callBack}) async {
    StationCRequest requestData = StationCRequest(
      infoseekId: AppStorage.getStudent().infoseekId,
      hcid: AppStorage.getUser().stations?.first.hcid,
      hcpid: AppStorage.getUser().stations?.first.hcpId,
      entryTime:
          '${TimeOfDay.fromDateTime(DateTime.now()).hour}:${TimeOfDay.fromDateTime(DateTime.now()).minute}',
      problemReadingBooks: isProblemReadingBook.value ? 'Yes' : 'No',
      problemReadingBlackboard: isProblemReadingBlackBoard.value ? 'Yes' : 'No',
      nightVision: isNightVision.value ? 'Normal' : 'Abnormal',
      visionCorrected: shouldCorrectVision.value ? 'Yes' : 'No',
      visionCorrectedYes: selectedVisionCorrected.join(','),
    );
    try {
      if (AppStorage.isStationCIdExists()) {
        RepoResponse<GenericResponse> response =
            await repository.updateSubmitCDetails(
                requestData: requestData, id: AppStorage.getStationCId());

        if (response.data?.status == 200 || response.data?.status == 201) {
          callBack.call(true);
        } else {
          callBack.call(false);
          AppUtils.showErrorMessage(response);
        }
      }
    } catch (exp) {
      callBack.call(false);
      print(exp);
    }
  }

  void clearFormData() {
    //
    selectedTabIdx.value = 0;
    //
    selectedReferralType.clear();
    selectedReFlag.value = '';
    otherObservations.controller.clear();
    otherWrapper.controller.clear();
    isSpecialistReferralNeeded.value = false;
    //
    isProblemReadingBook.value = false;
    isProblemReadingBlackBoard.value = false;
    isNightVision.value = false;
    shouldCorrectVision.value = false;
    selectedVisionCorrected.clear();
    //
    isNormalMovementRE.value = true;
    isStrabismusRE.value = false;
    isDroppingLidRE.value = false;
    isRestrictMobilityRE.value = false;
    isNystagumsRE.value = false;
    isBulgingRE.value = false;
    //
    isNormalMovementLE.value = true;
    isStrabismusLE.value = false;
    isDroppingLidLE.value = false;
    isRestrictMobilityLE.value = false;
    isNystagumsLE.value = false;
    isBulgingLE.value = false;
    //
    controller1.isEnucleationRE.value = false;
    controller1.selectedYesRemoveRE.clear();
    controller1.selectedContractRe.clear();
    controller1.isRE.value = false;
    //
    controller1.isEnucleationLE.value = false;
    controller1.selectedYesRemoveLE.clear();
    controller1.selectedContractLe.clear();
    controller1.isLE.value = false;
    //
    distantRightVisionWrapper.controller.text = '';
    distantLeftVisionWrapper.controller.text = '';
    nearRightVisionWrapper.controller.text = '';
    nearLeftVisionWrapper.controller.text = '';
    distantRightWithOutGlassVisionWrapper.controller.text = '';
    distantLeftWithOutGlassVisionWrapper.controller.text = '';
    nearRightWithOutGlassVisionWrapper.controller.text = '';
    nearLeftWithOutGlassVisionWrapper.controller.text = '';
    isColorBlind.value = false;
    selectedColorBlindOption.value = '';
  }

  Future<bool> getStationCDetails() async {
    try {
      RepoResponse<GenericResponse> response =
          await repository.getStationCDetails(id: AppStorage.getStationCId());
      if (response.data?.status == 200 || response.data?.status == 201) {
        var data = response.data?.result as List;
        stationCResponse.value = StationCGetModel.fromJson(data.first);
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
