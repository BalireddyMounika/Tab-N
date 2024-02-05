import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/model/dto/response.dart';
import 'package:nivish/app/data/model/response/generic_response.dart';
import 'package:nivish/app/data/model/resuest/StationATequest.dart';
import 'package:nivish/app/data/repository/stationARepository.dart';
import 'package:nivish/app/modules/home/controllers/home_controller.dart';
import 'package:nivish/app/modules/station_A/widget/final_preview_widget.dart';
import 'package:nivish/app/routes/app_routes.dart';
import 'package:nivish/base/base_controller.dart';
import 'package:nivish/utils/app_utils.dart';
import 'package:nivish/utils/helper/text_field_wrapper.dart';
import 'package:nivish/utils/loading/loading_utils.dart';
import 'package:nivish/utils/storage/storage_utils.dart';
import 'package:nivish/widgets/Age_Gender_validations.dart';
import 'package:nivish/widgets/dialog/confirmation_dialog.dart';
import 'package:nivish/widgets/finnal_confirmation_widget.dart';
import '../../../data/model/resuest/StationAGetModel.dart';
import '../../../data/model/resuest/StationAUpdateModel.dart';
import '../widget/A_preview_model.dart';

class StationAController extends BaseController<AllStationRepository> {
  Rx<StationAGetModel?> stationAResponse = Rx<StationAGetModel?>(null);

Rx<TimeOfDay> time = Rx<TimeOfDay>(TimeOfDay.now());
    String? entryTime ;
bool isEntryTimeInitialized = false;


  TextFieldWrapper heightWrapper = TextFieldWrapper();
  TextFieldWrapper lengthWrapper = TextFieldWrapper();
  TextFieldWrapper weightWrapper = TextFieldWrapper();
  TextFieldWrapper tricepsSkinFoldWrapper = TextFieldWrapper();
  TextFieldWrapper subScapularSkinFoldWrapper = TextFieldWrapper();
  TextFieldWrapper headCircumference = TextFieldWrapper();
  TextFieldWrapper armCircumferenceWrapper = TextFieldWrapper();
  TextFieldWrapper otherObservations = TextFieldWrapper();
  TextFieldWrapper otherWrapper = TextFieldWrapper();
  TextFieldWrapper abdominalGirthWrapper = TextFieldWrapper();

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

  ///station tab
  RxInt selectedTabIdx = 0.obs;

  void onSaveAndNext() async {
    if (selectedTabIdx.value == 0 || selectedTabIdx.value == 1) {
  if (!isEntryTimeInitialized) {
    time.value = TimeOfDay.now();
    entryTime =
    '${time.value.hour}:${time.value.minute.toString().padLeft(2, '0')}';
    isEntryTimeInitialized = true;
    print('Entry Time: $entryTime');
  }
}

    switch (selectedTabIdx.value) {
      case 0:
        if (StudentInfo.calculateAge() >= 2) {
          if (heightWrapper.controller.text.isNotEmpty ||
              lengthWrapper.controller.text.isNotEmpty) {
            selectedTabIdx.value = 1;
          } else {
            AppUtils.showSnackBar('required');
          }
        } else {
          selectedTabIdx.value = 1;
        }

        break;
      case 1:
        {
          if (weightWrapper.controller.text.isNotEmpty) {
            selectedTabIdx.value = 2;
          } else {
            AppUtils.showSnackBar('required');
          }
        }

        break;
      case 2:
        {
          if (tricepsSkinFoldWrapper.controller.text.isNotEmpty) {
            if (StudentInfo.calculateAge() < 5) {
              selectedTabIdx.value = 3;
            } else {
              selectedTabIdx.value = 6;
            }
          } else {
            AppUtils.showSnackBar('required');
          }
        }
        break;
      case 3:
        {
          if (subScapularSkinFoldWrapper.controller.text.isNotEmpty) {
            if (StudentInfo.calculateAge() < 5) {
              selectedTabIdx.value = 4;
            } else {
              selectedTabIdx.value = 6;
            }
          } else {
            AppUtils.showSnackBar('required');
          }
        }
        break;
      case 4:
        {
          if (armCircumferenceWrapper.controller.text.isNotEmpty) {
            if (StudentInfo.calculateAge() < 5) {
              selectedTabIdx.value = 5;
            } else {
              selectedTabIdx.value = 6;
            }
          } else {
            AppUtils.showSnackBar('required');
          }
        }

        break;

      case 5:
        {
          if (headCircumference.controller.text.isNotEmpty) {
            selectedTabIdx.value = 6;
          } else {
            AppUtils.showSnackBar('required');
          }
        }
        break;
      case 6:
        {
          if (abdominalGirthWrapper.controller.text.isNotEmpty) {
            selectedTabIdx.value = 7;
          } else {
            AppUtils.showSnackBar('required');
          }
        }
        break;
      case 7:
        selectedTabIdx.value = 8;

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
          StationAPreviewModel dataValue = StationAPreviewModel(
            heightValue: stationAResponse.value?.height ?? 0,
            lengthValue: stationAResponse.value?.length ?? 0,
            weightValue: stationAResponse.value?.weight ?? 0,
            tricepsSkinFoldValue: stationAResponse.value?.tricepsSkinFold ?? '',
            subScapularSkinFoldValue:
                stationAResponse.value?.subscapularSkinfold ?? '',
            armCircumferenceValue:
                stationAResponse.value?.armCircumference ?? '',
            headCircumferenceValue:
                stationAResponse.value?.headCircumference ?? '',
            abdominalGirthValue: stationAResponse.value?.abdominalGirth ?? '',
            getCalculatedBMIValue: stationAResponse.value?.calculatedBMI ?? '',
            gerCalculatedAbdominalGirthToHeightValue:
                stationAResponse.value?.abdominalGirthToHightRatio ?? '',
            otherObservationsValue:
                stationAResponse.value?.otherObservations ?? '',
            specialistReferralNeededValue:
                stationAResponse.value?.specialistReferralNeeded ?? '',
            selectedReferralTypeValue:
                stationAResponse.value?.specialistReferralNeededType ?? '',
            selectedReFlagValue:
                stationAResponse.value?.specialistReferralNeededFlag ?? '',
            otherValue: stationAResponse.value?.other ?? '',
          );

          AppUtils.getBottomSheet(
            children: [
              GetBuilder<HomeController>(
                builder: (homeController) => FinalConfirmationWidget(
                  title: "Station A details",
                  child: const FinalPreviewWidget(),
                  onEdit: () => Get.back(),
                  onSubmit: () {
                    Get.dialog(
                      ConfirmationDialog(onConfirm: () {
                        submitDetails();
                      }),
                    );
                  },
                ),
              )
            ],
          );
        }
      default:
        {
          AppUtils.showSnackBar('Somethings went wrong');
        }
        isEntryTimeInitialized = false;
        break;
    }
  }

  void onPrevious() {
    if (selectedTabIdx.value > 0) {
      if (selectedTabIdx.value == 3 ||
          selectedTabIdx.value == 4 ||
          selectedTabIdx.value == 5 ||
          selectedTabIdx.value == 6) {
        if (StudentInfo.calculateAge() >= 5) {
          selectedTabIdx.value = 2;
        } else {
          selectedTabIdx.value -= 1;
        }
      } else {
        selectedTabIdx.value -= 1;
      }
    }
  }

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

  /// calculated bmi & height
  double gerCalculatedBMI() {
    double height = (StudentInfo.calculateAge() >= 2)
        ? double.tryParse(heightWrapper.controller.text) ?? 0.0
        : double.tryParse(lengthWrapper.controller.text) ?? 0.0;

    double weight = double.tryParse(weightWrapper.controller.text) ?? 0.0;

    if (height > 0 && weight > 0) {
      double bmi = weight / ((height / 100) * (height / 100));
      return bmi;
    } else {
      return 0;
    }
  }

  double gerCalculatedAbdominalGirthToHeight() {
    double height = (StudentInfo.calculateAge() >= 2)
        ? double.tryParse(heightWrapper.controller.text) ?? 0.0
        : double.tryParse(lengthWrapper.controller.text) ?? 0.0;
    double abdominalGirth =
        double.tryParse(abdominalGirthWrapper.controller.text) ?? 0.0;

    double abdominalGirthToHeight = abdominalGirth / height;
    return abdominalGirthToHeight;
  }

  /// api
  Future<void> submitDetails() async {
    try {
      LoadingUtils.showLoader();


      entryTime =
      '${time.value.hour}:${time.value.minute.toString().padLeft(2, '0')}';
      isEntryTimeInitialized = true;

      StationARequest requestData = StationARequest(
        hcpid: AppStorage.getUser().stations?.first.hcpId,
        hcid: AppStorage.getUser().stations?.first.hcid,
        infoSeekId: AppStorage.getStudent().infoseekId,
        height: StudentInfo.calculateAge() >= 2
            ? int.parse(heightWrapper.controller.text)
            : null,
        weight: int.parse(weightWrapper.controller.text),
        length: StudentInfo.calculateAge() < 2
            ? int.parse(lengthWrapper.controller.text)
            : null,
        calculatedBMI: gerCalculatedBMI().toStringAsFixed(2),
        tricepsSkinFold: tricepsSkinFoldWrapper.controller.text,
        subscapularSkinfold: StudentInfo.calculateAge() >= 5
            ? null
            : subScapularSkinFoldWrapper.controller.text,
        armCircumference: StudentInfo.calculateAge() >= 5
            ? null
            : armCircumferenceWrapper.controller.text,
        headCircumference: StudentInfo.calculateAge() >= 5
            ? null
            : headCircumference.controller.text,
        abdominalGirth: abdominalGirthWrapper.controller.text,
        specialistReferralNeeded:
            isSpecialistReferralNeeded.value ? 'Yes' : 'No',
        abdominalGirthToHightRatio:
            gerCalculatedAbdominalGirthToHeight().toStringAsFixed(2),
        otherObservations: otherObservations.controller.text,
        specialistReferralNeededType: selectedReferralType.join(','),
        specialistReferralNeededFlag: selectedReFlag.value,
        other: otherWrapper.controller.text,
        completed: 'Yes',
        entryTime: //entryTime,
            '${TimeOfDay.fromDateTime(DateTime.now()).hour}:${TimeOfDay.fromDateTime(DateTime.now()).minute}',
        endTime:
            '${TimeOfDay.fromDateTime(DateTime.now()).hour}:${TimeOfDay.fromDateTime(DateTime.now()).minute}',
      );

      RepoResponse<GenericResponse> response =
          await repository.submitStationAData(requestData: requestData);
      if (response.data?.status == 200 || response.data?.status == 201) {
        await AppStorage.clearStudent();

          entryTime;

        clearFormData();
        LoadingUtils.hideLoader();
        Get.offAllNamed(Routes.DASHBOARD);
        AppUtils.showSnackBar('Created Successfully');
      } else {
        LoadingUtils.hideLoader();
        AppUtils.showSnackBar(response.error?.message ??
            response.data?.message ??
            'Something went wrong');
      }
    } catch (e) {
      if (LoadingUtils.isLoaderShowing) LoadingUtils.hideLoader();
      print(e);
    }finally{
      entryTime="";
    }
  }

  updateStationA({required Function(bool? success) callBack}) async {
    StationAUpdateModel requestData = StationAUpdateModel(
        hcpid: AppStorage.getUser().stations?.first.hcpId,
        hcid: AppStorage.getUser().stations?.first.hcid,
        infoseekId: AppStorage.getStudent().infoseekId,
        height: int.parse(heightWrapper.controller.text),
        weight: int.parse(weightWrapper.controller.text),
        length: int.parse(lengthWrapper.controller.text),
        calculatedBMI: gerCalculatedBMI().toStringAsFixed(3),
        tricepsSkinFold: tricepsSkinFoldWrapper.controller.text,
        subscapularSkinfold: subScapularSkinFoldWrapper.controller.text,
        armCircumference: armCircumferenceWrapper.controller.text,
        headCircumference: headCircumference.controller.text,
        abdominalGirth: abdominalGirthWrapper.controller.text,
        specialistReferralNeeded:
            isSpecialistReferralNeeded.value ? 'Yes' : 'No',
        abdominalGirthToHightRatio:
            gerCalculatedAbdominalGirthToHeight().toStringAsFixed(4),
        otherObservations: otherObservations.controller.text,
        specialistReferralNeededType: selectedReferralType.join(','),
        specialistReferralNeededFlag: selectedReFlag.value,
        other: otherWrapper.controller.text,
        completed: 'Yes');

    try {
      if (AppStorage.isStationAIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response =
            await repository.updateStationA(
                requestData: requestData, id: AppStorage.getStationAId());
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

  void clearFormData() {
    selectedTabIdx.value = 0;
    selectedReferralType.clear();
    selectedReFlag.value = '';
    otherObservations.controller.clear();
    otherWrapper.controller.clear();
    isSpecialistReferralNeeded.value = false;
    heightWrapper.controller.text = '';
    lengthWrapper.controller.text = '';
    weightWrapper.controller.text = '';
    tricepsSkinFoldWrapper.controller.text = '';
    subScapularSkinFoldWrapper.controller.text = '';
    armCircumferenceWrapper.controller.text = '';
    headCircumference.controller.text = '';
    abdominalGirthWrapper.controller.text = '';
    tricepsSkinFoldWrapper.controller.text = '';
   entryTime = "";



  }

  Future<bool> getStationADetails() async {
    try {
      RepoResponse<GenericResponse> response =
          await repository.getStationADetails(id: AppStorage.getStationAId());
      if (response.data?.status == 200 || response.data?.status == 201) {
        var data = response.data?.result as List;
        stationAResponse.value = StationAGetModel.fromJson(data.first);
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
