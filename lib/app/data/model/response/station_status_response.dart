class StationStatusModel {
  StationStatusModel({
    this.stationsStatus,
  });

  StationStatusModel.fromJson(dynamic json) {
    if (json['StationsStatus'] != null) {
      stationsStatus = [];
      json['StationsStatus'].forEach((v) {
        stationsStatus?.add(StationsStatus.fromJson(v));
      });
    }
  }
  List<StationsStatus>? stationsStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (stationsStatus != null) {
      map['StationsStatus'] = stationsStatus?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class StationsStatus {
  StationsStatus({
    this.stationID,
    this.completed,
  });

  StationsStatus.fromJson(dynamic json) {
    stationID = json['StationID'];
    completed = json['Completed'];
  }
  int? stationID;
  String? completed;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['StationID'] = stationID;
    map['Completed'] = completed;
    return map;
  }
}
