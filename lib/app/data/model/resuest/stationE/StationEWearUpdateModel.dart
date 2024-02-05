class StationEWearUpdateModel {
  StationEWearUpdateModel({
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
      this.neckMobilityRestrictedMovement,});

  StationEWearUpdateModel.fromJson(dynamic json) {
    wearBraceSupport = json['Wear_Brace_Support'];
    wearBraceSupportYes = json['Wear_Brace_Support_Yes'];
    prosthesis = json['Prosthesis'];
    prosthesisYes = json['Prosthesis_Yes'];
    prosthesisYesOther = json['Prosthesis_Yes_other'];
    spineAppearance = json['Spine_Appearance'];
    spineAppearanceAbnormal = json['Spine_Appearance_Abnormal'];
    spineAppearanceAbnormalOther = json['Spine_Appearance_Abnormal_Other'];
    shoulderGriddleAppearance = json['Shoulder_Griddle_Appearance'];
    shoulderGriddleAppearanceAbnormal = json['Shoulder_Griddle_Appearance_Abnormal'];
    shoulderGriddleAppearanceAbnormalOther = json['Shoulder_Griddle_Appearance_Abnormal_Other'];
    spineMobility = json['Spine_Mobility'];
    spineMobilityRestrictedMovement = json['Spine_Mobility_Restricted_movement'];
    neckMobility = json['Neck_Mobility'];
    neckMobilityRestrictedMovement = json['Neck_Mobility_Restricted_movement'];
  }
  String? wearBraceSupport;
  String? wearBraceSupportYes;
  String? prosthesis;
  String? prosthesisYes;
  String? prosthesisYesOther;
  String? spineAppearance;
  String? spineAppearanceAbnormal;
  String? spineAppearanceAbnormalOther;
  String? shoulderGriddleAppearance;
  String? shoulderGriddleAppearanceAbnormal;
  String? shoulderGriddleAppearanceAbnormalOther;
  String? spineMobility;
  String? spineMobilityRestrictedMovement;
  String? neckMobility;
  String? neckMobilityRestrictedMovement;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Wear_Brace_Support'] = wearBraceSupport;
    map['Wear_Brace_Support_Yes'] = wearBraceSupportYes;
    map['Prosthesis'] = prosthesis;
    map['Prosthesis_Yes'] = prosthesisYes;
    map['Prosthesis_Yes_other'] = prosthesisYesOther;
    map['Spine_Appearance'] = spineAppearance;
    map['Spine_Appearance_Abnormal'] = spineAppearanceAbnormal;
    map['Spine_Appearance_Abnormal_Other'] = spineAppearanceAbnormalOther;
    map['Shoulder_Griddle_Appearance'] = shoulderGriddleAppearance;
    map['Shoulder_Griddle_Appearance_Abnormal'] = shoulderGriddleAppearanceAbnormal;
    map['Shoulder_Griddle_Appearance_Abnormal_Other'] = shoulderGriddleAppearanceAbnormalOther;
    map['Spine_Mobility'] = spineMobility;
    map['Spine_Mobility_Restricted_movement'] = spineMobilityRestrictedMovement;
    map['Neck_Mobility'] = neckMobility;
    map['Neck_Mobility_Restricted_movement'] = neckMobilityRestrictedMovement;
    return map;
  }

}