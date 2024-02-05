class StationHResponse {
  StationHResponse({
    this.id,
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
    this.oralHygiene,
    this.plaque,
    this.dentalStains,
    this.malocclusion,
    this.crowding,
    this.impactedTooth,
    this.impactedToothYes,
    this.impactedToothYesPosition,
    this.wornEnamel,
    this.sensitivity,
    this.untreatedCaries,
    this.cariesExperience,
    this.dentalSealantsPresent,
    this.braces,
    this.bracesYes,
    this.bridges,
    this.bridgesYes,
    this.dentures,
    this.denturesYes,
    this.softTissuePathology,
    this.softTissuePathologyYes,
    this.softTissuePathologyYesOther,
    this.treatmentNeeded,
    this.treatmentNeededYes,
    this.treatmentNeededYesOther,
    this.dentalFlorosis,
    this.otherObservations,
    this.stationHDentalSRNeeded,
    this.stationHDentalSRNeededYesType,
    this.stationHDentalSRNeededYesFlag,
    this.specialistReferralNeeded,
    this.specialistReferralNeededType,
    this.specialistReferralNeededFlag,
    this.other,
  });

  StationHResponse.fromJson(dynamic json) {
    id = json['id'];
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
    oralHygiene = json['Oral_Hygiene'];
    plaque = json['Plaque'];
    dentalStains = json['Dental_Stains'];
    malocclusion = json['Malocclusion'];
    crowding = json['Crowding'];
    impactedTooth = json['Impacted_Tooth'];
    impactedToothYes = json['Impacted_Tooth_Yes'];
    impactedToothYesPosition = json['Impacted_Tooth_Yes_Position'];
    wornEnamel = json['Worn_Enamel'];
    sensitivity = json['Sensitivity'];
    untreatedCaries = json['Untreated_Caries'];
    cariesExperience = json['Caries_Experience'];
    dentalSealantsPresent = json['Dental_Sealants_Present'];
    braces = json['Braces'];
    bracesYes = json['Braces_Yes'];
    bridges = json['Bridges'];
    bridgesYes = json['Bridges_Yes'];
    dentures = json['Dentures'];
    denturesYes = json['Dentures_Yes'];
    softTissuePathology = json['Soft_Tissue_Pathology'];
    softTissuePathologyYes = json['Soft_Tissue_Pathology_Yes'];
    softTissuePathologyYesOther = json['Soft_Tissue_Pathology_Yes_Other'];
    treatmentNeeded = json['Treatment_Needed'];
    treatmentNeededYes = json['Treatment_Needed_Yes'];
    treatmentNeededYesOther = json['Treatment_Needed_Yes_Other'];
    dentalFlorosis = json['Dental_Florosis'];
    otherObservations = json['Other_Observations'];
    stationHDentalSRNeeded = json['StationH_Dental_SR_Needed'];
    stationHDentalSRNeededYesType = json['StationH_Dental_SR_Needed_Yes_Type'];
    stationHDentalSRNeededYesFlag = json['StationH_Dental_SR_Needed_Yes_Flag'];
    specialistReferralNeeded = json['Specialist_Referral_Needed'];
    specialistReferralNeededType = json['Specialist_Referral_Needed_Type'];
    specialistReferralNeededFlag = json['Specialist_Referral_Needed_Flag'];
    other = json['Other'];
  }
  int? id;
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
  String? oralHygiene;
  String? plaque;
  String? dentalStains;
  String? malocclusion;
  String? crowding;
  String? impactedTooth;
  String? impactedToothYes;
  String? impactedToothYesPosition;
  String? wornEnamel;
  String? sensitivity;
  String? untreatedCaries;
  String? cariesExperience;
  String? dentalSealantsPresent;
  String? braces;
  String? bracesYes;
  String? bridges;
  String? bridgesYes;
  String? dentures;
  String? denturesYes;
  String? softTissuePathology;
  String? softTissuePathologyYes;
  String? softTissuePathologyYesOther;
  String? treatmentNeeded;
  String? treatmentNeededYes;
  String? treatmentNeededYesOther;
  String? dentalFlorosis;
  String? otherObservations;
  String? stationHDentalSRNeeded;
  String? stationHDentalSRNeededYesType;
  String? stationHDentalSRNeededYesFlag;
  String? specialistReferralNeeded;
  String? specialistReferralNeededType;
  String? specialistReferralNeededFlag;
  String? other;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
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
    map['Oral_Hygiene'] = oralHygiene;
    map['Plaque'] = plaque;
    map['Dental_Stains'] = dentalStains;
    map['Malocclusion'] = malocclusion;
    map['Crowding'] = crowding;
    map['Impacted_Tooth'] = impactedTooth;
    map['Impacted_Tooth_Yes'] = impactedToothYes;
    map['Impacted_Tooth_Yes_Position'] = impactedToothYesPosition;
    map['Worn_Enamel'] = wornEnamel;
    map['Sensitivity'] = sensitivity;
    map['Untreated_Caries'] = untreatedCaries;
    map['Caries_Experience'] = cariesExperience;
    map['Dental_Sealants_Present'] = dentalSealantsPresent;
    map['Braces'] = braces;
    map['Braces_Yes'] = bracesYes;
    map['Bridges'] = bridges;
    map['Bridges_Yes'] = bridgesYes;
    map['Dentures'] = dentures;
    map['Dentures_Yes'] = denturesYes;
    map['Soft_Tissue_Pathology'] = softTissuePathology;
    map['Soft_Tissue_Pathology_Yes'] = softTissuePathologyYes;
    map['Soft_Tissue_Pathology_Yes_Other'] = softTissuePathologyYesOther;
    map['Treatment_Needed'] = treatmentNeeded;
    map['Treatment_Needed_Yes'] = treatmentNeededYes;
    map['Treatment_Needed_Yes_Other'] = treatmentNeededYesOther;
    map['Dental_Florosis'] = dentalFlorosis;
    map['Other_Observations'] = otherObservations;
    map['StationH_Dental_SR_Needed'] = stationHDentalSRNeeded;
    map['StationH_Dental_SR_Needed_Yes_Type'] = stationHDentalSRNeededYesType;
    map['StationH_Dental_SR_Needed_Yes_Flag'] = stationHDentalSRNeededYesFlag;
    map['Specialist_Referral_Needed'] = specialistReferralNeeded;
    map['Specialist_Referral_Needed_Type'] = specialistReferralNeededType;
    map['Specialist_Referral_Needed_Flag'] = specialistReferralNeededFlag;
    map['Other'] = other;
    return map;
  }
}
