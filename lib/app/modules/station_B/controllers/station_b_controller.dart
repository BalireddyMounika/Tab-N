import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/model/dto/response.dart';
import 'package:nivish/app/data/model/response/generic_response.dart';
import 'package:nivish/app/data/model/resuest/StationBRequest.dart';
import 'package:nivish/app/data/repository/stationARepository.dart';
import 'package:nivish/app/modules/home/controllers/home_controller.dart';
import 'package:nivish/app/modules/station_B/widget/final_preview_widget.dart';
import 'package:nivish/app/routes/app_routes.dart';
import 'package:nivish/base/base_controller.dart';
import 'package:nivish/utils/app_utils.dart';
import 'package:nivish/utils/loading/loading_utils.dart';
import 'package:nivish/utils/storage/storage_utils.dart';
import 'package:nivish/widgets/Age_Gender_validations.dart';
import 'package:nivish/widgets/dialog/confirmation_dialog.dart';
import 'package:nivish/widgets/finnal_confirmation_widget.dart';

import '../../../../utils/helper/text_field_wrapper.dart';
import '../../../data/model/resuest/StationBGetModel.dart';
import '../widget/B_preview_model.dart';

class StationBController extends BaseController<AllStationRepository> {
  Rx<StationBGetModel?> stationBResponse = Rx<StationBGetModel?>(null);


///entryTime
  RxString entryTime = RxString('');





  final bpFormKey = GlobalKey<FormState>();
  final heartRateFormKey = GlobalKey<FormState>();

  TextFieldWrapper systolicBP = TextFieldWrapper();
  TextFieldWrapper diastolicBp = TextFieldWrapper();
  TextFieldWrapper respiration = TextFieldWrapper();
  TextFieldWrapper heart = TextFieldWrapper();
  TextFieldWrapper temperature = TextFieldWrapper();
  TextFieldWrapper oxygenSaturation = TextFieldWrapper();
  TextFieldWrapper otherObservations = TextFieldWrapper();
  TextFieldWrapper otherWrapper = TextFieldWrapper();

  RxBool isSpecialistReferralNeeded = RxBool(false);

  RxList<String> selectedReferralType = RxList();
  RxString selectedReFlag = RxString('');
  RxString selectedPosition = RxString('Sitting');
  RxString selectedBPInstrument = RxString('Electronic Digital Instrument');
  RxString selectedMeasurement = RxString('Aural');
  RxString selectedMeasurementLessThanTwo = RxString('Aural');
  RxString selectedTemperatureInstrument = RxString('Digital');
  RxString selectedTemperatureDegrees = RxString('°C');

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
  RxList<String> positionList = RxList([
    'Sitting',
    "Standing",
    "Lying Down",
  ]);
  RxList<String> instrumentList = RxList([
    'Electronic Digital Instrument',
    "Analogue",
  ]);
  RxList<String> measurementSiteList =
      RxList(['Aural', "Armpit", "Forehead", "Oral", "Anal"]);
  RxList<String> measurementSiteListLessThanTwo =
      RxList(['Aural', "Armpit", "Forehead", "Oral"]);
  RxList<String> temperatureInstrumentList = RxList([
    'Digital',
    "Analogue",
  ]);
  RxList<String> temperatureDegreesList = RxList([
    '°C',
    "°F",
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

  void onSelectPosition({required String name}) {
    if (selectedPosition.value == name) {
      selectedPosition.value = '';
    } else {
      selectedPosition.value = name;
    }
    positionList.refresh();
  }

  void onSelectInstrument({required String name}) {
    if (selectedBPInstrument.value == name) {
      selectedBPInstrument.value = '';
    } else {
      selectedBPInstrument.value = name;
    }
    instrumentList.refresh();
  }

  void onSelectMeasurementSite({required String name}) {
    if (selectedMeasurement.value == name) {
      selectedMeasurement.value = '';
    } else {
      selectedMeasurement.value = name;
    }
    measurementSiteList.refresh();
  }

  void onSelectMeasurementSiteLessThanTwo({required String name}) {
    if (selectedMeasurementLessThanTwo.value == name) {
      selectedMeasurementLessThanTwo.value = '';
    } else {
      selectedMeasurementLessThanTwo.value = name;
    }
    measurementSiteListLessThanTwo.refresh();
  }

  void onSelectTemperatureInstrument({required String name}) {
    if (selectedTemperatureInstrument.value == name) {
      selectedTemperatureInstrument.value = '';
    } else {
      selectedTemperatureInstrument.value = name;
    }
    temperatureInstrumentList.refresh();
  }

  void onSelectTemperatureDegrees({required String name}) {
    if (selectedTemperatureDegrees.value == name) {
      selectedTemperatureDegrees.value = '';
    } else {
      selectedTemperatureDegrees.value = name;
    }
    temperatureDegreesList.refresh();
  }

  ///station tab

  RxInt selectedTabIdx = 0.obs;

  void onSaveAndNext() {
    switch (selectedTabIdx.value) {
      case 0:
        // {
        //   if (bpFormKey.currentState!.validate()) {
        //     selectedTabIdx.value = 1;
        //   }
        // }


        {
          if (bpFormKey.currentState!.validate()) {
            if (entryTime.value.isEmpty) {
              entryTime.value = getCurrentTime();
            }
            selectedTabIdx.value = 1;
          }
        }




        break;
      case 1:
        // {
        //   if (heartRateFormKey.currentState!.validate()) {
        //     selectedTabIdx.value = 2;
        //   }
        // }


        {
          if (heartRateFormKey.currentState!.validate()) {
            entryTime.value = getCurrentTime();
            selectedTabIdx.value = 2;
          }
        }



        break;
      case 2:
        {
          if (temperature.controller.text == '' ||
              selectedTemperatureDegrees.value == '' ||
              (StudentInfo.calculateAge() < 2 &&
                  selectedMeasurement.value == '') ||
              (StudentInfo.calculateAge() >= 2 &&
                  selectedMeasurementLessThanTwo.value == '') ||
              selectedTemperatureInstrument.value == '') {
            AppUtils.showSnackBar('Please enter value for Temperature');
          } else {
            selectedTabIdx.value = 3;
          }
        }
        break;
      case 3:
        {
          if (oxygenSaturation.controller.text == '') {
            AppUtils.showSnackBar(
                'Please enter value for Oxygen Saturation SpO₂%');
          } else {
            selectedTabIdx.value = 4;
          }
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
          StationBPreviewModel dataValue = StationBPreviewModel(
            positionValue: stationBResponse.value?.bloodPressurePosition ?? '',
            selectedBPInstrumentValue:
                stationBResponse.value?.bloodPressureTypeOfInstrument ?? '',
            systolicBPValue:
                stationBResponse.value?.bloodPressureSystolicBP ?? '',
            diastolicBPValue:
                stationBResponse.value?.bloodPressureDiastolicBP ?? '',
            respirationValue: stationBResponse.value?.respiration ?? '',
            heartRateValue: stationBResponse.value?.heartRate ?? '',
            measurementSiteValue:
                stationBResponse.value?.tempratureMeasurementSite ?? '',
            selectedTemperatureInstrumentValue:
                stationBResponse.value?.tempratureMeasurementInstrument ?? '',
            temperatureValue: stationBResponse.value?.temprature ?? '',
            oxygenSaturationValue:
                stationBResponse.value?.oxygenSaturationSpO2 ?? '',
            otherObservationsValue:
                stationBResponse.value?.otherObservations ?? '',
            selectedReferralTypeValue:
                stationBResponse.value?.specialistReferralNeededType ?? '',
            specialistReferralNeededValue:
                stationBResponse.value?.specialistReferralNeeded ?? '',
            selectedReFlagValue:
                stationBResponse.value?.specialistReferralNeededFlag ?? '',
            otherValue: stationBResponse.value?.other ?? '',
          );
          AppUtils.getBottomSheet(children: [
            GetBuilder<HomeController>(
              builder: (homeController) => FinalConfirmationWidget(
                title: "Station B details",
                child: FinalBPreviewWidget(),
                onEdit: () => Get.back(),
                onSubmit: () {
                  Get.dialog(
                    ConfirmationDialog(
                      onConfirm: () => submitDetails(),
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

  String getCurrentTime() {
    return '${TimeOfDay.fromDateTime(DateTime.now()).hour}:${TimeOfDay.fromDateTime(DateTime.now()).minute}';
  }

  void onPrevious() {
    if (selectedTabIdx.value > 0) {
      selectedTabIdx.value -= 1;
    }
  }

  Future<void> submitDetails() async {
    try {
      LoadingUtils.showLoader();
      StationBRequest requestData = StationBRequest(
        hcpid: AppStorage.getUser().stations?.first.hcpId,
        hcid: AppStorage.getUser().stations?.first.hcid,
        infoSeekId: AppStorage.getStudent().infoseekId,
        bloodPressureDiastolicBP: diastolicBp.controller.text,
        bloodPressurePosition: selectedPosition.value,
        bloodPressureSystolicBP: systolicBP.controller.text,
        bloodPressureTypeOfInstrument: selectedBPInstrument.value,
        respiration: respiration.controller.text,
        heartRate: heart.controller.text,
        temprature: temperature.controller.text,
        tempratureMeasurementInstrument: selectedTemperatureInstrument.value,
        tempratureMeasurementSite: selectedMeasurement.value,
        otherObservations: otherObservations.controller.text,
        other: otherWrapper.controller.text,
        oxygenSaturationSpO2: oxygenSaturation.controller.text,
        specialistReferralNeededType: selectedReferralType.join(','),
        specialistReferralNeededFlag: selectedReFlag.value,
        specialistReferralNeeded:
            isSpecialistReferralNeeded.value ? 'Yes' : 'No',
        completed: 'Yes',
        entryTime: entryTime.value,
        // entryTime:
         //     '${TimeOfDay.fromDateTime(DateTime.now()).hour}:${TimeOfDay.fromDateTime(DateTime.now()).minute}',
        endTime:
            '${TimeOfDay.fromDateTime(DateTime.now()).hour}:${TimeOfDay.fromDateTime(DateTime.now()).minute}',
      );
      RepoResponse<GenericResponse> response =
          await repository.submitStationBData(requestData: requestData);
      if (response.data?.status == 200 || response.data?.status == 201) {
        await AppStorage.clearStudent();
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
      if (selectedTabIdx.value == 4) {
        entryTime.value = ''; }
    } catch (e) {
      if (LoadingUtils.isLoaderShowing) LoadingUtils.hideLoader();
      print(e);
    }
  }

  void clearFormData() {
    selectedReferralType.clear();
    selectedReFlag.value = '';
    selectedPosition.value = 'Sitting';
    selectedBPInstrument.value = 'Electronic Digital Instrument';
    selectedMeasurement.value = 'Aural';
    selectedTemperatureInstrument.value = 'Digital';
    selectedTemperatureDegrees.value = '°C';
    systolicBP.controller.clear();
    diastolicBp.controller.clear();
    respiration.controller.clear();
    heart.controller.clear();
    temperature.controller.clear();
    oxygenSaturation.controller.clear();
    otherObservations.controller.clear();
    otherWrapper.controller.clear();
    selectedTabIdx.value = 0;
    isSpecialistReferralNeeded.value = false;
  }

  Future<bool> getStationBDetails() async {
    try {
      RepoResponse<GenericResponse> response =
          await repository.getStationBDetails(id: AppStorage.getStationBId());
      if (response.data?.status == 200 || response.data?.status == 201) {
        var data = response.data?.result as List;
        stationBResponse.value = StationBGetModel.fromJson(data.first);
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
