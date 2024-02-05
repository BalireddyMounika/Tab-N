class Stations {
  Stations({this.hcid, this.stationID, this.hcpId});

  Stations.fromJson(dynamic json) {
    hcid = json['HCID'];
    hcpId = json['HCPID'];
    stationID = json['StationID'];
  }
  int? hcid;
  int? hcpId;
  int? stationID;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['HCID'] = hcid;
    map['HCPID'] = hcpId;
    map['StationID'] = stationID;
    return map;
  }
}
