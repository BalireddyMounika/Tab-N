class StationHRequest {
  StationHRequest({
    this.hcid,
    this.hcpid,
    this.infoseekId,
    this.upperPermanent,
    this.upperPermanentDecayed,
    this.upperPermanentMissing,
    this.upperPermanentFilled,
    this.upperPermanentProsthesis,
    this.upperPermanentRestorationDone,
    this.upperDeciduous,
    this.upperDeciduousDecayed,
    this.upperDeciduousMissing,
    this.upperDeciduousFilled,
    this.upperDeciduousProsthesis,
    this.upperDeciduousRestorationDone,
    this.lowerDeciduous,
    this.lowerDeciduousDecayed,
    this.lowerDeciduousMissing,
    this.lowerDeciduousFilled,
    this.lowerDeciduousProsthesis,
    this.lowerDeciduousRestorationDone,
    this.lowerPermanent,
    this.lowerPermanentDecayed,
    this.lowerPermanentMissing,
    this.lowerPermanentFilled,
    this.lowerPermanentProsthesis,
    this.lowerPermanentRestorationDone,
    this.entryTime,
  });

  StationHRequest.fromJson(dynamic json) {
    hcid = json['HCID'];
    hcpid = json['HCPID'];
    infoseekId = json['InfoseekId'];
    upperPermanent = json['Upper_Permanent'];
    upperPermanentDecayed = json['Upper_Permanent_Decayed'];
    upperPermanentMissing = json['Upper_Permanent_Missing'];
    upperPermanentFilled = json['Upper_Permanent_Filled'];
    upperPermanentProsthesis = json['Upper_Permanent_Prosthesis'];
    upperPermanentRestorationDone = json['Upper_Permanent_Restoration_done'];
    upperDeciduous = json['Upper_Deciduous'];
    upperDeciduousDecayed = json['Upper_Deciduous_Decayed'];
    upperDeciduousMissing = json['Upper_Deciduous_Missing'];
    upperDeciduousFilled = json['Upper_Deciduous_Filled'];
    upperDeciduousProsthesis = json['Upper_Deciduous_Prosthesis'];
    upperDeciduousRestorationDone = json['Upper_Deciduous_Restoration_done'];
    lowerDeciduous = json['Lower_Deciduous'];
    lowerDeciduousDecayed = json['Lower_Deciduous_Decayed'];
    lowerDeciduousMissing = json['Lower_Deciduous_Missing'];
    lowerDeciduousFilled = json['Lower_Deciduous_Filled'];
    lowerDeciduousProsthesis = json['Lower_Deciduous_Prosthesis'];
    lowerDeciduousRestorationDone = json['Lower_Deciduous_Restoration_done'];
    lowerPermanent = json['Lower_Permanent'];
    lowerPermanentDecayed = json['Lower_Permanent_Decayed'];
    lowerPermanentMissing = json['Lower_Permanent_Missing'];
    lowerPermanentFilled = json['Lower_Permanent_Filled'];
    lowerPermanentProsthesis = json['Lower_Permanent_Prosthesis'];
    lowerPermanentRestorationDone = json['Lower_Permanent_Restoration_done'];
    entryTime = json['EntryTime'];
  }
  int? hcid;
  int? hcpid;
  int? infoseekId;
  String? upperPermanent;
  String? upperPermanentDecayed;
  String? upperPermanentMissing;
  String? upperPermanentFilled;
  String? upperPermanentProsthesis;
  String? upperPermanentRestorationDone;
  String? upperDeciduous;
  String? upperDeciduousDecayed;
  String? upperDeciduousMissing;
  String? upperDeciduousFilled;
  String? upperDeciduousProsthesis;
  String? upperDeciduousRestorationDone;
  String? lowerDeciduous;
  String? lowerDeciduousDecayed;
  String? lowerDeciduousMissing;
  String? lowerDeciduousFilled;
  String? lowerDeciduousProsthesis;
  String? lowerDeciduousRestorationDone;
  String? lowerPermanent;
  String? lowerPermanentDecayed;
  String? lowerPermanentMissing;
  String? lowerPermanentFilled;
  String? lowerPermanentProsthesis;
  String? lowerPermanentRestorationDone;
  String? entryTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['HCID'] = hcid;
    map['HCPID'] = hcpid;
    map['InfoseekId'] = infoseekId;
    map['Upper_Permanent'] = upperPermanent;
    map['Upper_Permanent_Decayed'] = upperPermanentDecayed;
    map['Upper_Permanent_Missing'] = upperPermanentMissing;
    map['Upper_Permanent_Filled'] = upperPermanentFilled;
    map['Upper_Permanent_Prosthesis'] = upperPermanentProsthesis;
    map['Upper_Permanent_Restoration_done'] = upperPermanentRestorationDone;
    map['Upper_Deciduous'] = upperDeciduous;
    map['Upper_Deciduous_Decayed'] = upperDeciduousDecayed;
    map['Upper_Deciduous_Missing'] = upperDeciduousMissing;
    map['Upper_Deciduous_Filled'] = upperDeciduousFilled;
    map['Upper_Deciduous_Prosthesis'] = upperDeciduousProsthesis;
    map['Upper_Deciduous_Restoration_done'] = upperDeciduousRestorationDone;
    map['Lower_Deciduous'] = lowerDeciduous;
    map['Lower_Deciduous_Decayed'] = lowerDeciduousDecayed;
    map['Lower_Deciduous_Missing'] = lowerDeciduousMissing;
    map['Lower_Deciduous_Filled'] = lowerDeciduousFilled;
    map['Lower_Deciduous_Prosthesis'] = lowerDeciduousProsthesis;
    map['Lower_Deciduous_Restoration_done'] = lowerDeciduousRestorationDone;
    map['Lower_Permanent'] = lowerPermanent;
    map['Lower_Permanent_Decayed'] = lowerPermanentDecayed;
    map['Lower_Permanent_Missing'] = lowerPermanentMissing;
    map['Lower_Permanent_Filled'] = lowerPermanentFilled;
    map['Lower_Permanent_Prosthesis'] = lowerPermanentProsthesis;
    map['Lower_Permanent_Restoration_done'] = lowerPermanentRestorationDone;
    map['EntryTime'] = entryTime;

    return map;
  }
}
