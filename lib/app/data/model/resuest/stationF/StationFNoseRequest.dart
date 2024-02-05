class StationFNoseRequest {
  StationFNoseRequest({
      this.noseDischarge, 
      this.noseDischargeYes, 
      this.noseDischargeYesRightNostril, 
      this.noseDischargeYesLeftNostril, 
      this.noseDryness, 
      this.noseDrynessYes, 
      this.noseCrusting, 
      this.noseCrustingYes, 
      this.nosePolyps, 
      this.nosePolypsYes, 
      this.noseSeptumBridge, 
      this.noseSinuses,});

  StationFNoseRequest.fromJson(dynamic json) {
    noseDischarge = json['Nose_Discharge'];
    noseDischargeYes = json['Nose_Discharge_Yes'];
    noseDischargeYesRightNostril = json['Nose_Discharge_Yes_Right_Nostril'];
    noseDischargeYesLeftNostril = json['Nose_Discharge_Yes_Left_Nostril'];
    noseDryness = json['Nose_Dryness'];
    noseDrynessYes = json['Nose_Dryness_Yes'];
    noseCrusting = json['Nose_Crusting'];
    noseCrustingYes = json['Nose_Crusting_Yes'];
    nosePolyps = json['Nose_Polyps'];
    nosePolypsYes = json['Nose_Polyps_Yes'];
    noseSeptumBridge = json['Nose_Septum_Bridge'];
    noseSinuses = json['Nose_Sinuses'];
  }
  String? noseDischarge;
  String? noseDischargeYes;
  String? noseDischargeYesRightNostril;
  String? noseDischargeYesLeftNostril;
  String? noseDryness;
  String? noseDrynessYes;
  String? noseCrusting;
  String? noseCrustingYes;
  String? nosePolyps;
  String? nosePolypsYes;
  String? noseSeptumBridge;
  String? noseSinuses;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Nose_Discharge'] = noseDischarge;
    map['Nose_Discharge_Yes'] = noseDischargeYes;
    map['Nose_Discharge_Yes_Right_Nostril'] = noseDischargeYesRightNostril;
    map['Nose_Discharge_Yes_Left_Nostril'] = noseDischargeYesLeftNostril;
    map['Nose_Dryness'] = noseDryness;
    map['Nose_Dryness_Yes'] = noseDrynessYes;
    map['Nose_Crusting'] = noseCrusting;
    map['Nose_Crusting_Yes'] = noseCrustingYes;
    map['Nose_Polyps'] = nosePolyps;
    map['Nose_Polyps_Yes'] = nosePolypsYes;
    map['Nose_Septum_Bridge'] = noseSeptumBridge;
    map['Nose_Sinuses'] = noseSinuses;
    return map;
  }

}