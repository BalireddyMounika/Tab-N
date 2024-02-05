class LowerLimbRequest {
  LowerLimbRequest({
      this.lLRightAppearance, 
      this.lLRightAppearanceAbnormal, 
      this.lLRightMotorFunctionTone, 
      this.lLRightMotorFunctionRangeOfMovement, 
      this.lLRightMotorFunctionStrength, 
      this.lLRightMotorFunctionKnee, 
      this.lLRightMotorFunctionKneeAbnormal, 
      this.lLRightDeepTendonReflexesSensoryFunction, 
      this.lLRightDTRSFAbnormal, 
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
      this.lLLeftDTRSFAbnormal, 
      this.lLLeftDTRSFAbnormalTouch, 
      this.lLLeftDTRSFAbnormalPainPresent, 
      this.lLLeftDTRSFAbnormalPressureAbnormal, 
      this.lLLeftDTRSFAbnormalTendernessPresent,});

  LowerLimbRequest.fromJson(dynamic json) {
    lLRightAppearance = json['LL_Right_Appearance'];
    lLRightAppearanceAbnormal = json['LL_Right_Appearance_Abnormal'];
    lLRightMotorFunctionTone = json['LL_Right_Motor_Function_Tone'];
    lLRightMotorFunctionRangeOfMovement = json['LL_Right_Motor_Function_Range_of_Movement'];
    lLRightMotorFunctionStrength = json['LL_Right_Motor_Function_Strength'];
    lLRightMotorFunctionKnee = json['LL_Right_Motor_Function_Knee'];
    lLRightMotorFunctionKneeAbnormal = json['LL_Right_Motor_Function_Knee_Abnormal'];
    lLRightDeepTendonReflexesSensoryFunction = json['LL_Right_Deep_Tendon_Reflexes_Sensory_Function'];
    lLRightDTRSFAbnormal = json['LL_Right_DTR_SF_Abnormal'];
    lLRightDTRSFAbnormalTouch = json['LL_Right_DTR_SF_Abnormal_Touch'];
    lLRightDTRSFAbnormalPainPresent = json['LL_Right_DTR_SF_Abnormal_Pain_Present'];
    lLRightDTRSFAbnormalPressureAbnormal = json['LL_Right_DTR_SF_Abnormal_Pressure_Abnormal'];
    lLRightDTRSFAbnormalTendernessPresent = json['LL_Right_DTR_SF_Abnormal_Tenderness_Present'];
    lLLeftAppearance = json['LL_Left_Appearance'];
    lLLeftAppearanceAbnormal = json['LL_Left_Appearance_Abnormal'];
    lLLeftMotorFunctionTone = json['LL_Left_Motor_Function_Tone'];
    lLLeftMotorFunctionRangeOfMovement = json['LL_Left_Motor_Function_Range_of_Movement'];
    lLLeftMotorFunctionStrength = json['LL_Left_Motor_Function_Strength'];
    lLLeftMotorFunctionKnee = json['LL_Left_Motor_Function_Knee'];
    lLLeftMotorFunctionKneeAbnormal = json['LL_Left_Motor_Function_Knee_Abnormal'];
    lLLeftDeepTendonReflexesSensoryFunction = json['LL_Left_Deep_Tendon_Reflexes_Sensory_Function'];
    lLLeftDTRSFAbnormal = json['LL_Left_DTR_SF_Abnormal'];
    lLLeftDTRSFAbnormalTouch = json['LL_Left_DTR_SF_Abnormal_Touch'];
    lLLeftDTRSFAbnormalPainPresent = json['LL_Left_DTR_SF_Abnormal_Pain_Present'];
    lLLeftDTRSFAbnormalPressureAbnormal = json['LL_Left_DTR_SF_Abnormal_Pressure_Abnormal'];
    lLLeftDTRSFAbnormalTendernessPresent = json['LL_Left_DTR_SF_Abnormal_Tenderness_Present'];
  }
  String? lLRightAppearance;
  String? lLRightAppearanceAbnormal;
  String? lLRightMotorFunctionTone;
  String? lLRightMotorFunctionRangeOfMovement;
  String? lLRightMotorFunctionStrength;
  String? lLRightMotorFunctionKnee;
  String? lLRightMotorFunctionKneeAbnormal;
  String? lLRightDeepTendonReflexesSensoryFunction;
  String? lLRightDTRSFAbnormal;
  String? lLRightDTRSFAbnormalTouch;
  int? lLRightDTRSFAbnormalPainPresent;
  bool? lLRightDTRSFAbnormalPressureAbnormal;
  int? lLRightDTRSFAbnormalTendernessPresent;
  String? lLLeftAppearance;
  String? lLLeftAppearanceAbnormal;
  String? lLLeftMotorFunctionTone;
  String? lLLeftMotorFunctionRangeOfMovement;
  String? lLLeftMotorFunctionStrength;
  String? lLLeftMotorFunctionKnee;
  String? lLLeftMotorFunctionKneeAbnormal;
  String? lLLeftDeepTendonReflexesSensoryFunction;
  String? lLLeftDTRSFAbnormal;
  String? lLLeftDTRSFAbnormalTouch;
  int? lLLeftDTRSFAbnormalPainPresent;
  bool? lLLeftDTRSFAbnormalPressureAbnormal;
  int? lLLeftDTRSFAbnormalTendernessPresent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['LL_Right_Appearance'] = lLRightAppearance;
    map['LL_Right_Appearance_Abnormal'] = lLRightAppearanceAbnormal;
    map['LL_Right_Motor_Function_Tone'] = lLRightMotorFunctionTone;
    map['LL_Right_Motor_Function_Range_of_Movement'] = lLRightMotorFunctionRangeOfMovement;
    map['LL_Right_Motor_Function_Strength'] = lLRightMotorFunctionStrength;
    map['LL_Right_Motor_Function_Knee'] = lLRightMotorFunctionKnee;
    map['LL_Right_Motor_Function_Knee_Abnormal'] = lLRightMotorFunctionKneeAbnormal;
    map['LL_Right_Deep_Tendon_Reflexes_Sensory_Function'] = lLRightDeepTendonReflexesSensoryFunction;
    map['LL_Right_DTR_SF_Abnormal'] = lLRightDTRSFAbnormal;
    map['LL_Right_DTR_SF_Abnormal_Touch'] = lLRightDTRSFAbnormalTouch;
    map['LL_Right_DTR_SF_Abnormal_Pain_Present'] = lLRightDTRSFAbnormalPainPresent;
    map['LL_Right_DTR_SF_Abnormal_Pressure_Abnormal'] = lLRightDTRSFAbnormalPressureAbnormal;
    map['LL_Right_DTR_SF_Abnormal_Tenderness_Present'] = lLRightDTRSFAbnormalTendernessPresent;
    map['LL_Left_Appearance'] = lLLeftAppearance;
    map['LL_Left_Appearance_Abnormal'] = lLLeftAppearanceAbnormal;
    map['LL_Left_Motor_Function_Tone'] = lLLeftMotorFunctionTone;
    map['LL_Left_Motor_Function_Range_of_Movement'] = lLLeftMotorFunctionRangeOfMovement;
    map['LL_Left_Motor_Function_Strength'] = lLLeftMotorFunctionStrength;
    map['LL_Left_Motor_Function_Knee'] = lLLeftMotorFunctionKnee;
    map['LL_Left_Motor_Function_Knee_Abnormal'] = lLLeftMotorFunctionKneeAbnormal;
    map['LL_Left_Deep_Tendon_Reflexes_Sensory_Function'] = lLLeftDeepTendonReflexesSensoryFunction;
    map['LL_Left_DTR_SF_Abnormal'] = lLLeftDTRSFAbnormal;
    map['LL_Left_DTR_SF_Abnormal_Touch'] = lLLeftDTRSFAbnormalTouch;
    map['LL_Left_DTR_SF_Abnormal_Pain_Present'] = lLLeftDTRSFAbnormalPainPresent;
    map['LL_Left_DTR_SF_Abnormal_Pressure_Abnormal'] = lLLeftDTRSFAbnormalPressureAbnormal;
    map['LL_Left_DTR_SF_Abnormal_Tenderness_Present'] = lLLeftDTRSFAbnormalTendernessPresent;
    return map;
  }

}