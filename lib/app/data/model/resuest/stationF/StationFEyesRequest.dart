class StationFEyesRequest {
  StationFEyesRequest({
      this.eyesConjuctiva, 
      this.eyesSclera, 
      this.eyesDischarge, 
      this.eyesDischargeYes, 
      this.eyesDischargeYesRightEye, 
      this.eyesDischargeYesLeftEye, 
      this.eyesEyelids, 
      this.eyesEyelidsAbnormal,});

  StationFEyesRequest.fromJson(dynamic json) {
    eyesConjuctiva = json['Eyes_Conjuctiva'];
    eyesSclera = json['Eyes_Sclera'];
    eyesDischarge = json['Eyes_Discharge'];
    eyesDischargeYes = json['Eyes_Discharge_Yes'];
    eyesDischargeYesRightEye = json['Eyes_Discharge_Yes_Right_Eye'];
    eyesDischargeYesLeftEye = json['Eyes_Discharge_Yes_Left_Eye'];
    eyesEyelids = json['Eyes_Eyelids'];
    eyesEyelidsAbnormal = json['Eyes_Eyelids_Abnormal'];
  }
  String? eyesConjuctiva;
  String? eyesSclera;
  String? eyesDischarge;
  String? eyesDischargeYes;
  String? eyesDischargeYesRightEye;
  String? eyesDischargeYesLeftEye;
  String? eyesEyelids;
  String? eyesEyelidsAbnormal;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Eyes_Conjuctiva'] = eyesConjuctiva;
    map['Eyes_Sclera'] = eyesSclera;
    map['Eyes_Discharge'] = eyesDischarge;
    map['Eyes_Discharge_Yes'] = eyesDischargeYes;
    map['Eyes_Discharge_Yes_Right_Eye'] = eyesDischargeYesRightEye;
    map['Eyes_Discharge_Yes_Left_Eye'] = eyesDischargeYesLeftEye;
    map['Eyes_Eyelids'] = eyesEyelids;
    map['Eyes_Eyelids_Abnormal'] = eyesEyelidsAbnormal;
    return map;
  }

}