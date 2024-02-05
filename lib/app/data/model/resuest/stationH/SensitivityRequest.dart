class SensitivityRequest {
  SensitivityRequest({
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
  });

  SensitivityRequest.fromJson(dynamic json) {
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
  }
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

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
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
    return map;
  }
}
