class StationBRequest {
  StationBRequest({
    this.hcid,
    this.hcpid,
    this.infoSeekId,
    this.bloodPressurePosition,
    this.bloodPressureTypeOfInstrument,
    this.bloodPressureSystolicBP,
    this.bloodPressureDiastolicBP,
    this.respiration,
    this.heartRate,
    this.tempratureMeasurementSite,
    this.tempratureMeasurementInstrument,
    this.temprature,
    this.oxygenSaturationSpO2,
    this.otherObservations,
    this.specialistReferralNeeded,
    this.specialistReferralNeededType,
    this.specialistReferralNeededFlag,
    this.other,
    this.completed,
    this.entryTime,
    this.endTime,
  });

  StationBRequest.fromJson(dynamic json) {
    hcid = json['HCID'];
    hcpid = json['HCPID'];
    infoSeekId = json['InfoseekId'];
    bloodPressurePosition = json['Blood_Pressure_Position'];
    bloodPressureTypeOfInstrument = json['Blood_Pressure_Type_of_Instrument'];
    bloodPressureSystolicBP = json['Blood_Pressure_Systolic_BP'];
    bloodPressureDiastolicBP = json['Blood_Pressure_Diastolic_BP'];
    respiration = json['Respiration'];
    heartRate = json['Heart_Rate'];
    tempratureMeasurementSite = json['Temprature_Measurement_Site'];
    tempratureMeasurementInstrument = json['Temprature_Measurement_Instrument'];
    temprature = json['Temprature'];
    oxygenSaturationSpO2 = json['Oxygen_Saturation_SpO2'];
    otherObservations = json['Other_Observations'];
    specialistReferralNeeded = json['Specialist_Referral_Needed'];
    specialistReferralNeededType = json['Specialist_Referral_Needed_Type'];
    specialistReferralNeededFlag = json['Specialist_Referral_Needed_Flag'];
    other = json['Other'];
    completed = json['Completed'];
    entryTime = json['EntryTime'];
    endTime = json['EndTime'];
  }
  int? hcid;
  int? hcpid;
  int? infoSeekId;
  String? bloodPressurePosition;
  String? bloodPressureTypeOfInstrument;
  String? bloodPressureSystolicBP;
  String? bloodPressureDiastolicBP;
  String? respiration;
  String? heartRate;
  String? tempratureMeasurementSite;
  String? tempratureMeasurementInstrument;
  String? temprature;
  String? oxygenSaturationSpO2;
  String? otherObservations;
  String? specialistReferralNeeded;
  String? specialistReferralNeededType;
  String? specialistReferralNeededFlag;
  String? other;
  String? completed;
  String? entryTime;
  String? endTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['HCID'] = hcid;
    map['HCPID'] = hcpid;
    map['InfoseekId'] = infoSeekId;
    map['Blood_Pressure_Position'] = bloodPressurePosition;
    map['Blood_Pressure_Type_of_Instrument'] = bloodPressureTypeOfInstrument;
    map['Blood_Pressure_Systolic_BP'] = bloodPressureSystolicBP;
    map['Blood_Pressure_Diastolic_BP'] = bloodPressureDiastolicBP;
    map['Respiration'] = respiration;
    map['Heart_Rate'] = heartRate;
    map['Temprature_Measurement_Site'] = tempratureMeasurementSite;
    map['Temprature_Measurement_Instrument'] = tempratureMeasurementInstrument;
    map['Temprature'] = temprature;
    map['Oxygen_Saturation_SpO2'] = oxygenSaturationSpO2;
    map['Other_Observations'] = otherObservations;
    map['Specialist_Referral_Needed'] = specialistReferralNeeded;
    map['Specialist_Referral_Needed_Type'] = specialistReferralNeededType;
    map['Specialist_Referral_Needed_Flag'] = specialistReferralNeededFlag;
    map['Other'] = other;
    map['Completed'] = completed;
    map['EntryTime'] = entryTime;
    map['EndTime'] = endTime;

    return map;
  }
}