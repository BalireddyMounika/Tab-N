class StationFEarsRequest {
  StationFEarsRequest({
      this.earsHearing, 
      this.earsHearingAbnormal, 
      this.earsHearingAbnormalReduced, 
      this.earsHearingAbnormalReducedWearsHearingAid, 
      this.earsHearingAbnormalReducedWearsHearingAidYes, 
      this.earsHearingAbnormalReducedOther, 
      this.earsDischarge, 
      this.earsDischargeYes, 
      this.earsDischargeYesRightEar, 
      this.earsDischargeYesLeftEar, 
      this.earWax, 
      this.earWaxPresent, 
      this.earEardrum, 
      this.earEardrumAbnormal, 
      this.earEardrumAbnormalRightEar, 
      this.earEardrumAbnormalLeftEar,});

  StationFEarsRequest.fromJson(dynamic json) {
    earsHearing = json['Ears_Hearing'];
    earsHearingAbnormal = json['Ears_Hearing_Abnormal'];
    earsHearingAbnormalReduced = json['Ears_Hearing_Abnormal_Reduced'];
    earsHearingAbnormalReducedWearsHearingAid = json['Ears_Hearing_Abnormal_Reduced_Wears_Hearing_Aid'];
    earsHearingAbnormalReducedWearsHearingAidYes = json['Ears_Hearing_Abnormal_Reduced_Wears_Hearing_Aid_Yes'];
    earsHearingAbnormalReducedOther = json['Ears_Hearing_Abnormal_Reduced_Other'];
    earsDischarge = json['Ears_Discharge'];
    earsDischargeYes = json['Ears_Discharge_Yes'];
    earsDischargeYesRightEar = json['Ears_Discharge_Yes_Right_Ear'];
    earsDischargeYesLeftEar = json['Ears_Discharge_Yes_Left_Ear'];
    earWax = json['Ear_Wax'];
    earWaxPresent = json['Ear_Wax_Present'];
    earEardrum = json['Ear_Eardrum'];
    earEardrumAbnormal = json['Ear_Eardrum_Abnormal'];
    earEardrumAbnormalRightEar = json['Ear_Eardrum_Abnormal_Right_Ear'];
    earEardrumAbnormalLeftEar = json['Ear_Eardrum_Abnormal_Left_Ear'];
  }
  String? earsHearing;
  String? earsHearingAbnormal;
  String? earsHearingAbnormalReduced;
  String? earsHearingAbnormalReducedWearsHearingAid;
  String? earsHearingAbnormalReducedWearsHearingAidYes;
  String? earsHearingAbnormalReducedOther;
  String? earsDischarge;
  String? earsDischargeYes;
  String? earsDischargeYesRightEar;
  String? earsDischargeYesLeftEar;
  String? earWax;
  String? earWaxPresent;
  String? earEardrum;
  String? earEardrumAbnormal;
  String? earEardrumAbnormalRightEar;
  String? earEardrumAbnormalLeftEar;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Ears_Hearing'] = earsHearing;
    map['Ears_Hearing_Abnormal'] = earsHearingAbnormal;
    map['Ears_Hearing_Abnormal_Reduced'] = earsHearingAbnormalReduced;
    map['Ears_Hearing_Abnormal_Reduced_Wears_Hearing_Aid'] = earsHearingAbnormalReducedWearsHearingAid;
    map['Ears_Hearing_Abnormal_Reduced_Wears_Hearing_Aid_Yes'] = earsHearingAbnormalReducedWearsHearingAidYes;
    map['Ears_Hearing_Abnormal_Reduced_Other'] = earsHearingAbnormalReducedOther;
    map['Ears_Discharge'] = earsDischarge;
    map['Ears_Discharge_Yes'] = earsDischargeYes;
    map['Ears_Discharge_Yes_Right_Ear'] = earsDischargeYesRightEar;
    map['Ears_Discharge_Yes_Left_Ear'] = earsDischargeYesLeftEar;
    map['Ear_Wax'] = earWax;
    map['Ear_Wax_Present'] = earWaxPresent;
    map['Ear_Eardrum'] = earEardrum;
    map['Ear_Eardrum_Abnormal'] = earEardrumAbnormal;
    map['Ear_Eardrum_Abnormal_Right_Ear'] = earEardrumAbnormalRightEar;
    map['Ear_Eardrum_Abnormal_Left_Ear'] = earEardrumAbnormalLeftEar;
    return map;
  }

}