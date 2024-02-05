class StationEGetModel {
  StationEGetModel({
    this.id,
    this.stationID,
    this.hcid,
    this.hcpid,
    this.infoseekId,
    this.childMobility,
    this.childMobilityCanNotWalk,
    this.childMobilityCanNotWalkOther,
    this.studentAmbulant,
    this.studentAmbulantNo,
    this.gait,
    this.gaitAbnormal,
    this.gaitAbnormalLimp,
    this.gaitAbnormalLimpOther,
    this.wearBraceSupport,
    this.wearBraceSupportYes,
    this.prosthesis,
    this.prosthesisYes,
    this.prosthesisYesOther,
    this.spineAppearance,
    this.spineAppearanceAbnormal,
    this.spineAppearanceAbnormalOther,
    this.shoulderGriddleAppearance,
    this.shoulderGriddleAppearanceAbnormal,
    this.shoulderGriddleAppearanceAbnormalOther,
    this.spineMobility,
    this.spineMobilityRestrictedMovement,
    this.neckMobility,
    this.neckMobilityRestrictedMovement,
    this.uLRightAppearance,
    this.uLRightAppearanceAbnormal,
    this.uLRightMotorFunctionTone,
    this.uLRightMotorFunctionRangeOfMovement,
    this.uLRightMFRMAbnormal,
    this.uLRightMFRMAbnormalHyperFlexible,
    this.uLRightMFRMAbnormalRestricted,
    this.uLRightMotorFunctionStrength,
    this.uLRightDeepTendonReflexesBiceps,
    this.uLRightDTRBicepsAbnormal,
    this.uLRightDeepTendonReflexesRadial,
    this.uLRightDTRRadialAbnormal,
    this.uLRightDeepTendonReflexesSensoryFunction,
    this.uLRightDTRSFAbnormalTouch,
    this.uLRightDTRSFAbnormalPainPresent,
    this.uLRightDTRSFAbnormalPressureAbnormal,
    this.uLRightDTRSFAbnormalTendernessPresent,
    this.uLLeftAppearance,
    this.uLLeftAppearanceAbnormal,
    this.uLLeftMotorFunctionTone,
    this.uLLeftMotorFunctionRangeOfMovement,
    this.uLLeftMFRMAbnormal,
    this.uLLeftMFRMAbnormalHyperFlexible,
    this.uLLeftMFRMAbnormalRestricted,
    this.uLLeftMotorFunctionStrength,
    this.uLLeftDeepTendonReflexesBiceps,
    this.uLLeftDTRBicepsAbnormal,
    this.uLLeftDeepTendonReflexesRadial,
    this.uLLeftDTRRadialAbnormal,
    this.uLLeftDeepTendonReflexesSensoryFunction,
    this.uLLeftDTRSFAbnormalTouch,
    this.uLLeftDTRSFAbnormalPainPresent,
    this.uLLeftDTRSFAbnormalPressureAbnormal,
    this.uLLeftDTRSFAbnormalTendernessPresent,



    this.lLRightAppearance,
    this.lLRightAppearanceAbnormal,
    this.lLRightMotorFunctionTone,
    this.lLRightMotorFunctionRangeOfMovement,
    this.lLRightMotorFunctionStrength,
    this.lLRightMotorFunctionKnee,
    this.lLRightMotorFunctionKneeAbnormal,
    this.lLRightDeepTendonReflexesSensoryFunction,
    this.lLRightDTRSFAbnormalTouch,
    this.lLRightDTRSFAbnormalPainPresent,
    this.lLRightDTRSFAbnormalPressureAbnormal,
    this.lLRightDTRSFAbnormalTendernessPresent,
    this.lLLeftAppearance,
    this.lLLeftAppearanceAbnormal,
    this.lLLeftMotorFunctionTone,
    this.lLLeftMotorFunctionRangeOfMovement,
    this.lLLeftMotorFunctionStrength,
    this.lLLeftMotorFunctionKnee,
    this.lLLeftMotorFunctionKneeAbnormal,
    this.lLLeftDeepTendonReflexesSensoryFunction,
    this.lLLeftDTRSFAbnormalTouch,
    this.lLLeftDTRSFAbnormalPainPresent,
    this.lLLeftDTRSFAbnormalPressureAbnormal,
    this.lLLeftDTRSFAbnormalTendernessPresent,
    this.otherObservations,
    this.specialistReferralNeeded,
    this.specialistReferralNeededType,
    this.specialistReferralNeededFlag,
    this.other,
    this.completed,
  });

  StationEGetModel.fromJson(dynamic json) {
    id = json['id'];
    stationID = json['StationID'];
    hcid = json['HCID'];
    hcpid = json['HCPID'];
    infoseekId = json['InfoseekId'];
    childMobility = json['Child_Mobility'];
    childMobilityCanNotWalk = json['Child_Mobility_Can_not_Walk'];
    childMobilityCanNotWalkOther = json['Child_Mobility_Can_not_Walk_other'];
    studentAmbulant = json['Student_Ambulant'];
    studentAmbulantNo = json['Student_Ambulant_No'];
    gait = json['Gait'];
    gaitAbnormal = json['Gait_Abnormal'];
    gaitAbnormalLimp = json['Gait_Abnormal_Limp'];
    gaitAbnormalLimpOther = json['Gait_Abnormal_Limp_other'];
    wearBraceSupport = json['Wear_Brace_Support'];
    wearBraceSupportYes = json['Wear_Brace_Support_Yes'];
    prosthesis = json['Prosthesis'];
    prosthesisYes = json['Prosthesis_Yes'];
    prosthesisYesOther = json['Prosthesis_Yes_other'];
    spineAppearance = json['Spine_Appearance'];
    spineAppearanceAbnormal = json['Spine_Appearance_Abnormal'];
    spineAppearanceAbnormalOther = json['Spine_Appearance_Abnormal_Other'];
    shoulderGriddleAppearance = json['Shoulder_Griddle_Appearance'];
    shoulderGriddleAppearanceAbnormal =
        json['Shoulder_Griddle_Appearance_Abnormal'];
    shoulderGriddleAppearanceAbnormalOther =
        json['Shoulder_Griddle_Appearance_Abnormal_Other'];
    spineMobility = json['Spine_Mobility'];
    spineMobilityRestrictedMovement =
        json['Spine_Mobility_Restricted_movement'];
    neckMobility = json['Neck_Mobility'];
    neckMobilityRestrictedMovement = json['Neck_Mobility_Restricted_movement'];
    uLRightAppearance = json['UL_Right_Appearance'];
    uLRightAppearanceAbnormal = json['UL_Right_Appearance_Abnormal'];
    uLRightMotorFunctionTone = json['UL_Right_Motor_Function_Tone'];
    uLRightMotorFunctionRangeOfMovement =
        json['UL_Right_Motor_Function_Range_of_Movement'];
    uLRightMFRMAbnormal = json['UL_Right_MF_RM_Abnormal'];
    uLRightMFRMAbnormalHyperFlexible =
        json['UL_Right_MF_RM_Abnormal_Hyper_Flexible'];
    uLRightMFRMAbnormalRestricted = json['UL_Right_MF_RM_Abnormal_Restricted'];
    uLRightMotorFunctionStrength = json['UL_Right_Motor_Function_Strength'];
    uLRightDeepTendonReflexesBiceps =
        json['UL_Right_Deep_Tendon_Reflexes_Biceps'];
    uLRightDTRBicepsAbnormal = json['UL_Right_DTR_Biceps_Abnormal'];
    uLRightDeepTendonReflexesRadial =
        json['UL_Right_Deep_Tendon_Reflexes_Radial'];
    uLRightDTRRadialAbnormal = json['UL_Right_DTR_Radial_Abnormal'];
    uLRightDeepTendonReflexesSensoryFunction =
        json['UL_Right_Deep_Tendon_Reflexes_Sensory_Function'];
    uLRightDTRSFAbnormalTouch = json['UL_Right_DTR_SF_Abnormal_Touch'];
    uLRightDTRSFAbnormalPainPresent =
        json['UL_Right_DTR_SF_Abnormal_Pain_Present'];
    uLRightDTRSFAbnormalPressureAbnormal =
        json['UL_Right_DTR_SF_Abnormal_Pressure_Abnormal'];
    uLRightDTRSFAbnormalTendernessPresent =
        json['UL_Right_DTR_SF_Abnormal_Tenderness_Present'];
    uLLeftAppearance = json['UL_Left_Appearance'];
    uLLeftAppearanceAbnormal = json['UL_Left_Appearance_Abnormal'];
    uLLeftMotorFunctionTone = json['UL_Left_Motor_Function_Tone'];
    uLLeftMotorFunctionRangeOfMovement =
        json['UL_Left_Motor_Function_Range_of_Movement'];
    uLLeftMFRMAbnormal = json['UL_left_MF_RM_Abnormal'];
    uLLeftMFRMAbnormalHyperFlexible =
        json['UL_Left_MF_RM_Abnormal_Hyper_Flexible'];
    uLLeftMFRMAbnormalRestricted = json['UL_Left_MF_RM_Abnormal_Restricted'];
    uLLeftMotorFunctionStrength = json['UL_Left_Motor_Function_Strength'];
    uLLeftDeepTendonReflexesBiceps =
        json['UL_Left_Deep_Tendon_Reflexes_Biceps'];
    uLLeftDTRBicepsAbnormal = json['UL_Left_DTR_Biceps_Abnormal'];
    uLLeftDeepTendonReflexesRadial =
        json['UL_Left_Deep_Tendon_Reflexes_Radial'];
    uLLeftDTRRadialAbnormal = json['UL_Left_DTR_Radial_Abnormal'];
    uLLeftDeepTendonReflexesSensoryFunction =
        json['UL_Left_Deep_Tendon_Reflexes_Sensory_Function'];
    uLLeftDTRSFAbnormalTouch = json['UL_Left_DTR_SF_Abnormal_Touch'];
    uLLeftDTRSFAbnormalPainPresent =
        json['UL_Left_DTR_SF_Abnormal_Pain_Present'];
    uLLeftDTRSFAbnormalPressureAbnormal =
        json['UL_Left_DTR_SF_Abnormal_Pressure_Abnormal'];
    uLLeftDTRSFAbnormalTendernessPresent =
        json['UL_Left_DTR_SF_Abnormal_Tenderness_Present'];
    lLRightAppearance = json['LL_Right_Appearance'];
    lLRightAppearanceAbnormal = json['LL_Right_Appearance_Abnormal'];
    lLRightMotorFunctionTone = json['LL_Right_Motor_Function_Tone'];
    lLRightMotorFunctionRangeOfMovement =
        json['LL_Right_Motor_Function_Range_of_Movement'];
    lLRightMotorFunctionStrength = json['LL_Right_Motor_Function_Strength'];
    lLRightMotorFunctionKnee = json['LL_Right_Motor_Function_Knee'];
    lLRightMotorFunctionKneeAbnormal =
        json['LL_Right_Motor_Function_Knee_Abnormal'];
    lLRightDeepTendonReflexesSensoryFunction =
        json['LL_Right_Deep_Tendon_Reflexes_Sensory_Function'];
    lLRightDTRSFAbnormalTouch = json['LL_Right_DTR_SF_Abnormal_Touch'];
    lLRightDTRSFAbnormalPainPresent =
        json['LL_Right_DTR_SF_Abnormal_Pain_Present'];
    lLRightDTRSFAbnormalPressureAbnormal =
        json['LL_Right_DTR_SF_Abnormal_Pressure_Abnormal'];
    lLRightDTRSFAbnormalTendernessPresent =
        json['LL_Right_DTR_SF_Abnormal_Tenderness_Present'];
    lLLeftAppearance = json['LL_Left_Appearance'];
    lLLeftAppearanceAbnormal = json['LL_Left_Appearance_Abnormal'];
    lLLeftMotorFunctionTone = json['LL_Left_Motor_Function_Tone'];
    lLLeftMotorFunctionRangeOfMovement =
        json['LL_Left_Motor_Function_Range_of_Movement'];
    lLLeftMotorFunctionStrength = json['LL_Left_Motor_Function_Strength'];
    lLLeftMotorFunctionKnee = json['LL_Left_Motor_Function_Knee'];
    lLLeftMotorFunctionKneeAbnormal =
        json['LL_Left_Motor_Function_Knee_Abnormal'];
    lLLeftDeepTendonReflexesSensoryFunction =
        json['LL_Left_Deep_Tendon_Reflexes_Sensory_Function'];
    lLLeftDTRSFAbnormalTouch = json['LL_Left_DTR_SF_Abnormal_Touch'];
    lLLeftDTRSFAbnormalPainPresent =
        json['LL_Left_DTR_SF_Abnormal_Pain_Present'];
    lLLeftDTRSFAbnormalPressureAbnormal =
        json['LL_Left_DTR_SF_Abnormal_Pressure_Abnormal'];
    lLLeftDTRSFAbnormalTendernessPresent =
        json['LL_Left_DTR_SF_Abnormal_Tenderness_Present'];
    otherObservations = json['Other_Observations'];
    specialistReferralNeeded = json['Specialist_Referral_Needed'];
    specialistReferralNeededType = json['Specialist_Referral_Needed_Type'];
    specialistReferralNeededFlag = json['Specialist_Referral_Needed_Flag'];
    other = json['Other'];
    completed = json['Completed'];
  }
  int? id;
  int? stationID;
  int? hcid;
  int? hcpid;
  int? infoseekId;
  String? childMobility;
  dynamic childMobilityCanNotWalk;
  dynamic childMobilityCanNotWalkOther;
  String? studentAmbulant;
  dynamic studentAmbulantNo;
  String? gait;
  dynamic gaitAbnormal;
  dynamic gaitAbnormalLimp;
  dynamic gaitAbnormalLimpOther;
  String? wearBraceSupport;
  dynamic wearBraceSupportYes;
  String? prosthesis;
  dynamic prosthesisYes;
  dynamic prosthesisYesOther;
  String? spineAppearance;
  dynamic spineAppearanceAbnormal;
  dynamic spineAppearanceAbnormalOther;
  String? shoulderGriddleAppearance;
  dynamic shoulderGriddleAppearanceAbnormal;
  dynamic shoulderGriddleAppearanceAbnormalOther;
  String? spineMobility;
  dynamic spineMobilityRestrictedMovement;
  String? neckMobility;
  dynamic neckMobilityRestrictedMovement;
  String? uLRightAppearance;
  dynamic uLRightAppearanceAbnormal;
  String? uLRightMotorFunctionTone;
  String? uLRightMotorFunctionRangeOfMovement;
  dynamic uLRightMFRMAbnormal;
  dynamic uLRightMFRMAbnormalHyperFlexible;
  dynamic uLRightMFRMAbnormalRestricted;
  String? uLRightMotorFunctionStrength;
  String? uLRightDeepTendonReflexesBiceps;
  dynamic uLRightDTRBicepsAbnormal;
  String? uLRightDeepTendonReflexesRadial;
  dynamic uLRightDTRRadialAbnormal;
  String? uLRightDeepTendonReflexesSensoryFunction;
  dynamic uLRightDTRSFAbnormalTouch;
  dynamic uLRightDTRSFAbnormalPainPresent;
  dynamic uLRightDTRSFAbnormalPressureAbnormal;
  dynamic uLRightDTRSFAbnormalTendernessPresent;
  String? uLLeftAppearance;
  dynamic uLLeftAppearanceAbnormal;
  String? uLLeftMotorFunctionTone;
  String? uLLeftMotorFunctionRangeOfMovement;
  dynamic uLLeftMFRMAbnormal;
  dynamic uLLeftMFRMAbnormalHyperFlexible;
  dynamic uLLeftMFRMAbnormalRestricted;
  String? uLLeftMotorFunctionStrength;
  String? uLLeftDeepTendonReflexesBiceps;
  dynamic uLLeftDTRBicepsAbnormal;
  String? uLLeftDeepTendonReflexesRadial;
  dynamic uLLeftDTRRadialAbnormal;
  String? uLLeftDeepTendonReflexesSensoryFunction;
  dynamic uLLeftDTRSFAbnormalTouch;
  dynamic uLLeftDTRSFAbnormalPainPresent;
  dynamic uLLeftDTRSFAbnormalPressureAbnormal;
  dynamic uLLeftDTRSFAbnormalTendernessPresent;
  String? lLRightAppearance;
  dynamic lLRightAppearanceAbnormal;
  String? lLRightMotorFunctionTone;
  String? lLRightMotorFunctionRangeOfMovement;
  String? lLRightMotorFunctionStrength;
  String? lLRightMotorFunctionKnee;
  dynamic lLRightMotorFunctionKneeAbnormal;
  String? lLRightDeepTendonReflexesSensoryFunction;
  dynamic lLRightDTRSFAbnormalTouch;
  dynamic lLRightDTRSFAbnormalPainPresent;
  dynamic lLRightDTRSFAbnormalPressureAbnormal;
  dynamic lLRightDTRSFAbnormalTendernessPresent;
  String? lLLeftAppearance;
  dynamic lLLeftAppearanceAbnormal;
  String? lLLeftMotorFunctionTone;
  String? lLLeftMotorFunctionRangeOfMovement;
  String? lLLeftMotorFunctionStrength;
  String? lLLeftMotorFunctionKnee;
  dynamic lLLeftMotorFunctionKneeAbnormal;
  String? lLLeftDeepTendonReflexesSensoryFunction;
  dynamic lLLeftDTRSFAbnormalTouch;
  dynamic lLLeftDTRSFAbnormalPainPresent;
  dynamic lLLeftDTRSFAbnormalPressureAbnormal;
  dynamic lLLeftDTRSFAbnormalTendernessPresent;
  dynamic otherObservations;
  dynamic specialistReferralNeeded;
  dynamic specialistReferralNeededType;
  dynamic specialistReferralNeededFlag;
  dynamic other;
  String? completed;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['StationID'] = stationID;
    map['HCID'] = hcid;
    map['HCPID'] = hcpid;
    map['InfoseekId'] = infoseekId;
    map['Child_Mobility'] = childMobility;
    map['Child_Mobility_Can_not_Walk'] = childMobilityCanNotWalk;
    map['Child_Mobility_Can_not_Walk_other'] = childMobilityCanNotWalkOther;
    map['Student_Ambulant'] = studentAmbulant;
    map['Student_Ambulant_No'] = studentAmbulantNo;
    map['Gait'] = gait;
    map['Gait_Abnormal'] = gaitAbnormal;
    map['Gait_Abnormal_Limp'] = gaitAbnormalLimp;
    map['Gait_Abnormal_Limp_other'] = gaitAbnormalLimpOther;
    map['Wear_Brace_Support'] = wearBraceSupport;
    map['Wear_Brace_Support_Yes'] = wearBraceSupportYes;
    map['Prosthesis'] = prosthesis;
    map['Prosthesis_Yes'] = prosthesisYes;
    map['Prosthesis_Yes_other'] = prosthesisYesOther;
    map['Spine_Appearance'] = spineAppearance;
    map['Spine_Appearance_Abnormal'] = spineAppearanceAbnormal;
    map['Spine_Appearance_Abnormal_Other'] = spineAppearanceAbnormalOther;
    map['Shoulder_Griddle_Appearance'] = shoulderGriddleAppearance;
    map['Shoulder_Griddle_Appearance_Abnormal'] =
        shoulderGriddleAppearanceAbnormal;
    map['Shoulder_Griddle_Appearance_Abnormal_Other'] =
        shoulderGriddleAppearanceAbnormalOther;
    map['Spine_Mobility'] = spineMobility;
    map['Spine_Mobility_Restricted_movement'] = spineMobilityRestrictedMovement;
    map['Neck_Mobility'] = neckMobility;
    map['Neck_Mobility_Restricted_movement'] = neckMobilityRestrictedMovement;
    map['UL_Right_Appearance'] = uLRightAppearance;
    map['UL_Right_Appearance_Abnormal'] = uLRightAppearanceAbnormal;
    map['UL_Right_Motor_Function_Tone'] = uLRightMotorFunctionTone;
    map['UL_Right_Motor_Function_Range_of_Movement'] =
        uLRightMotorFunctionRangeOfMovement;
    map['UL_Right_MF_RM_Abnormal'] = uLRightMFRMAbnormal;
    map['UL_Right_MF_RM_Abnormal_Hyper_Flexible'] =
        uLRightMFRMAbnormalHyperFlexible;
    map['UL_Right_MF_RM_Abnormal_Restricted'] = uLRightMFRMAbnormalRestricted;
    map['UL_Right_Motor_Function_Strength'] = uLRightMotorFunctionStrength;
    map['UL_Right_Deep_Tendon_Reflexes_Biceps'] =
        uLRightDeepTendonReflexesBiceps;
    map['UL_Right_DTR_Biceps_Abnormal'] = uLRightDTRBicepsAbnormal;
    map['UL_Right_Deep_Tendon_Reflexes_Radial'] =
        uLRightDeepTendonReflexesRadial;
    map['UL_Right_DTR_Radial_Abnormal'] = uLRightDTRRadialAbnormal;
    map['UL_Right_Deep_Tendon_Reflexes_Sensory_Function'] =
        uLRightDeepTendonReflexesSensoryFunction;
    map['UL_Right_DTR_SF_Abnormal_Touch'] = uLRightDTRSFAbnormalTouch;
    map['UL_Right_DTR_SF_Abnormal_Pain_Present'] =
        uLRightDTRSFAbnormalPainPresent;
    map['UL_Right_DTR_SF_Abnormal_Pressure_Abnormal'] =
        uLRightDTRSFAbnormalPressureAbnormal;
    map['UL_Right_DTR_SF_Abnormal_Tenderness_Present'] =
        uLRightDTRSFAbnormalTendernessPresent;
    map['UL_Left_Appearance'] = uLLeftAppearance;
    map['UL_Left_Appearance_Abnormal'] = uLLeftAppearanceAbnormal;
    map['UL_Left_Motor_Function_Tone'] = uLLeftMotorFunctionTone;
    map['UL_Left_Motor_Function_Range_of_Movement'] =
        uLLeftMotorFunctionRangeOfMovement;
    map['UL_left_MF_RM_Abnormal'] = uLLeftMFRMAbnormal;
    map['UL_Left_MF_RM_Abnormal_Hyper_Flexible'] =
        uLLeftMFRMAbnormalHyperFlexible;
    map['UL_Left_MF_RM_Abnormal_Restricted'] = uLLeftMFRMAbnormalRestricted;
    map['UL_Left_Motor_Function_Strength'] = uLLeftMotorFunctionStrength;
    map['UL_Left_Deep_Tendon_Reflexes_Biceps'] = uLLeftDeepTendonReflexesBiceps;
    map['UL_Left_DTR_Biceps_Abnormal'] = uLLeftDTRBicepsAbnormal;
    map['UL_Left_Deep_Tendon_Reflexes_Radial'] = uLLeftDeepTendonReflexesRadial;
    map['UL_Left_DTR_Radial_Abnormal'] = uLLeftDTRRadialAbnormal;
    map['UL_Left_Deep_Tendon_Reflexes_Sensory_Function'] =
        uLLeftDeepTendonReflexesSensoryFunction;
    map['UL_Left_DTR_SF_Abnormal_Touch'] = uLLeftDTRSFAbnormalTouch;
    map['UL_Left_DTR_SF_Abnormal_Pain_Present'] =
        uLLeftDTRSFAbnormalPainPresent;
    map['UL_Left_DTR_SF_Abnormal_Pressure_Abnormal'] =
        uLLeftDTRSFAbnormalPressureAbnormal;
    map['UL_Left_DTR_SF_Abnormal_Tenderness_Present'] =
        uLLeftDTRSFAbnormalTendernessPresent;
    map['LL_Right_Appearance'] = lLRightAppearance;
    map['LL_Right_Appearance_Abnormal'] = lLRightAppearanceAbnormal;
    map['LL_Right_Motor_Function_Tone'] = lLRightMotorFunctionTone;
    map['LL_Right_Motor_Function_Range_of_Movement'] =
        lLRightMotorFunctionRangeOfMovement;
    map['LL_Right_Motor_Function_Strength'] = lLRightMotorFunctionStrength;
    map['LL_Right_Motor_Function_Knee'] = lLRightMotorFunctionKnee;
    map['LL_Right_Motor_Function_Knee_Abnormal'] =
        lLRightMotorFunctionKneeAbnormal;
    map['LL_Right_Deep_Tendon_Reflexes_Sensory_Function'] =
        lLRightDeepTendonReflexesSensoryFunction;
    map['LL_Right_DTR_SF_Abnormal_Touch'] = lLRightDTRSFAbnormalTouch;
    map['LL_Right_DTR_SF_Abnormal_Pain_Present'] =
        lLRightDTRSFAbnormalPainPresent;
    map['LL_Right_DTR_SF_Abnormal_Pressure_Abnormal'] =
        lLRightDTRSFAbnormalPressureAbnormal;
    map['LL_Right_DTR_SF_Abnormal_Tenderness_Present'] =
        lLRightDTRSFAbnormalTendernessPresent;
    map['LL_Left_Appearance'] = lLLeftAppearance;
    map['LL_Left_Appearance_Abnormal'] = lLLeftAppearanceAbnormal;
    map['LL_Left_Motor_Function_Tone'] = lLLeftMotorFunctionTone;
    map['LL_Left_Motor_Function_Range_of_Movement'] =
        lLLeftMotorFunctionRangeOfMovement;
    map['LL_Left_Motor_Function_Strength'] = lLLeftMotorFunctionStrength;
    map['LL_Left_Motor_Function_Knee'] = lLLeftMotorFunctionKnee;
    map['LL_Left_Motor_Function_Knee_Abnormal'] =
        lLLeftMotorFunctionKneeAbnormal;
    map['LL_Left_Deep_Tendon_Reflexes_Sensory_Function'] =
        lLLeftDeepTendonReflexesSensoryFunction;
    map['LL_Left_DTR_SF_Abnormal_Touch'] = lLLeftDTRSFAbnormalTouch;
    map['LL_Left_DTR_SF_Abnormal_Pain_Present'] =
        lLLeftDTRSFAbnormalPainPresent;
    map['LL_Left_DTR_SF_Abnormal_Pressure_Abnormal'] =
        lLLeftDTRSFAbnormalPressureAbnormal;
    map['LL_Left_DTR_SF_Abnormal_Tenderness_Present'] =
        lLLeftDTRSFAbnormalTendernessPresent;
    map['Other_Observations'] = otherObservations;
    map['Specialist_Referral_Needed'] = specialistReferralNeeded;
    map['Specialist_Referral_Needed_Type'] = specialistReferralNeededType;
    map['Specialist_Referral_Needed_Flag'] = specialistReferralNeededFlag;
    map['Other'] = other;
    map['Completed'] = completed;
    return map;
  }
}
