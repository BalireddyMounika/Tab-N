import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/model/dto/response.dart';
import 'package:nivish/app/data/model/response/generic_response.dart';
import 'package:nivish/app/data/model/resuest/stationH/DentalOtherObservationRequest.dart';
import 'package:nivish/app/data/model/resuest/stationH/OralHygieneRequest.dart';
import 'package:nivish/app/data/model/resuest/stationH/SensitivityRequest.dart';
import 'package:nivish/app/data/model/resuest/stationH/SoftTissueRequest.dart';
import 'package:nivish/app/data/model/resuest/stationH/StationHDetailResponse.dart';
import 'package:nivish/app/data/model/resuest/stationH/StationHOtherObservationRequest.dart';
import 'package:nivish/app/data/model/resuest/stationH/SubmitStationHDetails.dart';
import 'package:nivish/app/data/repository/stationARepository.dart';
import 'package:nivish/app/modules/home/controllers/home_controller.dart';
import 'package:nivish/app/modules/station_H/widget/H_preview_model.dart';
import 'package:nivish/app/modules/station_H/widget/final_preview_widget.dart';
import 'package:nivish/app/routes/app_routes.dart';
import 'package:nivish/base/base_controller.dart';
import 'package:nivish/utils/app_utils.dart';
import 'package:nivish/utils/enums/all_enums.dart';
import 'package:nivish/utils/helper/text_field_wrapper.dart';
import 'package:nivish/utils/loading/loading_utils.dart';
import 'package:nivish/utils/storage/storage_utils.dart';
import 'package:nivish/widgets/dialog/confirmation_dialog.dart';
import 'package:nivish/widgets/finnal_confirmation_widget.dart';

class StationHController extends BaseController<AllStationRepository> {
  RxInt selectedTabIdx = 0.obs;

  Rx<StationHResponse?> stationHResponse = Rx<StationHResponse?>(null);

  final impactedToothFormKey = GlobalKey<FormState>();
  final otherSoftTissuePathologyFormKey = GlobalKey<FormState>();
  final otherTreatmentNeededFormKey = GlobalKey<FormState>();

  TextFieldWrapper otherSoftTissuePathology = TextFieldWrapper();
  TextFieldWrapper otherTreatmentNeeded = TextFieldWrapper();
  TextFieldWrapper otherObservation = TextFieldWrapper();
  TextFieldWrapper otherAdditionalSpecialistReferralType = TextFieldWrapper();
  TextFieldWrapper impactedToothYesPosition = TextFieldWrapper();

  // Oral Oral Hygiene (tab two)
  RxBool isSatisfactory = RxBool(false);
  RxBool isPlaque = RxBool(false);
  RxBool isDentalStains = RxBool(false);
  RxBool isMalocclusion = RxBool(false);
  RxBool isCrowding = RxBool(false);
  RxBool isImpactedTooth = RxBool(false);
  RxBool isWornEnamel = RxBool(false);

  RxBool isImpactedToothPosition = RxBool(true);

  void onCheckedImpactedToothPosition() {
    isImpactedToothPosition.toggle();
  }

  //Sensitivity ( tab three)
  RxBool isSensitivity = RxBool(false);
  RxBool isUntreatedCaries = RxBool(false);
  RxBool isCariesExperience = RxBool(false);
  RxBool isDentalSealantsPresent = RxBool(false);
  RxBool isBraces = RxBool(false);
  RxBool isBridges = RxBool(false);
  RxBool isDentures = RxBool(false);

  RxList<String> bracesOn = RxList();
  RxList<String> bridgesOn = RxList();
  RxList<String> denturesOn = RxList();

  // station four

  RxBool isDentalFlorosis = RxBool(false);
  RxBool isSoftTissuePathology = RxBool(false);
  RxBool isTreatmentNeeded = RxBool(false);
  RxList<String> softTissuePathologyOptions = RxList(
    [
      'Gingivitis',
      'Ulcer',
      'Abscess',
      'Vesicle',
      'Growth',
      'Bleeding Gum',
      'Discoloration',
      'Receding Gums',
      'Other'
    ],
  );
  RxList<String> selectedSoftTissuePathology = RxList();
  RxList<String> treatmentNeededOptions = RxList(
    ['Urgent Treatment', 'Preventive Care', 'Restorative Care', 'Other'],
  );
  RxList<String> selectedTreatmentNeeded = RxList();

  // other Observation
  RxBool isDentalSpecialistReferralNeeded = RxBool(false);
  RxList<String> dentalSpecialistReferralType = RxList(
    [
      'Pediatric Dentist',
      'Endodontist',
      'Oral and Maxillofacial Surgeon',
      'Orthodontist',
      'Periodontist',
      'Prosthodontist',
    ],
  );
  RxList<String> flagOptions = RxList(
    [
      'Non-Urgent',
      'Urgent',
      'Emergency',
    ],
  );
  RxString selectedDentalSpecialistReferral = 'Pediatric Dentist'.obs;
  RxString selectedDentalSpecialistReferralFlag = ''.obs;

  // Additional Specialist Referral Needed
  RxBool isAdditionalSpecialistReferralNeeded = false.obs;
  RxList<String> additionalSpecialistReferralType = RxList(
    [
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
    ],
  );

  RxString selectedAdditionalSpecialistReferralType = 'Dentist'.obs;
  RxList<String> selectedAdditionalSpecialistReferralTypeList = RxList();
  RxString selectedAdditionalSpecialistFlag = ''.obs;

  //Map to store tooth lists based on ToothType
  final Map<ToothType, RxList<String>> toothLists = {
    ToothType.UPMissing: RxList(),
    ToothType.UPProsthesis: RxList(),
    ToothType.UPFilled: RxList(),
    ToothType.UPDecayed: RxList(),
    ToothType.UPRestoration: RxList(),
    ToothType.LPMissing: RxList(),
    ToothType.LPProsthesis: RxList(),
    ToothType.LPFilled: RxList(),
    ToothType.LPDecayed: RxList(),
    ToothType.LPRestoration: RxList(),
    ToothType.UDMissing: RxList(),
    ToothType.UDProsthesis: RxList(),
    ToothType.UDFilled: RxList(),
    ToothType.UDDecayed: RxList(),
    ToothType.UDRestoration: RxList(),
    ToothType.LDMissing: RxList(),
    ToothType.LDProsthesis: RxList(),
    ToothType.LDFilled: RxList(),
    ToothType.LDDecayed: RxList(),
    ToothType.LDRestoration: RxList(),
  };

  final Map<ToothType, String> toothListsName = {
    ToothType.UPMissing: 'Missing',
    ToothType.UPProsthesis: 'Prosthesis',
    ToothType.UPFilled: 'Filled',
    ToothType.UPDecayed: 'Decayed',
    ToothType.UPRestoration: 'Restoration done',
    ToothType.LPMissing: 'Missing',
    ToothType.LPProsthesis: 'Prosthesis',
    ToothType.LPFilled: 'Filled',
    ToothType.LPDecayed: 'Decayed',
    ToothType.LPRestoration: 'Restoration done',
    ToothType.UDMissing: 'Missing',
    ToothType.UDProsthesis: 'Prosthesis',
    ToothType.UDFilled: 'Filled',
    ToothType.UDDecayed: 'Decayed',
    ToothType.UDRestoration: 'Restoration done',
    ToothType.LDMissing: 'Missing',
    ToothType.LDProsthesis: 'Prosthesis',
    ToothType.LDFilled: 'Filled',
    ToothType.LDDecayed: 'Decayed',
    ToothType.LDRestoration: 'Restoration done',
  };

  void onSaveAndNext() async {
    bool success = false;

    switch (selectedTabIdx.value) {
      case 0:
        success = await submitStationHData();
        break;
      case 1:
        {
          if (isImpactedTooth.value &&
              impactedToothYesPosition.controller.text.isEmpty) {
            AppUtils.showSnackBar(
                'Please enter text for the Impacted Tooth Position field');
          } else {
            success = await updateOralData();
          }
        }
        break;
      case 2:
        success = await updateSensitivity();

        break;
      case 3:
        {
          if (isSoftTissuePathology.value &&
              (selectedSoftTissuePathology.isEmpty)) {
            AppUtils.showSnackBar(
                'Please select exact values for Soft Tissue Pathology');
          } else if (isTreatmentNeeded.value &&
              (selectedTreatmentNeeded.isEmpty)) {
            AppUtils.showSnackBar(
                'Please select exact values for Treatment Needed');
          } else {
            success = await updateSoftTissue();
          }
        }
        break;
      case 4:
        {
          if (isDentalSpecialistReferralNeeded.value &&
              (selectedDentalSpecialistReferral.isEmpty ||
                  selectedDentalSpecialistReferralFlag.isEmpty)) {
            AppUtils.showSnackBar('Please select exact values for Flag');
          } else {
            success = await updateDentalOtherObservation();
          }
        }
        break;
      case 5:
        {
          if (isAdditionalSpecialistReferralNeeded.value &&
              (selectedAdditionalSpecialistReferralTypeList.isEmpty ||
                  selectedAdditionalSpecialistFlag.isEmpty)) {
            AppUtils.showSnackBar(
                'Please select exact values for Type and Flag');
          } else if (selectedAdditionalSpecialistReferralTypeList
                  .contains('Other') &&
              otherAdditionalSpecialistReferralType.controller.text.isEmpty) {
            AppUtils.showSnackBar(
                'Please enter text for the Additional Specialist Referral Needed - Type - Other field');
          } else {
            success = await updateAdditionalOtherObservation();
          }
        }
        break;
      default:
        AppUtils.showSnackBar('Something went wrong');
        break;
    }

    if (success) {
      if (selectedTabIdx.value < 5) {
        selectedTabIdx.value = selectedTabIdx.value + 1;
      } else {
        StationHPreviewModel dataValue = StationHPreviewModel(
            upperPermanentMissingValue:
                stationHResponse.value?.upperPermanentMissing ?? '',
            upperPermanentProsthesisValue:
                stationHResponse.value?.upperPermanentProsthesis ?? '',
            upperPermanentFilledValue:
                stationHResponse.value?.upperPermanentFilled ?? '',
            upperPermanentDecayedValue:
                stationHResponse.value?.upperPermanentDecayed ?? '',
            upperPermanentRestorationDoneValue:
                stationHResponse.value?.upperPermanentRestorationDone ?? '',
            upperDeciduousMissingValue:
                stationHResponse.value?.upperDeciduousMissing ?? '',
            upperDeciduousProsthesisValue:
                stationHResponse.value?.upperDeciduousProsthesis ?? '',
            upperDeciduousFilledValue:
                stationHResponse.value?.upperDeciduousFilled ?? '',
            upperDeciduousDecayedValue:
                stationHResponse.value?.upperDeciduousDecayed ?? '',
            upperDeciduousRestorationDoneValue:
                stationHResponse.value?.upperDeciduousRestorationDone ?? '',
            lowerDeciduousMissingValue:
                stationHResponse.value?.lowerDeciduousMissing ?? '',
            lowerDeciduousProsthesisValue:
                stationHResponse.value?.lowerDeciduousProsthesis ?? '',
            lowerDeciduousFilledValue:
                stationHResponse.value?.lowerDeciduousFilled ?? '',
            lowerDeciduousDecayedValue:
                stationHResponse.value?.lowerDeciduousDecayed ?? '',
            lowerDeciduousRestorationDoneValue:
                stationHResponse.value?.lowerDeciduousRestorationDone ?? '',
            lowerPermanentMissingValue:
                stationHResponse.value?.lowerPermanentMissing ?? '',
            lowerPermanentProsthesisValue: stationHResponse.value?.lowerPermanentProsthesis ?? '',
            lowerPermanentFilledValue: stationHResponse.value?.lowerPermanentFilled ?? '',
            lowerPermanentDecayedValue: stationHResponse.value?.lowerPermanentDecayed ?? '',
            lowerPermanentRestorationDoneValue: stationHResponse.value?.lowerPermanentRestorationDone ?? '',
            oralHygieneValue: stationHResponse.value?.oralHygiene ?? '',
            plaqueValue: stationHResponse.value?.plaque ?? '',
            dentalStainsValue: stationHResponse.value?.dentalStains ?? '',
            malocclusionValue: stationHResponse.value?.malocclusion ?? '',
            crowdingValue: stationHResponse.value?.crowding ?? '',
            impactedToothValue: stationHResponse.value?.impactedTooth ?? '',
            wornEnamelValue: stationHResponse.value?.wornEnamel ?? '',
            sensitivityValue: stationHResponse.value?.sensitivity ?? '',
            untreatedCariesValue: stationHResponse.value?.untreatedCaries ?? '',
            cariesExperienceValue: stationHResponse.value?.cariesExperience ?? '',
            dentalSealantsPresentValue: stationHResponse.value?.dentalSealantsPresent ?? '',
            bracesValue: stationHResponse.value?.braces ?? '',
            denturesValue: stationHResponse.value?.dentures ?? '',
            softTissuePathologyValue: stationHResponse.value?.softTissuePathology ?? '',
            treatmentNeededValue: stationHResponse.value?.treatmentNeeded ?? '',
            dentalFlorosisValue: stationHResponse.value?.dentalFlorosis ?? '',
            otherObservationsValue: stationHResponse.value?.otherObservations ?? '',
            specialistReferralNeededTypeValue: stationHResponse.value?.specialistReferralNeededType ?? '',
            specialistReferralNeededFlagValue: stationHResponse.value?.specialistReferralNeededFlag ?? '',
            stationHDentalSRNeededYesTypeValue: stationHResponse.value?.stationHDentalSRNeededYesType ?? '',
            stationHDentalSRNeededYesFlagValue: stationHResponse.value?.stationHDentalSRNeededYesFlag ?? '');
        AppUtils.getBottomSheet(
          children: [
            GetBuilder<HomeController>(
              builder: (homeController) => FinalConfirmationWidget(
                title: "Station H details successfully saved",
                child: FinalHPreviewWidget(data: dataValue),
                onEdit: () => Get.back(),
                onSubmit: () {
                  Get.dialog(
                    ConfirmationDialog(
                      onConfirm: () async {
                        await AppStorage.clearStationHid();
                        await AppStorage.clearStudent();
                        clearFormData();
                        Get.offAllNamed(Routes.DASHBOARD);
                        AppUtils.showSnackBar('Created Successfully');
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        );
      }
    }
  }

  clearFormData() {
    //
    selectedTabIdx.value = 0;
    //
    toothListsName.clear();
    getSelectedTeethList(ToothType.UPRestoration).clear();
    getSelectedTeethList(ToothType.UPFilled).clear();
    getSelectedTeethList(ToothType.UPDecayed).clear();
    getSelectedTeethList(ToothType.UPMissing).clear();
    getSelectedTeethList(ToothType.UPProsthesis).clear();
    getSelectedTeethList(ToothType.LPDecayed).clear();
    getSelectedTeethList(ToothType.LPFilled).clear();
    getSelectedTeethList(ToothType.LPMissing).clear();
    getSelectedTeethList(ToothType.LPProsthesis).clear();
    getSelectedTeethList(ToothType.LPRestoration).clear();
    getSelectedTeethList(ToothType.UDDecayed).clear();
    getSelectedTeethList(ToothType.UDFilled).clear();
    getSelectedTeethList(ToothType.UDMissing).clear();
    getSelectedTeethList(ToothType.UDProsthesis).clear();
    getSelectedTeethList(ToothType.UDRestoration).clear();
    getSelectedTeethList(ToothType.LDDecayed).clear();
    getSelectedTeethList(ToothType.LDFilled).clear();
    getSelectedTeethList(ToothType.LDMissing).clear();
    getSelectedTeethList(ToothType.LDProsthesis).clear();
    getSelectedTeethList(ToothType.LDRestoration).clear();
    //
    isSatisfactory.value = true;
    isPlaque.value = false;
    isDentalStains.value = false;
    isMalocclusion.value = false;
    isCrowding.value = false;
    isImpactedTooth.value = false;
    isImpactedToothPosition.value = true;
    impactedToothYesPosition.controller.text = '';
    isWornEnamel.value = false;
    //
    isSensitivity.value = false;
    isUntreatedCaries.value = false;
    isCariesExperience.value = false;
    isDentalSealantsPresent.value = false;
    isBraces.value = false;
    isBridges.value = false;
    isDentures.value = false;
    isSoftTissuePathology.value = false;
    softTissuePathologyOptions.clear();
    otherSoftTissuePathology.controller.text = '';
    isTreatmentNeeded.value = false;
    treatmentNeededOptions.clear();
    otherTreatmentNeeded.controller.text = '';
    isDentalFlorosis.value = false;
    //
    otherObservation.controller.text = '';
    isDentalSpecialistReferralNeeded.value = false;
    dentalSpecialistReferralType.clear();
    flagOptions.clear();
    //
    isAdditionalSpecialistReferralNeeded.value = false;
    additionalSpecialistReferralType.clear();
    otherAdditionalSpecialistReferralType.controller.text = '';
  }

  void onPrevious() {
    if (selectedTabIdx.value > 0) {
      selectedTabIdx.value -= 1;
    }
  }

  // to get selected list
  RxList<String> getSelectedTeethList(ToothType type) {
    return toothLists[type] ?? RxList<String>();
  }

  // to highlight selected teeth
  void handelOnToothSelect(ToothType type, String value) {
    if (toothLists.containsKey(type)) {
      if (toothLists[type]!.contains(value)) {
        toothLists[type]!.remove(value);
      } else {
        toothLists[type]!.add(value);
      }
    }
  }

  //to clear selected teeth on uncheck
  void clearSelectedList(ToothType type) {
    if (toothLists.containsKey(type)) {
      toothLists[type]!.clear();
    }
  }

  void toggleSoftTissuePathology() {
    isSoftTissuePathology.toggle();
    selectedSoftTissuePathology.clear();
  }

  void toggleTreatmentNeeded() {
    isTreatmentNeeded.toggle();
    selectedTreatmentNeeded.clear();
  }

  /// Api Part

  String? getNonEmptyToothListNames(
      {required int startIdx, required int endIdx}) {
    List<String> nonEmptyToothListNames = [];

    for (int i = startIdx; i <= endIdx; i++) {
      if (toothLists.values.elementAt(i).isNotEmpty) {
        nonEmptyToothListNames.add(toothListsName.values.elementAt(i));
      }
    }

    String nonEmptyValue = '';
    if (nonEmptyToothListNames.isNotEmpty) {
      nonEmptyValue = nonEmptyToothListNames.join(',');
    }
    return nonEmptyValue.isNotEmpty ? nonEmptyValue : null;
  }

  String combineListToString(List<String>? list, {String separator = ','}) {
    if (list?.isEmpty ?? true) {
      return '';
    }
    return list!.join(separator);
  }

  Future<bool> submitStationHData() async {
    StationHRequest requestData = StationHRequest(
      hcid: AppStorage.getUser().stations?.first.hcid,
      hcpid: AppStorage.getUser().stations?.first.hcpId,
      infoseekId: AppStorage.getStudent().infoseekId,
      upperPermanent: getNonEmptyToothListNames(startIdx: 0, endIdx: 4),
      upperPermanentDecayed:
          combineListToString(toothLists[ToothType.UPDecayed]),
      upperPermanentMissing:
          combineListToString(toothLists[ToothType.UPMissing]),
      upperPermanentFilled: combineListToString(toothLists[ToothType.UPFilled]),
      upperPermanentProsthesis:
          combineListToString(toothLists[ToothType.UPProsthesis]),
      upperPermanentRestorationDone:
          combineListToString(toothLists[ToothType.UPRestoration]),
      upperDeciduous: getNonEmptyToothListNames(startIdx: 10, endIdx: 14),
      upperDeciduousDecayed:
          combineListToString(toothLists[ToothType.UDDecayed]),
      upperDeciduousMissing:
          combineListToString(toothLists[ToothType.UDMissing]),
      upperDeciduousFilled: combineListToString(toothLists[ToothType.UDFilled]),
      upperDeciduousProsthesis:
          combineListToString(toothLists[ToothType.UDProsthesis]),
      upperDeciduousRestorationDone:
          combineListToString(toothLists[ToothType.UDRestoration]),
      lowerDeciduous: getNonEmptyToothListNames(startIdx: 15, endIdx: 19),
      lowerDeciduousDecayed:
          combineListToString(toothLists[ToothType.LDDecayed]),
      lowerDeciduousMissing:
          combineListToString(toothLists[ToothType.LDMissing]),
      lowerDeciduousFilled: combineListToString(toothLists[ToothType.LDFilled]),
      lowerDeciduousProsthesis:
          combineListToString(toothLists[ToothType.LDProsthesis]),
      lowerDeciduousRestorationDone:
          combineListToString(toothLists[ToothType.LDRestoration]),
      lowerPermanent: getNonEmptyToothListNames(startIdx: 5, endIdx: 9),
      lowerPermanentDecayed:
          combineListToString(toothLists[ToothType.LPDecayed]),
      lowerPermanentMissing:
          combineListToString(toothLists[ToothType.LPMissing]),
      lowerPermanentFilled: combineListToString(toothLists[ToothType.LPFilled]),
      lowerPermanentProsthesis:
          combineListToString(toothLists[ToothType.LPProsthesis]),
      lowerPermanentRestorationDone:
          combineListToString(toothLists[ToothType.LPRestoration]),
      entryTime:
          '${TimeOfDay.fromDateTime(DateTime.now()).hour}:${TimeOfDay.fromDateTime(DateTime.now()).minute}',
    );

    try {
      LoadingUtils.showLoader();
      RepoResponse<GenericResponse> response =
          await repository.submitStationHData(requestData: requestData);

      if (response.data?.status == 200 || response.data?.status == 201) {
        LoadingUtils.hideLoader();
        final id = response.data?.result["id"];
        AppStorage.setStationHId(id);
        return true;
      } else {
        LoadingUtils.hideLoader();

        AppUtils.showErrorMessage(response);
        return false;
      }
    } catch (exp) {
      print(exp);
      if (LoadingUtils.isLoaderShowing) LoadingUtils.hideLoader();
      return false;
    }
  }

  Future<bool> updateOralData() async {
    OralHygieneRequest requestData = OralHygieneRequest(
      oralHygiene: isSatisfactory.value ? 'Satisfactory' : 'Poor',
      plaque: isPlaque.value ? 'Yes' : 'No',
      dentalStains: isDentalStains.value ? 'Yes' : 'No',
      malocclusion: isMalocclusion.value ? 'Yes' : 'No',
      crowding: isCrowding.value ? 'Yes' : 'No',
      impactedTooth: isImpactedTooth.value ? 'Yes' : 'No',
      impactedToothYes: isImpactedToothPosition.value ? 'Position' : 'null',
      // 'Position',
      impactedToothYesPosition: impactedToothYesPosition.controller.text,
      wornEnamel: isWornEnamel.value ? 'Yes' : 'No',
    );

    try {
      if (AppStorage.isStationHIdExists()) {
        // if (isImpactedTooth.value) {
        //   impactedToothFormKey.currentState!.validate();
        //   return false;
        // }
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response =
            await repository.updateOralHygiene(
                requestData: requestData, id: AppStorage.getStationHId());

        if (response.data?.status == 200 || response.data?.status == 201) {
          LoadingUtils.hideLoader();
          return true;
        } else {
          LoadingUtils.hideLoader();
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

  Future<bool> updateSensitivity() async {
    SensitivityRequest requestData = SensitivityRequest(
      sensitivity: isSensitivity.value ? 'Yes' : 'No',
      untreatedCaries: isUntreatedCaries.value ? 'Yes' : 'No',
      cariesExperience: isCariesExperience.value ? 'Yes' : 'No',
      dentalSealantsPresent: isDentalSealantsPresent.value ? 'Yes' : 'No',
      braces: isBraces.value ? 'Yes' : 'No',
      bracesYes: bracesOn.join(','),
      bridges: isBridges.value ? 'Yes' : 'No',
      bridgesYes: bridgesOn.join(','),
      dentures: isDentures.value ? 'Yes' : 'No',
      denturesYes: denturesOn.join(','),
    );

    try {
      if (AppStorage.isStationHIdExists()) {
        if (isBraces.value && bracesOn.isEmpty) {
          AppUtils.showSnackBar('Please choose Braces');
          return false;
        }
        if (isBridges.value && bridgesOn.isEmpty) {
          AppUtils.showSnackBar('Please choose Bridges');
          return false;
        }
        if (isDentures.value && denturesOn.isEmpty) {
          AppUtils.showSnackBar('Please choose Dentures');
          return false;
        }
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response =
            await repository.updateSensitivity(
                requestData: requestData, id: AppStorage.getStationHId());

        if (response.data?.status == 200 || response.data?.status == 201) {
          LoadingUtils.hideLoader();
          return true;
        } else {
          LoadingUtils.hideLoader();
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

  Future<bool> updateSoftTissue() async {
    SoftTissueRequest requestData = SoftTissueRequest(
      softTissuePathology: isSoftTissuePathology.value ? 'Yes' : 'No',
      softTissuePathologyYes: selectedSoftTissuePathology.join(','),
      softTissuePathologyYesOther: otherSoftTissuePathology.controller.text,
      treatmentNeeded: isTreatmentNeeded.value ? 'Yes' : 'No',
      treatmentNeededYes: selectedTreatmentNeeded.join(','),
      treatmentNeededYesOther: otherTreatmentNeeded.controller.text,
      dentalFlorosis: isDentalFlorosis.value ? 'Yes' : 'No',
    );
    try {
      if (AppStorage.isStationHIdExists()) {
        if (selectedSoftTissuePathology.contains('Other')) {
          bool isValid =
              otherSoftTissuePathologyFormKey.currentState!.validate();
          if (!isValid) return false;
        }
        if (selectedTreatmentNeeded.contains('Other')) {
          bool isValid = otherTreatmentNeededFormKey.currentState!.validate();
          if (!isValid) return false;
        }
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response =
            await repository.updateSoftTissue(
                requestData: requestData, id: AppStorage.getStationHId());

        if (response.data?.status == 200 || response.data?.status == 201) {
          LoadingUtils.hideLoader();
          return true;
        } else {
          LoadingUtils.hideLoader();
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

  Future<bool> updateDentalOtherObservation() async {
    DentalOtherObservationRequest requestData = DentalOtherObservationRequest(
      otherObservations: otherObservation.controller.text,
      stationHDentalSRNeeded:
          isDentalSpecialistReferralNeeded.value ? 'Yes' : 'No',
      stationHDentalSRNeededYesType: selectedDentalSpecialistReferral.value,
      stationHDentalSRNeededYesFlag: selectedDentalSpecialistReferralFlag.value,
    );
    try {
      if (AppStorage.isStationHIdExists()) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response =
            await repository.updateDentalOtherObservation(
                requestData: requestData, id: AppStorage.getStationHId());

        if (response.data?.status == 200 || response.data?.status == 201) {
          LoadingUtils.hideLoader();
          return true;
        } else {
          LoadingUtils.hideLoader();
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

  Future<bool> updateAdditionalOtherObservation() async {
    StationHAdditionalOtherObservationRequest requestData =
        StationHAdditionalOtherObservationRequest(
      otherObservations: '',
      specialistReferralNeeded:
          isAdditionalSpecialistReferralNeeded.value ? 'Yes' : 'No',
      specialistReferralNeededType:
          selectedAdditionalSpecialistReferralTypeList.join(','),
      specialistReferralNeededFlag: selectedAdditionalSpecialistFlag.value,
      other: otherAdditionalSpecialistReferralType.controller.text,
      endTime:
          '${TimeOfDay.fromDateTime(DateTime.now()).hour}:${TimeOfDay.fromDateTime(DateTime.now()).minute}',
    );

    try {
      if (AppStorage.isStationHIdExists()) {
        RepoResponse<GenericResponse> response =
            await repository.stationHUpdateAdditionalOtherObservation(
                requestData: requestData, id: AppStorage.getStationHId());

        if (response.data?.status == 200 || response.data?.status == 201) {
          await getStationHDetails();
          return true;
        } else {
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

  Future<bool> getStationHDetails() async {
    try {
      RepoResponse<GenericResponse> response =
          await repository.getStationHDetails(id: AppStorage.getStationHId());
      if (response.data?.status == 200 || response.data?.status == 201) {
        var data = response.data?.result as List;
        stationHResponse.value = StationHResponse.fromJson(data.first);
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
