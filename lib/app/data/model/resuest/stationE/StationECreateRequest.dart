class StationECreateRequest {
  StationECreateRequest({
    this.hcid,
    this.hcpid,
    this.infoSeekId,
    this.childMobility,
    this.childMobilityCanNotWalk,
    this.childMobilityCanNotWalkOther,
    this.studentAmbulant,
    this.studentAmbulantNo,
    this.gait,
    this.gaitAbnormal,
    this.gaitAbnormalLimp,
    this.gaitAbnormalLimpOther,
    this.entryTime,
  });

  StationECreateRequest.fromJson(dynamic json) {
    hcid = json['HCID'];
    hcpid = json['HCPID'];
    infoSeekId = json['InfoseekId'];
    childMobility = json['Child_Mobility'];
    childMobilityCanNotWalk = json['Child_Mobility_Can_not_Walk'];
    childMobilityCanNotWalkOther = json['Child_Mobility_Can_not_Walk_other'];
    studentAmbulant = json['Student_Ambulant'];
    studentAmbulantNo = json['Student_Ambulant_No'];
    gait = json['Gait'];
    gaitAbnormal = json['Gait_Abnormal'];
    gaitAbnormalLimp = json['Gait_Abnormal_Limp'];
    gaitAbnormalLimpOther = json['Gait_Abnormal_Limp_other'];
    entryTime = json['EntryTime'];
  }
  int? hcid;
  int? hcpid;
  int? infoSeekId;
  String? childMobility;
  String? childMobilityCanNotWalk;
  String? childMobilityCanNotWalkOther;
  String? studentAmbulant;
  String? studentAmbulantNo;
  String? gait;
  String? gaitAbnormal;
  String? gaitAbnormalLimp;
  String? gaitAbnormalLimpOther;
  String? entryTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['HCID'] = hcid;
    map['HCPID'] = hcpid;
    map['InfoseekId'] = infoSeekId;
    map['Child_Mobility'] = childMobility;
    map['Child_Mobility_Can_not_Walk'] = childMobilityCanNotWalk;
    map['Child_Mobility_Can_not_Walk_other'] = childMobilityCanNotWalkOther;
    map['Student_Ambulant'] = studentAmbulant;
    map['Student_Ambulant_No'] = studentAmbulantNo;
    map['Gait'] = gait;
    map['Gait_Abnormal'] = gaitAbnormal;
    map['Gait_Abnormal_Limp'] = gaitAbnormalLimp;
    map['Gait_Abnormal_Limp_other'] = gaitAbnormalLimpOther;
    map['EntryTime'] = entryTime;

    return map;
  }
}
