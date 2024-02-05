class StationCExtraOcularRequest {
  StationCExtraOcularRequest({
    this.extraOcularRightNormalEyeMovement,
    this.extraOcularRightStrabismus,
    this.extraOcularRightDroopingLid,
    this.extraOcularRightRestrictedMobility,
    this.extraOcularRightNystagmus,
    this.extraOcularRightBulging,
    this.extraOcularLeftNormalEyeMovement,
    this.extraOcularLeftStrabismus,
    this.extraOcularLeftDroopingLid,
    this.extraOcularLeftRestrictedMobility,
    this.extraOcularLeftNystagmus,
    this.extraOcularLeftBulging,
  });

  StationCExtraOcularRequest.fromJson(dynamic json) {
    extraOcularRightNormalEyeMovement =
        json['Extra_Ocular_Right_Normal_Eye_Movement'];
    extraOcularRightStrabismus = json['Extra_Ocular_Right_Strabismus'];
    extraOcularRightDroopingLid = json['Extra_Ocular_Right_Drooping_Lid'];
    extraOcularRightRestrictedMobility =
        json['Extra_Ocular_Right_Restricted_Mobility'];
    extraOcularRightNystagmus = json['Extra_Ocular_Right_Nystagmus'];
    extraOcularRightBulging = json['Extra_Ocular_Right_Bulging'];
    extraOcularLeftNormalEyeMovement =
        json['Extra_Ocular_Left_Normal_Eye_Movement'];
    extraOcularLeftStrabismus = json['Extra_Ocular_Left_Strabismus'];
    extraOcularLeftDroopingLid = json['Extra_Ocular_Left_Drooping_Lid'];
    extraOcularLeftRestrictedMobility =
        json['Extra_Ocular_Left_Restricted_Mobility'];
    extraOcularLeftNystagmus = json['Extra_Ocular_Left_Nystagmus'];
    extraOcularLeftBulging = json['Extra_Ocular_Left_Bulging'];
  }
  String? extraOcularRightNormalEyeMovement;
  String? extraOcularRightStrabismus;
  String? extraOcularRightDroopingLid;
  String? extraOcularRightRestrictedMobility;
  String? extraOcularRightNystagmus;
  String? extraOcularRightBulging;
  String? extraOcularLeftNormalEyeMovement;
  String? extraOcularLeftStrabismus;
  String? extraOcularLeftDroopingLid;
  String? extraOcularLeftRestrictedMobility;
  String? extraOcularLeftNystagmus;
  String? extraOcularLeftBulging;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Extra_Ocular_Right_Normal_Eye_Movement'] =
        extraOcularRightNormalEyeMovement;
    map['Extra_Ocular_Right_Strabismus'] = extraOcularRightStrabismus;
    map['Extra_Ocular_Right_Drooping_Lid'] = extraOcularRightDroopingLid;
    map['Extra_Ocular_Right_Restricted_Mobility'] =
        extraOcularRightRestrictedMobility;
    map['Extra_Ocular_Right_Nystagmus'] = extraOcularRightNystagmus;
    map['Extra_Ocular_Right_Bulging'] = extraOcularRightBulging;
    map['Extra_Ocular_Left_Normal_Eye_Movement'] =
        extraOcularLeftNormalEyeMovement;
    map['Extra_Ocular_Left_Strabismus'] = extraOcularLeftStrabismus;
    map['Extra_Ocular_Left_Drooping_Lid'] = extraOcularLeftDroopingLid;
    map['Extra_Ocular_Left_Restricted_Mobility'] =
        extraOcularLeftRestrictedMobility;
    map['Extra_Ocular_Left_Nystagmus'] = extraOcularLeftNystagmus;
    map['Extra_Ocular_Left_Bulging'] = extraOcularLeftBulging;
    return map;
  }
}
