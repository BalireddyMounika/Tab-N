class NervousSystem {
  NervousSystem({
      this.hcid, 
      this.hcpid, 
      this.infoseekId, 
      this.entryTime, 
      this.centralNervousSystemAlert, 
      this.cNSOriented, 
      this.cNSListens, 
      this.cNSUnderstands, 
      this.cNSResponds, 
      this.cNSSpeech, 
      this.cNSSpeechAbnormal, 
      this.cNSSpeechAbnormalOther, 
      this.cNSHistoryOfHeadache, 
      this.cNSHistoryOfHeadacheYesFrequency, 
      this.cNSHistoryOfHeadacheYesFrequencyContinuous, 
      this.cNSHistoryOfHeadacheYesAssociatedWith, 
      this.cNSHistoryOfHeadacheYesAssociatedWithOccurrence, 
      this.cNSHistoryOfHeadacheYesAssociatedWithOther, 
      this.cNSHistoryOfHeadacheYesFrom, 
      this.cNSHistoryOfHeadacheYesDuration, 
      this.cNSHistoryOfDizziness, 
      this.cNSHistoryOfDizzinessYesFrequency, 
      this.cNSHistoryOfDizzinessYesFrequencyContinuous, 
      this.cNSHistoryOfDizzinessYesAssociatedWith, 
      this.cNSHistoryOfDizzinessYesAssociatedWithOccurrence, 
      this.cNSHistoryOfDizzinessYesAssociatedWithOther,});

  NervousSystem.fromJson(dynamic json) {
    hcid = json['HCID'];
    hcpid = json['HCPID'];
    infoseekId = json['InfoseekId'];
    entryTime = json['EntryTime'];
    centralNervousSystemAlert = json['Central_Nervous_System_Alert'];
    cNSOriented = json['CNS_Oriented'];
    cNSListens = json['CNS_Listens'];
    cNSUnderstands = json['CNS_Understands'];
    cNSResponds = json['CNS_Responds'];
    cNSSpeech = json['CNS_Speech'];
    cNSSpeechAbnormal = json['CNS_Speech_Abnormal'];
    cNSSpeechAbnormalOther = json['CNS_Speech_Abnormal_Other'];
    cNSHistoryOfHeadache = json['CNS_History_of_Headache'];
    cNSHistoryOfHeadacheYesFrequency = json['CNS_History_of_Headache_yes_Frequency'];
    cNSHistoryOfHeadacheYesFrequencyContinuous = json['CNS_History_of_Headache_yes_Frequency_Continuous'];
    cNSHistoryOfHeadacheYesAssociatedWith = json['CNS_History_of_Headache_yes_Associated_With'];
    cNSHistoryOfHeadacheYesAssociatedWithOccurrence = json['CNS_History_of_Headache_yes_Associated_With_Occurrence'];
    cNSHistoryOfHeadacheYesAssociatedWithOther = json['CNS_History_of_Headache_yes_Associated_With_Other'];
    cNSHistoryOfHeadacheYesFrom = json['CNS_History_of_Headache_yes_From'];
    cNSHistoryOfHeadacheYesDuration = json['CNS_History_of_Headache_yes_Duration'];
    cNSHistoryOfDizziness = json['CNS_History_of_Dizziness'];
    cNSHistoryOfDizzinessYesFrequency = json['CNS_History_of_Dizziness_yes_Frequency'];
    cNSHistoryOfDizzinessYesFrequencyContinuous = json['CNS_History_of_Dizziness_yes_Frequency_Continuous'];
    cNSHistoryOfDizzinessYesAssociatedWith = json['CNS_History_of_Dizziness_yes_Associated_With'];
    cNSHistoryOfDizzinessYesAssociatedWithOccurrence = json['CNS_History_of_Dizziness_yes_Associated_With_Occurrence'];
    cNSHistoryOfDizzinessYesAssociatedWithOther = json['CNS_History_of_Dizziness_yes_Associated_With_Other'];
  }
  int? hcid;
  int? hcpid;
  int? infoseekId;
  String? entryTime;
  String? centralNervousSystemAlert;
  String? cNSOriented;
  String? cNSListens;
  String? cNSUnderstands;
  String? cNSResponds;
  String? cNSSpeech;
  String? cNSSpeechAbnormal;
  String? cNSSpeechAbnormalOther;
  String? cNSHistoryOfHeadache;
  String? cNSHistoryOfHeadacheYesFrequency;
  String? cNSHistoryOfHeadacheYesFrequencyContinuous;
  String? cNSHistoryOfHeadacheYesAssociatedWith;
  String? cNSHistoryOfHeadacheYesAssociatedWithOccurrence;
  String? cNSHistoryOfHeadacheYesAssociatedWithOther;
  String? cNSHistoryOfHeadacheYesFrom;
  String? cNSHistoryOfHeadacheYesDuration;
  String? cNSHistoryOfDizziness;
  String? cNSHistoryOfDizzinessYesFrequency;
  String? cNSHistoryOfDizzinessYesFrequencyContinuous;
  String? cNSHistoryOfDizzinessYesAssociatedWith;
  String? cNSHistoryOfDizzinessYesAssociatedWithOccurrence;
  String? cNSHistoryOfDizzinessYesAssociatedWithOther;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['HCID'] = hcid;
    map['HCPID'] = hcpid;
    map['InfoseekId'] = infoseekId;
    map['EntryTime'] = entryTime;
    map['Central_Nervous_System_Alert'] = centralNervousSystemAlert;
    map['CNS_Oriented'] = cNSOriented;
    map['CNS_Listens'] = cNSListens;
    map['CNS_Understands'] = cNSUnderstands;
    map['CNS_Responds'] = cNSResponds;
    map['CNS_Speech'] = cNSSpeech;
    map['CNS_Speech_Abnormal'] = cNSSpeechAbnormal;
    map['CNS_Speech_Abnormal_Other'] = cNSSpeechAbnormalOther;
    map['CNS_History_of_Headache'] = cNSHistoryOfHeadache;
    map['CNS_History_of_Headache_yes_Frequency'] = cNSHistoryOfHeadacheYesFrequency;
    map['CNS_History_of_Headache_yes_Frequency_Continuous'] = cNSHistoryOfHeadacheYesFrequencyContinuous;
    map['CNS_History_of_Headache_yes_Associated_With'] = cNSHistoryOfHeadacheYesAssociatedWith;
    map['CNS_History_of_Headache_yes_Associated_With_Occurrence'] = cNSHistoryOfHeadacheYesAssociatedWithOccurrence;
    map['CNS_History_of_Headache_yes_Associated_With_Other'] = cNSHistoryOfHeadacheYesAssociatedWithOther;
    map['CNS_History_of_Headache_yes_From'] = cNSHistoryOfHeadacheYesFrom;
    map['CNS_History_of_Headache_yes_Duration'] = cNSHistoryOfHeadacheYesDuration;
    map['CNS_History_of_Dizziness'] = cNSHistoryOfDizziness;
    map['CNS_History_of_Dizziness_yes_Frequency'] = cNSHistoryOfDizzinessYesFrequency;
    map['CNS_History_of_Dizziness_yes_Frequency_Continuous'] = cNSHistoryOfDizzinessYesFrequencyContinuous;
    map['CNS_History_of_Dizziness_yes_Associated_With'] = cNSHistoryOfDizzinessYesAssociatedWith;
    map['CNS_History_of_Dizziness_yes_Associated_With_Occurrence'] = cNSHistoryOfDizzinessYesAssociatedWithOccurrence;
    map['CNS_History_of_Dizziness_yes_Associated_With_Other'] = cNSHistoryOfDizzinessYesAssociatedWithOther;
    return map;
  }

}