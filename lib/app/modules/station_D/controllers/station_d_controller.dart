import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/model/resuest/StationDDetailsUpdate.dart';
import 'package:nivish/app/data/model/resuest/StationDOtherRequest.dart';
import 'package:nivish/app/data/model/resuest/StationDPureRequest.dart';
import 'package:nivish/app/modules/home/controllers/home_controller.dart';
import 'package:nivish/app/modules/station_D/widget/D_preview_model.dart';
import 'package:nivish/base/base_controller.dart';
import 'package:nivish/utils/app_utils.dart';
import 'package:nivish/widgets/finnal_confirmation_widget.dart';
import '../../../../utils/helper/text_field_wrapper.dart';
import '../../../../utils/loading/loading_utils.dart';
import '../../../../utils/storage/storage_utils.dart';
import '../../../../widgets/Age_Gender_validations.dart';
import '../../../../widgets/dialog/confirmation_dialog.dart';
import '../../../data/model/dto/response.dart';
import '../../../data/model/response/generic_response.dart';
import '../../../data/model/resuest/StationDGetModel.dart';
import '../../../data/model/resuest/StationDVisualInsepctionRequest.dart';
import '../../../data/model/resuest/StationDrequest.dart';
import '../../../data/repository/stationARepository.dart';
import '../../../routes/app_routes.dart';
import '../widget/final_preview_widget.dart';
import 'dart:io' as io;

class StationDController extends BaseController<AllStationRepository> {
  Rx<StationDGetModel?> stationDResponse = Rx<StationDGetModel?>(null);

  List<String> allowedExtensions = ['jpg', 'pdf', 'png'];
  final RxList<io.File> attachments = RxList();
  RxString pickedFileName = RxString('');

  TextFieldWrapper yesHearingTextField = TextFieldWrapper();
  TextFieldWrapper yesFluidTextField = TextFieldWrapper();

  TextFieldWrapper otherObservations = TextFieldWrapper();
  TextFieldWrapper otherWrapper = TextFieldWrapper();

  TextFieldWrapper rightEarPinnaWrapper = TextFieldWrapper();
  TextFieldWrapper rightEarCanalWrapper = TextFieldWrapper();
  TextFieldWrapper leftEarPinnaWrapper = TextFieldWrapper();
  TextFieldWrapper leftEarCanalWrapper = TextFieldWrapper();
  TextFieldWrapper anyOtherRelatedWrapper = TextFieldWrapper();

  TextFieldWrapper fiveHundredRightWrapper = TextFieldWrapper();
  TextFieldWrapper thousandRightWrapper = TextFieldWrapper();
  TextFieldWrapper twoThousandRightWrapper = TextFieldWrapper();
  TextFieldWrapper fourThousandRightWrapper = TextFieldWrapper();
  TextFieldWrapper sixThousandRightWrapper = TextFieldWrapper();
  TextFieldWrapper eightThousandRightWrapper = TextFieldWrapper();

  TextFieldWrapper fiveHundredLeftWrapper = TextFieldWrapper();
  TextFieldWrapper thousandLeftWrapper = TextFieldWrapper();
  TextFieldWrapper twoThousandLeftWrapper = TextFieldWrapper();
  TextFieldWrapper fourThousandLeftWrapper = TextFieldWrapper();
  TextFieldWrapper sixThousandLeftWrapper = TextFieldWrapper();
  TextFieldWrapper eightThousandLeftWrapper = TextFieldWrapper();

  RxBool isSpecialistReferralNeeded = RxBool(false);

  RxList<String> selectedReferralType = RxList();
  RxString selectedReFlag = RxString('');

  RxBool yesHearing = RxBool(true);

  RxBool isYesHearing = RxBool(false);
  RxBool isYesFluid = RxBool(false);

  RxBool rightEarPinna = RxBool(true);
  RxBool rightEarCanal = RxBool(true);
  RxBool leftEarPinna = RxBool(true);
  RxBool leftEarCanal = RxBool(true);

  RxBool fiveHundredRight = RxBool(true);
  RxBool thousandRight = RxBool(true);
  RxBool twoThousandRight = RxBool(true);
  RxBool fourThousandRight = RxBool(true);
  RxBool sixThousandRight = RxBool(true);
  RxBool eightThousandRight = RxBool(true);

  RxBool fiveHundredLeft = RxBool(true);
  RxBool thousandLeft = RxBool(true);
  RxBool twoThousandLeft = RxBool(true);
  RxBool fourThousandLeft = RxBool(true);
  RxBool sixThousandLeft = RxBool(true);
  RxBool eightThousandLeft = RxBool(true);

  RxString selectedHearing = RxString('No');

  RxString selectedRightEarPinna = RxString('Normal');
  RxString selectedRightEarCanal = RxString('Normal');
  RxString selectedLeftEarPinna = RxString('Normal');
  RxString selectedLeftEarCanal = RxString('Normal');

  RxString selectedFiveHundredRight = RxString('Pass');
  RxString selectedThousandRight = RxString('Pass');
  RxString selectedTwoThousandRight = RxString('Pass');
  RxString selectedFourThousandRight = RxString('Pass');
  RxString selectedSixThousandRight = RxString('Pass');
  RxString selectedEightThousandRight = RxString('Pass');

  RxString selectedFiveHundredLeft = RxString('Pass');
  RxString selectedThousandLeft = RxString('Pass');
  RxString selectedTwoThousandLeft = RxString('Pass');
  RxString selectedFourThousandLeft = RxString('Pass');
  RxString selectedSixThousandLeft = RxString('Pass');
  RxString selectedEightThousandLeft = RxString('Pass');

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
  RxList<String> hearingList = RxList(['Unsure', 'No']);

  RxList<String> rightEarPinnaList = RxList(['Normal']);
  RxList<String> rightEarCanalList = RxList(['Normal']);
  RxList<String> leftEarPinnaList = RxList(['Normal']);
  RxList<String> leftEarCanalList = RxList(['Normal']);

  RxList<String> fiveHundredRightList = RxList(['Pass']);
  RxList<String> thousandRightList = RxList(['Pass']);
  RxList<String> twoThousandRightList = RxList(['Pass']);
  RxList<String> fourThousandRightList = RxList(['Pass']);
  RxList<String> sixThousandRightList = RxList(['Pass']);
  RxList<String> eightThousandRightList = RxList(['Pass']);

  RxList<String> fiveHundredLeftList = RxList(['Pass']);
  RxList<String> thousandLeftList = RxList(['Pass']);
  RxList<String> twoThousandLeftList = RxList(['Pass']);
  RxList<String> fourThousandLeftList = RxList(['Pass']);
  RxList<String> sixThousandLeftList = RxList(['Pass']);
  RxList<String> eightThousandLeftList = RxList(['Pass']);

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

  void onSelectHearing({required String name}) {
    if (selectedHearing.value == name) {
      selectedHearing.value = '';
    } else {
      selectedHearing.value = name;
    }
    hearingList.refresh();
  }

  void onSelectRightEarPinna({required String name}) {
    if (selectedRightEarPinna.value == name) {
      selectedRightEarPinna.value = '';
    } else {
      selectedRightEarPinna.value = name;
    }
    rightEarPinnaList.refresh();
  }

  void onSelectRightEarCanal({required String name}) {
    if (selectedRightEarCanal.value == name) {
      selectedRightEarCanal.value = '';
    } else {
      selectedRightEarCanal.value = name;
    }
    rightEarCanalList.refresh();
  }

  void onSelectLeftEarPinna({required String name}) {
    if (selectedLeftEarPinna.value == name) {
      selectedLeftEarPinna.value = '';
    } else {
      selectedLeftEarPinna.value = name;
    }
    leftEarPinnaList.refresh();
  }

  void onSelectLeftEarCanal({required String name}) {
    if (selectedLeftEarCanal.value == name) {
      selectedLeftEarCanal.value = '';
    } else {
      selectedLeftEarCanal.value = name;
    }
    leftEarCanalList.refresh();
  }

  void onSelectFiveHundredRight({required String name}) {
    if (selectedFiveHundredRight.value == name) {
      selectedFiveHundredRight.value = '';
    } else {
      selectedFiveHundredRight.value = name;
    }
    fiveHundredRightList.refresh();
  }

  void onSelectThousandRight({required String name}) {
    if (selectedThousandRight.value == name) {
      selectedThousandRight.value = '';
    } else {
      selectedThousandRight.value = name;
    }
    thousandRightList.refresh();
  }

  void onSelectTwoThousandRight({required String name}) {
    if (selectedTwoThousandRight.value == name) {
      selectedTwoThousandRight.value = '';
    } else {
      selectedTwoThousandRight.value = name;
    }
    twoThousandRightList.refresh();
  }

  void onSelectFourThousandRight({required String name}) {
    if (selectedFourThousandRight.value == name) {
      selectedFourThousandRight.value = '';
    } else {
      selectedFourThousandRight.value = name;
    }
    fourThousandRightList.refresh();
  }

  void onSelectSixThousandRight({required String name}) {
    if (selectedSixThousandRight.value == name) {
      selectedSixThousandRight.value = '';
    } else {
      selectedSixThousandRight.value = name;
    }
    sixThousandRightList.refresh();
  }

  void onSelectEightThousandRight({required String name}) {
    if (selectedEightThousandRight.value == name) {
      selectedEightThousandRight.value = '';
    } else {
      selectedEightThousandRight.value = name;
    }
    eightThousandRightList.refresh();
  }

  void onSelectFiveHundredLeft({required String name}) {
    if (selectedFiveHundredLeft.value == name) {
      selectedFiveHundredLeft.value = '';
    } else {
      selectedFiveHundredLeft.value = name;
    }
    fiveHundredLeftList.refresh();
  }

  void onSelectThousandLeft({required String name}) {
    if (selectedThousandLeft.value == name) {
      selectedThousandLeft.value = '';
    } else {
      selectedThousandLeft.value = name;
    }
    thousandLeftList.refresh();
  }

  void onSelectTwoThousandLeft({required String name}) {
    if (selectedTwoThousandLeft.value == name) {
      selectedTwoThousandLeft.value = '';
    } else {
      selectedTwoThousandLeft.value = name;
    }
    twoThousandLeftList.refresh();
  }

  void onSelectFourThousandLeft({required String name}) {
    if (selectedFourThousandLeft.value == name) {
      selectedFourThousandLeft.value = '';
    } else {
      selectedFourThousandLeft.value = name;
    }
    fourThousandLeftList.refresh();
  }

  void onSelectSixThousandLeft({required String name}) {
    if (selectedSixThousandLeft.value == name) {
      selectedSixThousandLeft.value = '';
    } else {
      selectedSixThousandLeft.value = name;
    }
    sixThousandLeftList.refresh();
  }

  void onSelectEightThousandLeft({required String name}) {
    if (selectedEightThousandLeft.value == name) {
      selectedEightThousandLeft.value = '';
    } else {
      selectedEightThousandLeft.value = name;
    }
    eightThousandLeftList.refresh();
  }

  ///station tab

  RxInt selectedTabIdx = 0.obs;

  void onSaveAndNext() async {
    switch (selectedTabIdx.value) {
      case 0:
        {
          if (StudentInfo.calculateAge() < 2) {
            await submitStationDData(callBack: (success) {
              if (success ?? false) {
                if (selectedRightEarPinna.value == 'Abnormal' &&
                    rightEarPinnaWrapper.controller.text == '') {
                  AppUtils.showSnackBar(
                      'Please select exact values for Right Ear Pinna');
                } else if (selectedRightEarCanal.value == 'Abnormal' &&
                    rightEarCanalWrapper.controller.text == '') {
                  AppUtils.showSnackBar(
                      'Please select exact values for Right Ear Canal');
                } else if (selectedLeftEarPinna.value == 'Abnormal' &&
                    leftEarPinnaWrapper.controller.text == '') {
                  AppUtils.showSnackBar(
                      'Please select exact values for Left Ear Pinna');
                } else if (selectedLeftEarCanal.value == 'Abnormal' &&
                    leftEarCanalWrapper.controller.text == '') {
                  AppUtils.showSnackBar(
                      'Please select exact values for Left Ear Canal');
                } else {
                  updateDVisualInspection(callBack: (success) {
                    if (success ?? false) selectedTabIdx.value = 2;
                  });
                }
              }
            });
          } else {
            if (selectedHearing.value == 'Yes' &&
                yesHearingTextField.controller.text == '') {
              AppUtils.showSnackBar('Please describe the Problem');
            } else if (isYesFluid.value &&
                yesFluidTextField.controller.text == '') {
              AppUtils.showSnackBar('Please describe the Fluid');
            } else {
              await submitStationDData(callBack: (success) {
                if (success ?? false) selectedTabIdx.value = 1;
              });
            }
          }
        }

        break;
      case 1:
        {
          if (selectedRightEarPinna.value == 'Abnormal' &&
              rightEarPinnaWrapper.controller.text == '') {
            AppUtils.showSnackBar('Please enter text for Right Ear Pinna');
          } else if (selectedRightEarCanal.value == 'Abnormal' &&
              rightEarCanalWrapper.controller.text == '') {
            AppUtils.showSnackBar('Please enter text for Right Ear Canal');
          } else if (selectedLeftEarPinna.value == 'Abnormal' &&
              leftEarPinnaWrapper.controller.text == '') {
            AppUtils.showSnackBar('Please enter text for Left Ear Pinna');
          } else if (selectedLeftEarCanal.value == 'Abnormal' &&
              leftEarCanalWrapper.controller.text == '') {
            AppUtils.showSnackBar('Please enter text for Left Ear Canal');
          } else {
            await updateDVisualInspection(callBack: (success) {
              if (success ?? false) selectedTabIdx.value = 2;
            });
          }
        }
        break;
      case 2:
        {
          if (selectedFiveHundredRight.value == 'Refer' &&
              fiveHundredRightWrapper.controller.text == '') {
            AppUtils.showSnackBar(
                'Please enter text for Right Ear 500 Hz, 25 dB');
          } else if (selectedFiveHundredRight.value.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Right Ear 500 Hz, 25 dB');
          } else if (selectedThousandRight.value == 'Refer' &&
              thousandRightWrapper.controller.text == '') {
            AppUtils.showSnackBar(
                'Please enter text for Right Ear 1000 Hz, 25 dB');
          } else if (selectedThousandRight.value.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Right Ear 1000 Hz, 25 dB');
          } else if (selectedTwoThousandRight.value == 'Refer' &&
              twoThousandRightWrapper.controller.text == '') {
            AppUtils.showSnackBar(
                'Please enter text for Right Ear 2000 Hz, 25 dB');
          } else if (selectedTwoThousandRight.value.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Right Ear 2000 Hz, 25 dB');
          } else if (selectedFourThousandRight.value == 'Refer' &&
              fourThousandRightWrapper.controller.text == '') {
            AppUtils.showSnackBar(
                'Please enter text for Right Ear 4000 Hz, 25 dB');
          } else if (selectedFourThousandRight.value.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Right Ear 4000 Hz, 25 dB');
          } else if (selectedSixThousandRight.value == 'Refer' &&
              sixThousandRightWrapper.controller.text == '') {
            AppUtils.showSnackBar(
                'Please enter text for Right Ear 6000 Hz, 25 dB');
          } else if (selectedSixThousandRight.value.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Right Ear 6000 Hz, 25 dB');
          } else if (selectedEightThousandRight.value == 'Refer' &&
              eightThousandRightWrapper.controller.text == '') {
            AppUtils.showSnackBar(
                'Please enter text for Right Ear 8000 Hz, 25 dB');
          } else if (selectedEightThousandRight.value.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Right Ear 8000 Hz, 25 dB');
          } else if (selectedFiveHundredLeft.value == 'Refer' &&
              fiveHundredLeftWrapper.controller.text == '') {
            AppUtils.showSnackBar(
                'Please enter text for Left Ear 500 Hz, 25 dB');
          } else if (selectedFiveHundredLeft.value.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Left Ear 500 Hz, 25 dB');
          } else if (selectedThousandLeft.value == 'Refer' &&
              thousandLeftWrapper.controller.text == '') {
            AppUtils.showSnackBar(
                'Please enter text for Left Ear 1000 Hz, 25 dB');
          } else if (selectedThousandLeft.value.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Left Ear 1000 Hz, 25 dB');
          } else if (selectedTwoThousandLeft.value == 'Refer' &&
              twoThousandLeftWrapper.controller.text == '') {
            AppUtils.showSnackBar(
                'Please enter text for Left Ear 2000 Hz, 25 dB');
          } else if (selectedTwoThousandLeft.value.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Left Ear 2000 Hz, 25 dB');
          } else if (selectedFourThousandLeft.value == 'Refer' &&
              fourThousandLeftWrapper.controller.text == '') {
            AppUtils.showSnackBar(
                'Please enter text for Left Ear 4000 Hz, 25 dB');
          } else if (selectedFourThousandLeft.value.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Left Ear 4000 Hz, 25 dB');
          } else if (selectedSixThousandLeft.value == 'Refer' &&
              sixThousandLeftWrapper.controller.text == '') {
            AppUtils.showSnackBar(
                'Please enter text for Left Ear 6000 Hz, 25 dB');
          } else if (selectedSixThousandLeft.value.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Left Ear 6000 Hz, 25 dB');
          } else if (selectedEightThousandLeft.value == 'Refer' &&
              eightThousandLeftWrapper.controller.text == '') {
            AppUtils.showSnackBar(
                'Please enter text for Left Ear 8000 Hz, 25 dB');
          } else if (selectedEightThousandLeft.value.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Left Ear 8000 Hz, 25 dB');
          } else {
            await updateDPure(callBack: (success) {
              if (success ?? false) selectedTabIdx.value = 3;
            });
          }
        }
        break;
      case 3:
        {
          selectedTabIdx.value = 4;
        }
        break;
      case 4:
        if (isSpecialistReferralNeeded.value &&
            (selectedReferralType.isEmpty || selectedReFlag.isEmpty)) {
          AppUtils.showSnackBar('Please select exact values for Type and Flag');
        } else if (selectedReferralType.contains('Other') &&
            otherWrapper.controller.text.isEmpty) {
          AppUtils.showSnackBar(
              'Please enter text for the Specialist Referral Recommended - Type - Other field');
        } else {
          await updateDOther(callBack: (success) {
            if (success ?? false) selectedTabIdx.value = 4;
          });

          StationDPreviewModel dataValue = StationDPreviewModel(
            hearingValue: stationDResponse.value
                    ?.doYouHaveProblemInhearingYourTeachersFriendsParents ??
                '',
            hearingYesValue: stationDResponse
                    .value?.doYouHaveProblemInhearingYourTeachersYes ??
                '',
            fluidValue:
                stationDResponse.value?.doesAnyFluidComeOutOfYourEars ?? '',
            fluidYesValue:
                stationDResponse.value?.doesAnyFluidComeOutOfYourEarsYes ?? '',
            rightEarPinnaValue:
                stationDResponse.value?.visualInspectionRightEarPinna ?? '',
            rightEarPinnaAbnormalValue:
                stationDResponse.value?.visualInspectionRightEarPinnaAbnormal ??
                    '',
            rightEarCanalValue:
                stationDResponse.value?.visualInspectionRightEarEarCanal ?? '',
            rightEarCanalAbnormalValue: stationDResponse
                    .value?.visualInspectionRightEarEarCanalAbnormal ??
                '',
            leftEarPinnaValue:
                stationDResponse.value?.visualInspectionLeftEarPinna ?? '',
            leftEarPinnaAbnormalValue:
                stationDResponse.value?.visualInspectionLeftEarPinnaAbnormal ??
                    '',
            leftEarCanalValue:
                stationDResponse.value?.visualInspectionLeftEarEarCanal ?? '',
            leftEarCanalAbnormalValue: stationDResponse
                    .value?.visualInspectionLeftEarEarCanalAbnormal ??
                '',
            anyOtherRelatedValue:
                stationDResponse.value?.anyOtherRelatedFindings ?? '',
            fiveHundredRightValue:
                stationDResponse.value?.pureToneAudiometryRightEar500Hz25dB ??
                    '',
            fiveHundredRightReferValue: stationDResponse
                    .value?.pureToneAudiometryRightEar500Hz25dBRefer ??
                '',
            thousandRightValue:
                stationDResponse.value?.pureToneAudiometryRightEar1000Hz25dB ??
                    '',
            thousandRightReferValue: stationDResponse
                    .value?.pureToneAudiometryRightEar1000Hz25dBRefer ??
                '',
            twoThousandRightValue:
                stationDResponse.value?.pureToneAudiometryRightEar2000Hz25dB ??
                    '',
            twoThousandRightReferValue: stationDResponse
                    .value?.pureToneAudiometryRightEar2000Hz25dBRefer ??
                '',
            fourThousandRightValue:
                stationDResponse.value?.pureToneAudiometryRightEar4000Hz25dB ??
                    '',
            fourThousandRightReferValue: stationDResponse
                    .value?.pureToneAudiometryRightEar4000Hz25dBRefer ??
                '',
            sixThousandRightValue:
                stationDResponse.value?.pureToneAudiometryRightEar6000Hz25dB ??
                    '',
            sixThousandRightReferValue: stationDResponse
                    .value?.pureToneAudiometryRightEar6000Hz25dBRefer ??
                '',
            eightThousandRightValue:
                stationDResponse.value?.pureToneAudiometryRightEar8000Hz25dB ??
                    '',
            eightThousandRightReferValue: stationDResponse
                    .value?.pureToneAudiometryRightEar8000Hz25dBRefer ??
                '',
            fiveHundredLeftValue:
                stationDResponse.value?.pureToneAudiometryLeftEar500Hz25dB ??
                    '',
            fiveHundredLeftReferValue: stationDResponse
                    .value?.pureToneAudiometryLeftEar500Hz25dBRefer ??
                '',
            thousandLeftValue:
                stationDResponse.value?.pureToneAudiometryLeftEar1000Hz25dB ??
                    '',
            thousandLeftReferValue: stationDResponse
                    .value?.pureToneAudiometryLeftEar1000Hz25dBRefer ??
                '',
            twoThousandLeftValue:
                stationDResponse.value?.pureToneAudiometryLeftEar2000Hz25dB ??
                    '',
            twoThousandLeftReferValue: stationDResponse
                    .value?.pureToneAudiometryLeftEar2000Hz25dBRefer ??
                '',
            fourThousandLeftValue:
                stationDResponse.value?.pureToneAudiometryLeftEar4000Hz25dB ??
                    '',
            fourThousandLeftReferValue: stationDResponse
                    .value?.pureToneAudiometryLeftEar4000Hz25dBRefer ??
                '',
            sixThousandLeftValue:
                stationDResponse.value?.pureToneAudiometryLeftEar6000Hz25dB ??
                    '',
            sixThousandLeftReferValue: stationDResponse
                    .value?.pureToneAudiometryLeftEar6000Hz25dBRefer ??
                '',
            eightThousandLeftValue:
                stationDResponse.value?.pureToneAudiometryLeftEar8000Hz25dB ??
                    '',
            eightThousandLeftReferValue: stationDResponse
                    .value?.pureToneAudiometryLeftEar8000Hz25dBRefer ??
                '',
            pickedFileNameValue:
                stationDResponse.value?.uploadPureToneTestResults ?? '',
            otherObservationsValue:
                stationDResponse.value?.otherObservations ?? '',
            specialistReferralNeededValue:
                stationDResponse.value?.specialistReferralNeeded ?? '',
            selectedReferralTypeValue:
                stationDResponse.value?.specialistReferralNeededType ?? '',
            other: stationDResponse.value?.other ?? '',
            selectedReFlagValue:
                stationDResponse.value?.specialistReferralNeededFlag ?? '',
          );

          AppUtils.getBottomSheet(children: [
            GetBuilder<HomeController>(
                builder: (homeController) => FinalConfirmationWidget(
                      title: "Station D details successfully saved",
                      child: FinalDPreviewWidget(data: dataValue),
                      onEdit: () => Get.back(),
                      onSubmit: () {
                        Get.dialog(
                          ConfirmationDialog(
                            onConfirm: () async {
                              await AppStorage.clearStationDid();
                              await AppStorage.clearStudent();
                              clearFormData();
                              Get.offAllNamed(Routes.DASHBOARD);
                              AppUtils.showSnackBar('Created Successfully');
                            },
                          ),
                        );
                      },
                    )),
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
    selectedHearing.value = 'No';
    yesHearingTextField.controller.text = '';
    isYesFluid.value = false;
    //
    selectedRightEarPinna.value = 'Normal';
    rightEarPinnaWrapper.controller.text = '';
    selectedRightEarCanal.value = 'Normal';
    rightEarCanalWrapper.controller.text = '';
    selectedLeftEarPinna.value = 'Normal';
    leftEarPinnaWrapper.controller.text = '';
    selectedLeftEarCanal.value = 'Normal';
    leftEarCanalWrapper.controller.text = '';
    anyOtherRelatedWrapper.controller.text = '';
    //
    selectedFiveHundredRight.value = 'Pass';
    fiveHundredRightWrapper.controller.text = '';
    selectedThousandRight.value = 'Pass';
    thousandRightWrapper.controller.text = '';
    selectedTwoThousandRight.value = 'Pass';
    twoThousandRightWrapper.controller.text = '';
    selectedFourThousandRight.value = 'Pass';
    fourThousandRightWrapper.controller.text = '';
    selectedSixThousandRight.value = 'Pass';
    sixThousandRightWrapper.controller.text = '';
    selectedEightThousandRight.value = 'Pass';
    eightThousandRightWrapper.controller.text = '';
    //
    selectedFiveHundredLeft.value = 'Pass';
    fiveHundredLeftWrapper.controller.text = '';
    selectedThousandLeft.value = 'Pass';
    thousandLeftWrapper.controller.text = '';
    selectedTwoThousandLeft.value = 'Pass';
    twoThousandLeftWrapper.controller.text = '';
    selectedFourThousandLeft.value = 'Pass';
    fourThousandLeftWrapper.controller.text = '';
    selectedSixThousandLeft.value = 'Pass';
    sixThousandLeftWrapper.controller.text = '';
    selectedEightThousandLeft.value = 'Pass';
    eightThousandLeftWrapper.controller.text = '';
  }

  submitStationDData({required Function(bool? success) callBack}) async {
    StationDRequest requestData = StationDRequest(
      hcid: AppStorage.getUser().stations?.first.hcid,
      hcpid: AppStorage.getUser().stations?.first.hcpId,
      infoseekId: AppStorage.getStudent().infoseekId,
      doYouHaveProblemInhearingYourTeachersFriendsParents:
          StudentInfo.calculateAge() >= 2 ? selectedHearing.value : null,
      doYouHaveProblemInhearingYourTeachersYes: StudentInfo.calculateAge() >= 2
          ? yesHearingTextField.controller.text
          : null,
      doesAnyFluidComeOutOfYourEars: StudentInfo.calculateAge() >= 2
          ? (isYesFluid.value ? "Yes" : "No")
          : null,
      doesAnyFluidComeOutOfYourEarsYes: StudentInfo.calculateAge() >= 2
          ? yesFluidTextField.controller.text
          : null,
      entryTime:
          '${TimeOfDay.fromDateTime(DateTime.now()).hour}:${TimeOfDay.fromDateTime(DateTime.now()).minute}',
    );

    try {
      LoadingUtils.showLoader();
      RepoResponse<GenericResponse> response =
          await repository.submitStationDData(requestData: requestData);
      print(" 123  $response");
      if (response.data?.status == 200 || response.data?.status == 201) {
        LoadingUtils.hideLoader();
        final id = response.data?.result["id"];
        AppStorage.setStationDId(id);
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

  updateStationDSubmitData({required Function(bool? success) callBack}) async {
    StationDRequest requestData = StationDRequest(
      hcid: AppStorage.getUser().stations?.first.hcid,
      hcpid: AppStorage.getUser().stations?.first.hcpId,
      infoseekId: AppStorage.getStudent().infoseekId,
      doYouHaveProblemInhearingYourTeachersFriendsParents:
          selectedHearing.value,
      doYouHaveProblemInhearingYourTeachersYes:
          yesHearingTextField.controller.text,
      doesAnyFluidComeOutOfYourEars: isYesFluid.value ? "Yes" : "No",
      doesAnyFluidComeOutOfYourEarsYes: yesFluidTextField.controller.text,
      entryTime:
          '${TimeOfDay.fromDateTime(DateTime.now()).hour}:${TimeOfDay.fromDateTime(DateTime.now()).minute}',
    );

    try {
      if (AppStorage.isStationDIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response =
            await repository.updateDStationDData(
                requestData: requestData, id: AppStorage.getStationDId());
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

  updateDVisualInspection({required Function(bool? success) callBack}) async {
    StationDVisualInspectionRequest requestData =
        StationDVisualInspectionRequest(
            visualInspectionRightEarPinna: selectedRightEarPinna.value,
            visualInspectionRightEarPinnaAbnormal:
                rightEarPinnaWrapper.controller.text,
            visualInspectionRightEarEarCanal: selectedRightEarCanal.value,
            visualInspectionRightEarEarCanalAbnormal:
                rightEarCanalWrapper.controller.text,
            visualInspectionLeftEarPinna: selectedLeftEarPinna.value,
            visualInspectionLeftEarPinnaAbnormal:
                leftEarPinnaWrapper.controller.text,
            visualInspectionLeftEarEarCanal: selectedLeftEarCanal.value,
            visualInspectionLeftEarEarCanalAbnormal:
                leftEarPinnaWrapper.controller.text,
            anyOtherRelatedFindings: anyOtherRelatedWrapper.controller.text);

    try {
      if (AppStorage.isStationDIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response =
            await repository.updateVisualInspection(
                requestData: requestData, id: AppStorage.getStationDId());
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

  updateDPure({required Function(bool? success) callBack}) async {
    StationDPureRequest requestData = StationDPureRequest(
      pureToneAudiometryRightEar500Hz25dB: selectedFiveHundredRight.value,
      pureToneAudiometryRightEar500Hz25dBRefer:
          fiveHundredRightWrapper.controller.text,
      pureToneAudiometryRightEar1000Hz25dB: selectedThousandRight.value,
      pureToneAudiometryRightEar1000Hz25dBRefer:
          thousandRightWrapper.controller.text,
      pureToneAudiometryRightEar2000Hz25dB: selectedTwoThousandRight.value,
      pureToneAudiometryRightEar2000Hz25dBRefer:
          twoThousandRightWrapper.controller.text,
      pureToneAudiometryRightEar4000Hz25dB: selectedFourThousandRight.value,
      pureToneAudiometryRightEar4000Hz25dBRefer:
          fourThousandRightWrapper.controller.text,
      pureToneAudiometryRightEar6000Hz25dB: selectedSixThousandRight.value,
      pureToneAudiometryRightEar6000Hz25dBRefer:
          sixThousandRightWrapper.controller.text,
      pureToneAudiometryRightEar8000Hz25dB: selectedEightThousandRight.value,
      pureToneAudiometryRightEar8000Hz25dBRefer:
          eightThousandRightWrapper.controller.text,
      pureToneAudiometryLeftEar500Hz25dB: selectedFiveHundredLeft.value,
      pureToneAudiometryLeftEar500Hz25dBRefer:
          fiveHundredLeftWrapper.controller.text,
      pureToneAudiometryLeftEar1000Hz25dB: selectedThousandLeft.value,
      pureToneAudiometryLeftEar1000Hz25dBRefer:
          thousandLeftWrapper.controller.text,
      pureToneAudiometryLeftEar2000Hz25dB: selectedTwoThousandLeft.value,
      pureToneAudiometryLeftEar2000Hz25dBRefer:
          twoThousandLeftWrapper.controller.text,
      pureToneAudiometryLeftEar4000Hz25dB: selectedFourThousandLeft.value,
      pureToneAudiometryLeftEar4000Hz25dBRefer:
          fourThousandLeftWrapper.controller.text,
      pureToneAudiometryLeftEar6000Hz25dB: selectedSixThousandLeft.value,
      pureToneAudiometryLeftEar6000Hz25dBRefer:
          sixThousandLeftWrapper.controller.text,
      pureToneAudiometryLeftEar8000Hz25dB: selectedEightThousandLeft.value,
      pureToneAudiometryLeftEar8000Hz25dBRefer:
          eightThousandLeftWrapper.controller.text,
      uploadPureToneTestResults: "",
    );

    try {
      if (AppStorage.isStationDIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response = await repository.updatePure(
            requestData: requestData, id: AppStorage.getStationDId());

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

  updateDOther({required Function(bool? success) callBack}) async {
    StationDOtherRequest requestData = StationDOtherRequest(
      otherObservations: otherObservations.controller.text,
      specialistReferralNeeded: isSpecialistReferralNeeded.value ? 'Yes' : "No",
      specialistReferralNeededType: selectedReferralType.join(','),
      specialistReferralNeededFlag: selectedReFlag.value,
      other: otherWrapper.controller.text,
      completed: "Yes",
      endTime:
          '${TimeOfDay.fromDateTime(DateTime.now()).hour}:${TimeOfDay.fromDateTime(DateTime.now()).minute}',
    );

    try {
      if (AppStorage.isStationDIdExists()) {
        RepoResponse<GenericResponse> response = await repository.updateOther(
            requestData: requestData, id: AppStorage.getStationDId());

        if (response.data?.status == 200 || response.data?.status == 201) {
          await getStationDDetails();
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

  updateDDetails({required Function(bool? success) callBack}) async {
    StationDDetailsUpdate requestData = StationDDetailsUpdate(
      hcid: AppStorage.getUser().stations?.first.hcid,
      hcpid: AppStorage.getUser().stations?.first.hcpId,
      infoSeekId: AppStorage.getStudent().infoseekId,
      doYouHaveProblemInhearingYourTeachersFriendsParents:
          yesHearing.value.toString(),
      doYouHaveProblemInhearingYourTeachersYes:
          yesHearingTextField.controller.text,
      doesAnyFluidComeOutOfYourEars: yesHearing.value.toString(),
      doesAnyFluidComeOutOfYourEarsYes: yesFluidTextField.controller.text,
    );

    try {
      if (AppStorage.isStationDIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response = await repository.updateDetails(
            requestData: requestData, id: AppStorage.getStationDId());

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

  void pickFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        type: FileType.custom,
        allowedExtensions: allowedExtensions);
    if (result != null) {
      print(result.files.first.name);
      pickedFileName.value = result.files.first.name;
      bool isDifExt = false;
      for (var i in result.files) {
        String ext = i.name.split('.').last;
        if (allowedExtensions.contains(ext)) {
          isDifExt = false;
        } else {
          isDifExt = true;
          break;
        }
      }
      if (!isDifExt) {
        attachments.assignAll(
            result.files.map((file) => io.File(file.path ?? "")).toList());
        attachments.refresh();
      } else {
        AppUtils.showSnackBar('Please choose allowed file only');
      }
    } else {
      // Handle the case when no files are picked.
    }
  }

  uploadPureToneTestResult() {}

  Future<bool> getStationDDetails() async {
    try {
      RepoResponse<GenericResponse> response =
          await repository.getStationDDetails(id: AppStorage.getStationDId());
      if (response.data?.status == 200 || response.data?.status == 201) {
        var data = response.data?.result as List;
        stationDResponse.value = StationDGetModel.fromJson(data.first);
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
