class DentalOtherObservationRequest {
  DentalOtherObservationRequest({
    this.otherObservations,
    this.stationHDentalSRNeeded,
    this.stationHDentalSRNeededYesType,
    this.stationHDentalSRNeededYesFlag,
  });

  DentalOtherObservationRequest.fromJson(dynamic json) {
    otherObservations = json['Other_Observations'];
    stationHDentalSRNeeded = json['StationH_Dental_SR_Needed'];
    stationHDentalSRNeededYesType = json['StationH_Dental_SR_Needed_Yes_Type'];
    stationHDentalSRNeededYesFlag = json['StationH_Dental_SR_Needed_Yes_Flag'];
  }
  String? otherObservations;
  String? stationHDentalSRNeeded;
  String? stationHDentalSRNeededYesType;
  String? stationHDentalSRNeededYesFlag;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Other_Observations'] = otherObservations;
    map['StationH_Dental_SR_Needed'] = stationHDentalSRNeeded;
    map['StationH_Dental_SR_Needed_Yes_Type'] = stationHDentalSRNeededYesType;
    map['StationH_Dental_SR_Needed_Yes_Flag'] = stationHDentalSRNeededYesFlag;
    return map;
  }
}
