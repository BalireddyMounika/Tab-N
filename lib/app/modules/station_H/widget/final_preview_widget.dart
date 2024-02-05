import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_H/controllers/station_h_controller.dart';
import 'package:nivish/widgets/text/common_text.dart';
import '../../../../widgets/Age_Gender_validations.dart';
import '../../../../widgets/finnal_confirmation_widget.dart';
import 'H_preview_model.dart';

class FinalHPreviewWidget extends GetView<StationHController> {
  final StationHPreviewModel data;
  const FinalHPreviewWidget({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility (
        visible: StudentInfo.calculateAge() >= 2,
          child:
        heading(text: 'Upper Permanent'),
        ),
        const SizedBox(height: Dimens.gapX2),
        Visibility(
          visible: StudentInfo.calculateAge() >= 2,
          child:
        nameValueWidget(
            name: "Missing", value: data.upperPermanentMissingValue),
        ),
        Visibility(
          visible: StudentInfo.calculateAge() >= 2,
          child:
        nameValueWidget(
            name: "Prosthesis", value: data.upperPermanentProsthesisValue),
        ),
        Visibility(
          visible: StudentInfo.calculateAge() >= 2,child:
        nameValueWidget(name: "Filled", value: data.upperPermanentFilledValue),
        ),
        Visibility(
          visible: StudentInfo.calculateAge() >= 2,child:
        nameValueWidget(
            name: "Decayed", value: data.upperPermanentDecayedValue),
        ),
        Visibility(
          visible: StudentInfo.calculateAge() >= 2,
          child:
        nameValueWidget(
            name: "Restoration Done",
            value: data.upperPermanentRestorationDoneValue),
        ),
        const SizedBox(height: Dimens.gapX3),
        Visibility(
          visible: StudentInfo.calculateAge() <18,
          child:
        heading(text: 'Upper Deciduous'),
        ),
        const SizedBox(height: Dimens.gapX2),
        Visibility(
          visible: StudentInfo.calculateAge() <18,
          child:
        nameValueWidget(
            name: "Missing", value: data.upperDeciduousMissingValue),
        ),
        Visibility(
          visible: StudentInfo.calculateAge() <18,
          child:
        nameValueWidget(
            name: "Prosthesis", value: data.upperDeciduousProsthesisValue),
        ),
        Visibility(
          visible: StudentInfo.calculateAge() <18,
          child:
        nameValueWidget(name: "Filled", value: data.upperDeciduousFilledValue),
        ),
        Visibility(
          visible: StudentInfo.calculateAge() <18,
          child:
        nameValueWidget(
            name: "Decayed", value: data.upperDeciduousDecayedValue),
        ),
        Visibility(
          visible: StudentInfo.calculateAge() <18,
          child:
        nameValueWidget(
            name: "Restoration Done",
            value: data.upperDeciduousRestorationDoneValue),
        ),
        const SizedBox(height: Dimens.gapX3),
        Visibility(
          visible: StudentInfo.calculateAge() <18,child:
        heading(text: 'Lower Deciduous'),
        ),
        const SizedBox(height: Dimens.gapX2),
        Visibility(
          visible: StudentInfo.calculateAge() <18,child:
        nameValueWidget(
            name: "Missing", value: data.lowerDeciduousMissingValue),
        ),
        Visibility(
          visible: StudentInfo.calculateAge() <18,child:
        nameValueWidget(
            name: "Prosthesis", value: data.lowerDeciduousProsthesisValue),
        ),
        Visibility(
          visible: StudentInfo.calculateAge() <18,child:
        nameValueWidget(name: "Filled", value: data.lowerDeciduousFilledValue),
        ),
        Visibility(
          visible: StudentInfo.calculateAge() <18,child:
        nameValueWidget(
            name: "Decayed", value: data.lowerDeciduousDecayedValue),
        ),
        Visibility(
          visible: StudentInfo.calculateAge() <18,child:
        nameValueWidget(
            name: "Restoration Done",
            value: data.lowerDeciduousRestorationDoneValue),
        ),
        const SizedBox(height: Dimens.gapX3),
        Visibility(
          visible: StudentInfo.calculateAge() >= 2,child:
        heading(text: 'Lower Permanent'),
        ),
        const SizedBox(height: Dimens.gapX2),
        Visibility(
          visible: StudentInfo.calculateAge() >= 2,child:
        nameValueWidget(
            name: "Missing", value: data.lowerPermanentMissingValue),
        ),
        Visibility(
          visible: StudentInfo.calculateAge() >= 2,child:
        nameValueWidget(
            name: "Prosthesis", value: data.lowerPermanentProsthesisValue),
        ),
        Visibility(
          visible: StudentInfo.calculateAge() >= 2,child:
        nameValueWidget(name: "Filled", value: data.lowerPermanentFilledValue),
        ),
        Visibility(
          visible: StudentInfo.calculateAge() >= 2,child:
        nameValueWidget(
            name: "Decayed", value: data.lowerPermanentDecayedValue),
        ),
        Visibility(
          visible: StudentInfo.calculateAge() >= 2,child:
        nameValueWidget(
            name: "Restoration Done",
            value: data.lowerPermanentRestorationDoneValue),
        ),
        const Divider(thickness: 2),
        nameValueWidget(name: "Oral Hygiene", value: data.oralHygieneValue),
        nameValueWidget(name: "Plaque", value: data.plaqueValue),
        nameValueWidget(name: "Dental Strain", value: data.dentalStainsValue),
        nameValueWidget(name: "Malocclusion", value: data.malocclusionValue),
        nameValueWidget(name: "Crowing", value: data.crowdingValue),
        nameValueWidget(name: "Impacted tooth", value: data.impactedToothValue),
        nameValueWidget(name: "Worn Enamel", value: data.wornEnamelValue),
        nameValueWidget(name: "Sensitivity", value: data.sensitivityValue),
        nameValueWidget(
            name: "Untreated Caries", value: data.untreatedCariesValue),
        nameValueWidget(
            name: "Caries Experience", value: data.cariesExperienceValue),
        nameValueWidget(
            name: "Dental Sealant Present",
            value: data.dentalSealantsPresentValue),
        nameValueWidget(name: "Braces", value: data.bracesValue),
        nameValueWidget(name: "Dentures", value: data.denturesValue),
        nameValueWidget(
            name: "Soft Tissue Pathology",
            value: data.softTissuePathologyValue),
        Visibility(
          visible: data.softTissuePathologyValue == 'Yes',
          child: label(
                  text:
                      "${controller.stationHResponse.value?.softTissuePathologyYes}")
              .paddingSymmetric(horizontal: Dimens.gapX1),
        ),
        const SizedBox(
          height: Dimens.gapX1,
        ),
        nameValueWidget(
            name: "Treatment Needed", value: data.treatmentNeededValue),
        Visibility(
          visible: data.treatmentNeededValue == 'Yes',
          child: label(
                  text:
                      "${controller.stationHResponse.value?.treatmentNeededYes}")
              .paddingSymmetric(horizontal: Dimens.gapX1),
        ),
        const SizedBox(
          height: Dimens.gapX1,
        ),
        nameValueWidget(
            name: "Dental Florosis", value: data.dentalFlorosisValue),
        nameValueWidget(
            name: "Other Observation", value: data.otherObservationsValue),
        heading(text: 'Dental Specialist Referral Needed'),
        nameValueWidget(
            name: "Type", value: data.stationHDentalSRNeededYesTypeValue),
        nameValueWidget(
            name: "Flag", value: data.stationHDentalSRNeededYesFlagValue),
        heading(text: 'Additional Specialist Referral Needed'),
        nameValueWidget(
            name: "Type", value: data.specialistReferralNeededTypeValue),
        nameValueWidget(
            name: "Flag", value: data.specialistReferralNeededFlagValue),
      ],
    ));
  }
}
