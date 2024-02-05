class StationAUpdateModel {
  StationAUpdateModel({
      this.hcid, 
      this.hcpid, 
      this.infoseekId, 
      this.height, 
      this.length, 
      this.weight, 
      this.calculatedBMI, 
      this.tricepsSkinFold,
      this.subscapularSkinfold, 
      this.armCircumference, 
      this.headCircumference, 
      this.abdominalGirth, 
      this.abdominalGirthToHightRatio, 
      this.otherObservations, 
      this.specialistReferralNeeded, 
      this.specialistReferralNeededType, 
      this.specialistReferralNeededFlag, 
      this.other, 
      this.completed,});

  StationAUpdateModel.fromJson(dynamic json) {
    hcid = json['HCID'];
    hcpid = json['HCPID'];
    infoseekId = json['InfoseekId'];
    height = json['Height'];
    length = json['Length'];
    weight = json['Weight'];
    calculatedBMI = json['Calculated_BMI'];
    tricepsSkinFold = json['Triceps_Skin_Fold'];
    subscapularSkinfold = json['Subscapular_Skinfold'];
    armCircumference = json['Arm_Circumference'];
    headCircumference = json['Head_Circumference'];
    abdominalGirth = json['Abdominal_Girth'];
    abdominalGirthToHightRatio = json['Abdominal_Girth_to_Hight_Ratio'];
    otherObservations = json['Other_Observations'];
    specialistReferralNeeded = json['Specialist_Referral_Needed'];
    specialistReferralNeededType = json['Specialist_Referral_Needed_Type'];
    specialistReferralNeededFlag = json['Specialist_Referral_Needed_Flag'];
    other = json['Other'];
    completed = json['Completed'];
  }
  int? hcid;
  int? hcpid;
  int? infoseekId;
  int? height;
  int? length;
  int? weight;
  String? calculatedBMI;
  String? tricepsSkinFold;
  String? subscapularSkinfold;
  String? armCircumference;
  String? headCircumference;
  String? abdominalGirth;
  String? abdominalGirthToHightRatio;
  String? otherObservations;
  String? specialistReferralNeeded;
  String? specialistReferralNeededType;
  String? specialistReferralNeededFlag;
  String? other;
  String? completed;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['HCID'] = hcid;
    map['HCPID'] = hcpid;
    map['InfoseekId'] = infoseekId;
    map['Height'] = height;
    map['Length'] = length;
    map['Weight'] = weight;
    map['Calculated_BMI'] = calculatedBMI;
    map['Triceps_Skin_Fold'] = tricepsSkinFold;
    map['Subscapular_Skinfold'] = subscapularSkinfold;
    map['Arm_Circumference'] = armCircumference;
    map['Head_Circumference'] = headCircumference;
    map['Abdominal_Girth'] = abdominalGirth;
    map['Abdominal_Girth_to_Hight_Ratio'] = abdominalGirthToHightRatio;
    map['Other_Observations'] = otherObservations;
    map['Specialist_Referral_Needed'] = specialistReferralNeeded;
    map['Specialist_Referral_Needed_Type'] = specialistReferralNeededType;
    map['Specialist_Referral_Needed_Flag'] = specialistReferralNeededFlag;
    map['Other'] = other;
    map['Completed'] = completed;
    return map;
  }

}