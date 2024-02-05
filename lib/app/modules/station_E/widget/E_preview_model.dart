class StationEPreviewModel {
  final String mobilityValue;
  final String canNotWalkValue;
  final String canNotWalkOtherValue;
  final String ambulantValue;
  final String ambulantNoValue;
  final String gaitNormalValue;
  final String gaitAbNormalValue;
  final String gaitAbnormalLimpValue;
  final String gaitAbnormalLimpOtherValue;
  final String wearBraceValue;
  final String wearBraceYesValue;
  final String prosthesisValue;
  final String prosthesisYesValue;
  final String prosthesisYesOtherValue;
  final String spineAppearanceValue;
  final String spineAppearanceAbnormalValue;
  final String spineAppearanceAbnormalOtherValue;
  final String shoulderValue;
  final String shoulderAbnormalValue;
  final String shoulderAbnormalOtherValue;
  final String spineMobilityNormalValue;
  final String spineMobilityRestrictedValue;
  final String neckMobilityNormalValue;
  final String neckMobilityRestrictedValue;
  final String upperLimbAppearanceRightNormalValue;
  final String uLRightAppearanceAbnormalValue;
  final String uLRightMotorFunctionToneValue;
  final String uLRightMotorFunctionRangeOfMovementValue;
  final String uLRightMFRMAbnormalValue;
  final String uLRightMFRMAbnormalHyperFlexibleValue;
  final String uLRightMFRMAbnormalRestrictedValue;
  final String uLRightMotorFunctionStrengthValue;
  final String uLRightDeepTendonReflexesBicepsValue;
  final String uLRightDTRBicepsAbnormalValue;
  final String uLRightDeepTendonReflexesRadialValue;
  final String uLRightDTRRadialAbnormalValue;
  final String uLRightDeepTendonReflexesSensoryFunctionValue;
  final String uLRightDTRSFAbnormalTouchValue;
  final int uLRightDTRSFAbnormalPainPresentValue;
  final bool uLRightDTRSFAbnormalPressureAbnormalValue;
  final int uLRightDTRSFAbnormalTendernessPresentValue;
  final String uLLeftAppearanceValue;
  final String uLLeftAppearanceAbnormalValue;
  final String uLLeftMotorFunctionToneValue;
  final String uLLeftMotorFunctionRangeOfMovementValue;
  final String uLLeftMFRMAbnormalValue;
  final String uLLeftMFRMAbnormalHyperFlexibleValue;
  final String uLLeftMFRMAbnormalRestrictedValue;
  final String uLLeftMotorFunctionStrengthValue;
  final String uLLeftDeepTendonReflexesBicepsValue;
  final String uLLeftDTRBicepsAbnormalValue;
  final String uLLeftDeepTendonReflexesRadialValue;
  final String uLLeftDTRRadialAbnormalValue;
  final String uLLeftDeepTendonReflexesSensoryFunctionValue;
  final String uLLeftDTRSFAbnormalTouchValue;
  final int uLLeftDTRSFAbnormalPainPresentValue;
  final bool uLLeftDTRSFAbnormalPressureAbnormalValue;
  final int uLLeftDTRSFAbnormalTendernessPresentValue;
  final String lLRightAppearanceValue;
  final String lLRightAppearanceAbnormalValue;
  final String lLRightMotorFunctionToneValue;
  final String lLRightMotorFunctionRangeOfMovementValue;
  final String lLRightMotorFunctionStrengthValue;
  final String lLRightMotorFunctionKneeValue;
  final String lLRightMotorFunctionKneeAbnormalValue;
  final String lLRightDeepTendonReflexesSensoryFunctionValue;
  final String lLRightDTRSFAbnormalTouchValue;
  final int lLRightDTRSFAbnormalPainPresentValue;
  final bool lLRightDTRSFAbnormalPressureAbnormalValue;
  final int lLRightDTRSFAbnormalTendernessPresentValue;
  final String lLLeftAppearanceValue;
  final String lLLeftAppearanceAbnormalValue;
  final String lLLeftMotorFunctionToneValue;
  final String lLLeftMotorFunctionRangeOfMovementValue;
  final String lLLeftMotorFunctionStrengthValue;
  final String lLLeftMotorFunctionKneeValue;
  final String lLLeftMotorFunctionKneeAbnormalValue;
  final String lLLeftDeepTendonReflexesSensoryFunctionValue;
  final String lLLeftDTRSFAbnormalTouchValue;
  final int lLLeftDTRSFAbnormalPainPresentValue;
  final bool lLLeftDTRSFAbnormalPressureAbnormalValue;
  final int lLLeftDTRSFAbnormalTendernessPresentValue;
  final String otherObservationsValue;
  final String specialistReferralNeededValue;
  final String specialistReferralNeededTypeValue;
  final String specialistReferralNeededFlagValue;
  final String other;

  StationEPreviewModel({
    required this.mobilityValue,
    required this.canNotWalkValue,
    required this.canNotWalkOtherValue,
    required this.ambulantValue,
    required this.ambulantNoValue,
    required this.gaitNormalValue,
    required this.gaitAbNormalValue,
    required this.gaitAbnormalLimpValue,
    required this.gaitAbnormalLimpOtherValue,
    required this.wearBraceValue,
    required this.wearBraceYesValue,
    required this.prosthesisValue,
    required this.prosthesisYesValue,
    required this.prosthesisYesOtherValue,
    required this.spineAppearanceValue,
    required this.spineAppearanceAbnormalValue,
    required this.spineAppearanceAbnormalOtherValue,
    required this.shoulderValue,
    required this.shoulderAbnormalValue,
    required this.shoulderAbnormalOtherValue,
    required this.spineMobilityNormalValue,
    required this.spineMobilityRestrictedValue,
    required this.neckMobilityNormalValue,
    required this.neckMobilityRestrictedValue,
    required this.upperLimbAppearanceRightNormalValue,
    required this.uLRightAppearanceAbnormalValue,
    required this.uLRightMotorFunctionToneValue,
    required this.uLRightMotorFunctionRangeOfMovementValue,
    required this.uLRightMFRMAbnormalValue,
    required this.uLRightMFRMAbnormalHyperFlexibleValue,
    required this.uLRightMFRMAbnormalRestrictedValue,
    required this.uLRightMotorFunctionStrengthValue,
    required this.uLRightDeepTendonReflexesBicepsValue,
    required this.uLRightDTRBicepsAbnormalValue,
    required this.uLRightDeepTendonReflexesRadialValue,
    required this.uLRightDTRRadialAbnormalValue,
    required this.uLRightDeepTendonReflexesSensoryFunctionValue,
    required this.uLRightDTRSFAbnormalTouchValue,
    required this.uLRightDTRSFAbnormalPainPresentValue,
    required this.uLRightDTRSFAbnormalPressureAbnormalValue,
    required this.uLRightDTRSFAbnormalTendernessPresentValue,
    required this.uLLeftAppearanceValue,
    required this.uLLeftAppearanceAbnormalValue,
    required this.uLLeftMotorFunctionToneValue,
    required this.uLLeftMotorFunctionRangeOfMovementValue,
    required this.uLLeftMFRMAbnormalValue,
    required this.uLLeftMFRMAbnormalHyperFlexibleValue,
    required this.uLLeftMFRMAbnormalRestrictedValue,
    required this.uLLeftMotorFunctionStrengthValue,
    required this.uLLeftDeepTendonReflexesBicepsValue,
    required this.uLLeftDTRBicepsAbnormalValue,
    required this.uLLeftDeepTendonReflexesRadialValue,
    required this.uLLeftDTRRadialAbnormalValue,
    required this.uLLeftDeepTendonReflexesSensoryFunctionValue,
    required this.uLLeftDTRSFAbnormalTouchValue,
    required this.uLLeftDTRSFAbnormalPainPresentValue,
    required this.uLLeftDTRSFAbnormalPressureAbnormalValue,
    required this.uLLeftDTRSFAbnormalTendernessPresentValue,
    required this.lLRightAppearanceValue,
    required this.lLRightAppearanceAbnormalValue,
    required this.lLRightMotorFunctionToneValue,
    required this.lLRightMotorFunctionRangeOfMovementValue,
    required this.lLRightMotorFunctionStrengthValue,
    required this.lLRightMotorFunctionKneeValue,
    required this.lLRightMotorFunctionKneeAbnormalValue,
    required this.lLRightDeepTendonReflexesSensoryFunctionValue,
    required this.lLRightDTRSFAbnormalTouchValue,
    required this.lLRightDTRSFAbnormalPainPresentValue,
    required this.lLRightDTRSFAbnormalPressureAbnormalValue,
    required this.lLRightDTRSFAbnormalTendernessPresentValue,
    required this.lLLeftAppearanceValue,
    required this.lLLeftAppearanceAbnormalValue,
    required this.lLLeftMotorFunctionToneValue,
    required this.lLLeftMotorFunctionRangeOfMovementValue,
    required this.lLLeftMotorFunctionStrengthValue,
    required this.lLLeftMotorFunctionKneeValue,
    required this.lLLeftMotorFunctionKneeAbnormalValue,
    required this.lLLeftDeepTendonReflexesSensoryFunctionValue,
    required this.lLLeftDTRSFAbnormalTouchValue,
    required this.lLLeftDTRSFAbnormalPainPresentValue,
    required this.lLLeftDTRSFAbnormalPressureAbnormalValue,
    required this.lLLeftDTRSFAbnormalTendernessPresentValue,
    required this.otherObservationsValue,
    required this.specialistReferralNeededValue,
    required this.specialistReferralNeededTypeValue,
    required this.specialistReferralNeededFlagValue,
    required this.other,
  });
}
