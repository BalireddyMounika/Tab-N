import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_E/widget/E_preview_model.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/Age_Gender_validations.dart';
import '../../../data/values/app_string.dart';
import '../controllers/station_e_controller.dart';

class FinalEPreviewWidget extends GetView<StationEController> {
  final StationEPreviewModel data;
  const FinalEPreviewWidget({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Dimens.heightGap2,
      (StudentInfo.calculateAge() < 2)
          ? Column(
              children: [
                nameValueWidget(name: "Mobility", value: data.mobilityValue),
                Visibility(
                  visible: data.mobilityValue == 'Can not Walk',
                  child: nameValueWidget(
                      name: "Mobility CanNot Walk Value",
                      value: data.canNotWalkValue),
                ),
                Visibility(
                  visible: data.mobilityValue == 'Can not Walk' &&
                      data.canNotWalkValue == 'Other',
                  child: nameValueWidget(
                      name: "Mobility CanNot Walk Other",
                      value: data.canNotWalkOtherValue),
                ),
              ],
            )
          : Column(
              children: [
                nameValueWidget(name: "Ambulant", value: data.ambulantValue),
                Visibility(
                    visible: data.ambulantValue == 'No',
                    child: nameValueWidget(
                        name: "Ambulant No Value",
                        value: data.ambulantNoValue)),
              ],
            ),
      nameValueWidget(name: "Gait", value: data.gaitNormalValue),
      Visibility(
          visible: data.gaitNormalValue == 'Abnormal',
          child: nameValueWidget(
              name: "Gait Abnormal", value: data.gaitAbNormalValue)),
      Visibility(
        visible: (data.gaitNormalValue == 'Abnormal' &&
            data.gaitAbNormalValue == 'Limp'),
        child: nameValueWidget(
            name: "Gait Abnormal Limp", value: data.gaitAbnormalLimpValue),
      ),
      Visibility(
        visible: data.gaitNormalValue == 'Abnormal' &&
            data.gaitAbNormalValue == 'Limp' &&
            data.gaitAbnormalLimpOtherValue == 'Other causes',
        child: nameValueWidget(
            name: "Gait Abnormal Limp Other",
            value: data.gaitAbnormalLimpOtherValue),
      ),
      if (StudentInfo.calculateAge() >= 2)
        Column(
          children: [
            nameValueWidget(
                name: "Wear Brace / Support", value: data.wearBraceValue),
            Visibility(
              visible: data.wearBraceValue == 'Yes',
              child: nameValueWidget(
                  name: "Wear Brace / Support Yes Value",
                  value: data.wearBraceYesValue),
            ),
            nameValueWidget(name: "Prosthesis", value: data.prosthesisValue),
            Visibility(
              visible: data.prosthesisValue == 'Yes',
              child: nameValueWidget(
                  name: "Prosthesis Yes Value", value: data.prosthesisYesValue),
            ),
            Visibility(
              visible: controller.selectedMobilityList.contains('Other') &&
                  !controller.isCanWalk.value,
              child: nameValueWidget(
                  name: "Prosthesis Yes Other Value",
                  value: data.prosthesisYesOtherValue),
            ),
          ],
        ),
      nameValueWidget(
          name: "Spine Appearance", value: data.spineAppearanceValue),
      Visibility(
        visible: data.spineAppearanceValue == 'Abnormal',
        child: nameValueWidget(
            name: "Spine Appearance Abnormal Value",
            value: data.spineAppearanceAbnormalValue),
      ),
      Visibility(
        visible: data.spineAppearanceValue == 'Abnormal' &&
            data.spineAppearanceAbnormalValue == 'Other',
        child: nameValueWidget(
            name: "Spine Appearance Abnormal Other Value",
            value: data.spineAppearanceAbnormalOtherValue),
      ),
      nameValueWidget(
        name: "Shoulder Griddle Appearance",
        value: data.shoulderValue,
      ),
      Visibility(
        visible: data.shoulderValue == 'Abnormal',
        child: nameValueWidget(
          name: "Shoulder Griddle Appearance Abnormal",
          value: data.shoulderAbnormalValue,
        ),
      ),
      Visibility(
        visible: data.shoulderValue == 'Abnormal' &&
            data.shoulderAbnormalValue == 'Other',
        child: nameValueWidget(
          name: "Shoulder Griddle Appearance Abnormal Other",
          value: data.shoulderAbnormalOtherValue,
        ),
      ),
      nameValueWidget(
          name: "Spine Mobility", value: data.spineMobilityNormalValue),
      Visibility(
        visible: data.spineMobilityNormalValue == 'Restricted movement',
        child: nameValueWidget(
            name: "Spine Mobility Restricted",
            value: data.spineMobilityRestrictedValue),
      ),
      nameValueWidget(
          name: "Neck Mobility", value: data.neckMobilityNormalValue),
      Visibility(
        visible: data.neckMobilityNormalValue == 'Restricted movement',
        child: nameValueWidget(
            name: "Neck Mobility Restricted",
            value: data.neckMobilityRestrictedValue),
      ),
      Dimens.heightGap2,
      const Text(
        "Upper Limb - Right",
        style: AppStyles.tsBlackSemi20,
      ),
      Dimens.heightGap2,
      nameValueWidget(
          name: "Appearance", value: data.upperLimbAppearanceRightNormalValue),
      Visibility(
        visible: data.upperLimbAppearanceRightNormalValue == 'Abnormal',
        child: nameValueWidget(
            name: "Appearance Abnormal",
            value: data.uLRightAppearanceAbnormalValue),
      ),
      Dimens.heightGap2,
      const Text(
        "Motor Function",
        style: AppStyles.tsBlackMedium19,
      ),
      Dimens.heightGap2,
      nameValueWidget(name: "Tone", value: data.uLRightMotorFunctionToneValue),
      nameValueWidget(
          name: "Range Of Movement",
          value: data.uLRightMotorFunctionRangeOfMovementValue),
      Visibility(
        visible: data.uLRightMotorFunctionRangeOfMovementValue == 'Abnormal',
        child: nameValueWidget(
            name: "Range Of Movement Abnormal",
            value: data.uLRightMFRMAbnormalValue),
      ),
      Visibility(
        visible: data.uLRightMFRMAbnormalValue == 'Hyper Flexible',
        child: nameValueWidget(
            name: "Range Of Movement Hyper Flexible",
            value: data.uLRightMFRMAbnormalHyperFlexibleValue),
      ),
      Visibility(
        visible: data.uLRightMFRMAbnormalValue == 'Restricted',
        child: nameValueWidget(
            name: "Range Of Movement Restricted",
            value: data.uLRightMFRMAbnormalRestrictedValue),
      ),
      if (StudentInfo.calculateAge() >= 2)
        nameValueWidget(
            name: "Strength", value: data.uLRightMotorFunctionStrengthValue),
      Dimens.heightGap2,
      const Text(
        "Deep Tendon Reflexes",
        style: AppStyles.tsBlackMedium19,
      ),
      Dimens.heightGap2,
      nameValueWidget(
          name: "Biceps", value: data.uLRightDeepTendonReflexesBicepsValue),
      Visibility(
        visible: data.uLRightDeepTendonReflexesBicepsValue == 'Abnormal',
        child: nameValueWidget(
            name: "Biceps Abnormal", value: data.uLRightDTRBicepsAbnormalValue),
      ),
      nameValueWidget(
          name: "Radial", value: data.uLRightDeepTendonReflexesRadialValue),
      Visibility(
        visible: data.uLRightDeepTendonReflexesRadialValue == 'Abnormal',
        child: nameValueWidget(
            name: "Radial Abnormal", value: data.uLRightDTRRadialAbnormalValue),
      ),
      nameValueWidget(
          name: "Sensory Function",
          value: data.uLRightDeepTendonReflexesSensoryFunctionValue),
      Visibility(
        visible: data.uLRightDeepTendonReflexesSensoryFunctionValue ==
                'Abnormal' &&
            controller.selectedSensoryFunctionRight.contains('Touch Abnormal'),
        child: nameValueWidget(
            name: "Sensory Function Touch Abnormal",
            value: data.uLRightDTRSFAbnormalTouchValue),
      ),
      Visibility(
        visible: data.uLRightDeepTendonReflexesSensoryFunctionValue ==
                'Abnormal' &&
            controller.selectedSensoryFunctionRight.contains('Pain Present'),
        child: nameValueWidget(
            name: "Sensory Function Pain Present",
            value: "${data.uLRightDTRSFAbnormalPainPresentValue}"),
      ),
      Visibility(
        visible:
            data.uLRightDeepTendonReflexesSensoryFunctionValue == 'Abnormal' &&
                controller.selectedSensoryFunctionRight
                    .contains('Pressure Abnormal'),
        child: nameValueWidget(
            name: "Sensory Function Pressure Abnormal",
            value: "${data.uLRightDTRSFAbnormalPressureAbnormalValue}"),
      ),
      Visibility(
        visible:
            data.uLRightDeepTendonReflexesSensoryFunctionValue == 'Abnormal' &&
                controller.selectedSensoryFunctionRight
                    .contains('Tenderness Present'),
        child: nameValueWidget(
            name: "Sensory Function Tenderness Present",
            value: "${data.uLRightDTRSFAbnormalTendernessPresentValue}"),
      ),
      Dimens.heightGap2,
      const Text(
        "Upper Limb - Left",
        style: AppStyles.tsBlackSemi20,
      ),
      Dimens.heightGap2,
      nameValueWidget(name: "Appearance", value: data.uLLeftAppearanceValue),
      Visibility(
        visible: data.uLLeftAppearanceValue == 'Abnormal',
        child: nameValueWidget(
            name: "Appearance Abnormal",
            value: data.uLLeftAppearanceAbnormalValue),
      ),
      Dimens.heightGap2,
      const Text("Motor Function", style: AppStyles.tsBlackMedium19),
      Dimens.heightGap2,
      nameValueWidget(name: "Tone", value: data.uLLeftMotorFunctionToneValue),
      nameValueWidget(
          name: "Range Of Movement",
          value: data.uLLeftMotorFunctionRangeOfMovementValue),
      Visibility(
        visible: data.uLLeftMotorFunctionRangeOfMovementValue == 'Abnormal',
        child: nameValueWidget(
            name: "Range Of Movement Abnormal",
            value: data.uLLeftMFRMAbnormalValue),
      ),
      Visibility(
        visible: data.uLLeftMFRMAbnormalValue == 'Hyper Flexible',
        child: nameValueWidget(
            name: "Range Of Movement Hyper Flexible",
            value: data.uLLeftMFRMAbnormalHyperFlexibleValue),
      ),
      Visibility(
        visible: data.uLLeftMFRMAbnormalValue == 'Restricted',
        child: nameValueWidget(
            name: "Range Of Movement Restricted",
            value: data.uLLeftMFRMAbnormalRestrictedValue),
      ),
      if (StudentInfo.calculateAge() >= 2)
        nameValueWidget(
            name: "Strength", value: data.uLLeftMotorFunctionStrengthValue),
      Dimens.heightGap2,
      const Text("Deep Tendon Reflexes", style: AppStyles.tsBlackMedium19),
      Dimens.heightGap2,
      nameValueWidget(
          name: "Biceps", value: data.uLLeftDeepTendonReflexesBicepsValue),
      Visibility(
        visible: data.uLLeftDeepTendonReflexesBicepsValue == 'Abnormal',
        child: nameValueWidget(
            name: "Biceps Abnormal", value: data.uLLeftDTRBicepsAbnormalValue),
      ),
      nameValueWidget(
          name: "Radial", value: data.uLLeftDeepTendonReflexesRadialValue),
      Visibility(
        visible: data.uLLeftDeepTendonReflexesRadialValue == "Abnormal",
        child: nameValueWidget(
            name: "Radial Abnormal", value: data.uLLeftDTRRadialAbnormalValue),
      ),
      Visibility(
        child: nameValueWidget(
            name: "Sensory Function",
            value: data.uLLeftDeepTendonReflexesSensoryFunctionValue),
      ),
      Visibility(
        visible: data.uLLeftDeepTendonReflexesSensoryFunctionValue ==
                'Abnormal' &&
            controller.selectedSensoryFunctionLeft.contains('Touch Abnormal'),
        child: nameValueWidget(
            name: "Sensory Function Touch Abnormal",
            value: data.uLLeftDTRSFAbnormalTouchValue),
      ),
      Visibility(
        visible:
            data.uLLeftDeepTendonReflexesSensoryFunctionValue == 'Abnormal' &&
                controller.selectedSensoryFunctionLeft.contains('Pain Present'),
        child: nameValueWidget(
            name: "Sensory Function Pain Present",
            value: "${data.uLLeftDTRSFAbnormalPainPresentValue}"),
      ),
      Visibility(
        visible:
            data.uLLeftDeepTendonReflexesSensoryFunctionValue == 'Abnormal' &&
                controller.selectedSensoryFunctionLeft
                    .contains('Pressure Abnormal'),
        child: nameValueWidget(
            name: "Sensory Function Pressure Abnormal",
            value: "${data.uLLeftDTRSFAbnormalPressureAbnormalValue}"),
      ),
      Visibility(
        visible:
            data.uLLeftDeepTendonReflexesSensoryFunctionValue == 'Abnormal' &&
                controller.selectedSensoryFunctionLeft
                    .contains('Tenderness Present'),
        child: nameValueWidget(
            name: "Sensory Function Tenderness Present",
            value: "${data.uLLeftDTRSFAbnormalTendernessPresentValue}"),
      ),
      Dimens.heightGap2,
      const Text(
        "Lower Limb - Right",
        style: AppStyles.tsBlackSemi20,
      ),
      Dimens.heightGap2,
      nameValueWidget(name: "Appearance", value: data.lLRightAppearanceValue),
      Visibility(
        visible: data.lLRightAppearanceValue == 'Abnormal',
        child: nameValueWidget(
            name: "Appearance Abnormal",
            value: data.lLRightAppearanceAbnormalValue),
      ),
      Dimens.heightGap2,
      const Text("Motor Function", style: AppStyles.tsBlackMedium19),
      Dimens.heightGap2,
      nameValueWidget(name: "Tone", value: data.lLRightMotorFunctionToneValue),
      nameValueWidget(
          name: "Range Of Movement",
          value: data.lLRightMotorFunctionRangeOfMovementValue),
      if (StudentInfo.calculateAge() >= 5)
        nameValueWidget(
            name: "Strength", value: data.lLRightMotorFunctionStrengthValue
            // controller.lowerAgeLowerLimbRight.toString()
            ),
      nameValueWidget(name: "Knee", value: data.lLRightMotorFunctionKneeValue),
      Visibility(
        visible: data.lLRightMotorFunctionKneeValue == 'Abnormal',
        child: nameValueWidget(
            name: "Knee Abnormal",
            value: data.lLRightMotorFunctionKneeAbnormalValue),
      ),
      Dimens.heightGap2,
      const Text("Deep Tendon Reflexes", style: AppStyles.tsBlackMedium19),
      Dimens.heightGap2,
      nameValueWidget(
          name: "Sensory Function",
          value: data.lLRightDeepTendonReflexesSensoryFunctionValue),
      Visibility(
        visible:
            data.lLRightDeepTendonReflexesSensoryFunctionValue == 'Abnormal' &&
                controller.selectedSensoryFunctionLowerRight
                    .contains('Touch Abnormal'),
        child: nameValueWidget(
            name: "Sensory Function Touch Abnormal",
            value: data.lLRightDTRSFAbnormalTouchValue),
      ),
      Visibility(
        visible:
            data.lLRightDeepTendonReflexesSensoryFunctionValue == 'Abnormal' &&
                controller.selectedSensoryFunctionLowerRight
                    .contains('Pain Present'),
        child: nameValueWidget(
            name: "Sensory Function Pain Present",
            value: "${data.lLRightDTRSFAbnormalPainPresentValue}"),
      ),
      Visibility(
        visible:
            data.lLRightDeepTendonReflexesSensoryFunctionValue == 'Abnormal' &&
                controller.selectedSensoryFunctionLowerRight
                    .contains('Pressure Abnormal'),
        child: nameValueWidget(
            name: "Sensory Function Pressure Abnormal",
            value: "${data.lLRightDTRSFAbnormalPressureAbnormalValue}"),
      ),
      Visibility(
        visible:
            data.lLRightDeepTendonReflexesSensoryFunctionValue == 'Abnormal' &&
                controller.selectedSensoryFunctionLowerRight
                    .contains('Tenderness Present'),
        child: nameValueWidget(
            name: "Sensory Function Tenderness Present",
            value: "${data.lLRightDTRSFAbnormalTendernessPresentValue}"),
      ),
      Dimens.heightGap2,
      const Text(
        "Lower Limb - Left",
        style: AppStyles.tsBlackSemi20,
      ),
      Dimens.heightGap2,
      nameValueWidget(name: "Appearance", value: data.lLLeftAppearanceValue),
      Visibility(
        visible: data.lLLeftAppearanceValue == 'Abnormal',
        child: nameValueWidget(
            name: "Appearance Abnormal",
            value: data.lLLeftAppearanceAbnormalValue),
      ),
      Dimens.heightGap2,
      const Text("Motor Function", style: AppStyles.tsBlackMedium19),
      Dimens.heightGap2,
      nameValueWidget(name: "Tone", value: data.lLLeftMotorFunctionToneValue),
      nameValueWidget(
          name: "Range Of Movement",
          value: data.lLLeftMotorFunctionRangeOfMovementValue),
      if (StudentInfo.calculateAge() >= 5)
        nameValueWidget(
            name: "Strength", value: data.lLLeftMotorFunctionStrengthValue),
      nameValueWidget(name: "Knee", value: data.lLLeftMotorFunctionKneeValue),
      Visibility(
        visible: data.lLLeftMotorFunctionKneeValue == 'Abnormal',
        child: nameValueWidget(
            name: "Knee Abnormal",
            value: data.lLLeftMotorFunctionKneeAbnormalValue),
      ),
      Dimens.heightGap2,
      const Text("Deep Tendon Reflexes", style: AppStyles.tsBlackMedium19),
      Dimens.heightGap2,
      nameValueWidget(
          name: "Sensory Function",
          value: data.lLLeftDeepTendonReflexesSensoryFunctionValue),
      Visibility(
        visible:
            data.lLLeftDeepTendonReflexesSensoryFunctionValue == 'Abnormal' &&
                controller.selectedSensoryFunctionLowerLeft
                    .contains('Touch Abnormal'),
        child: nameValueWidget(
            name: "Sensory Function Touch",
            value: data.lLLeftDTRSFAbnormalTouchValue),
      ),
      Visibility(
        visible:
            data.lLLeftDeepTendonReflexesSensoryFunctionValue == 'Abnormal' &&
                controller.selectedSensoryFunctionLowerLeft
                    .contains('Pain Present'),
        child: nameValueWidget(
            name: "Sensory Function Pain Present",
            value: "${data.lLLeftDTRSFAbnormalPainPresentValue}"),
      ),
      Visibility(
        visible:
            data.lLLeftDeepTendonReflexesSensoryFunctionValue == 'Abnormal' &&
                controller.selectedSensoryFunctionLowerLeft
                    .contains('Pressure Abnormal'),
        child: nameValueWidget(
            name: "Sensory Function Pressure Abnormal",
            value: "${data.lLLeftDTRSFAbnormalPressureAbnormalValue}"),
      ),
      Visibility(
        visible:
            data.lLLeftDeepTendonReflexesSensoryFunctionValue == 'Abnormal' &&
                controller.selectedSensoryFunctionLowerLeft
                    .contains('Tenderness Present'),
        child: nameValueWidget(
            name: "Sensory Function Tenderness Present",
            value: "${data.lLLeftDTRSFAbnormalTendernessPresentValue}"),
      ),
      Visibility(
        visible: controller.otherObservations.controller.text.isNotEmpty,
        child: nameValueWidget(
            name: AppStrings.otherObservations,
            value: data.otherObservationsValue),
      ),
      nameValueWidget(
          name: 'Specialist Referral Recommended',
          value: data.specialistReferralNeededValue),
      Visibility(
        visible: controller.isSpecialistReferralNeeded.value,
        child: Column(
          children: [
            nameValueWidget(
                name: 'Type', value: data.specialistReferralNeededTypeValue),
            Visibility(
                visible: controller.selectedReferralType.contains('Other'),
                child: nameValueWidget(name: 'Other', value: data.other)),
            nameValueWidget(
                name: 'Flag ', value: data.specialistReferralNeededFlagValue),
          ],
        ),
      ),
    ]));
  }
}

Widget nameValueWidget({required String name, required String value}) {
  return Column(
    children: [
      Row(
        children: [
          Expanded(child: Text(name, style: AppStyles.tsBlackMedium18)),
          const Expanded(child: Text(':', style: AppStyles.tsBlackMedium18)),
          Expanded(child: Text(value, style: AppStyles.tsBlackMedium18)),
        ],
      ).paddingSymmetric(vertical: Dimens.gapX1),
    ],
  );
}
