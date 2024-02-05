class OralHygieneRequest {
  OralHygieneRequest({
    this.oralHygiene,
    this.plaque,
    this.dentalStains,
    this.malocclusion,
    this.crowding,
    this.impactedTooth,
    this.impactedToothYes,
    this.impactedToothYesPosition,
    this.wornEnamel,
  });

  OralHygieneRequest.fromJson(dynamic json) {
    oralHygiene = json['Oral_Hygiene'];
    plaque = json['Plaque'];
    dentalStains = json['Dental_Stains'];
    malocclusion = json['Malocclusion'];
    crowding = json['Crowding'];
    impactedTooth = json['Impacted_Tooth'];
    impactedToothYes = json['Impacted_Tooth_Yes'];
    impactedToothYesPosition = json['Impacted_Tooth_Yes_Position'];
    wornEnamel = json['Worn_Enamel'];
  }
  String? oralHygiene;
  String? plaque;
  String? dentalStains;
  String? malocclusion;
  String? crowding;
  String? impactedTooth;
  String? impactedToothYes;
  String? impactedToothYesPosition;
  String? wornEnamel;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Oral_Hygiene'] = oralHygiene;
    map['Plaque'] = plaque;
    map['Dental_Stains'] = dentalStains;
    map['Malocclusion'] = malocclusion;
    map['Crowding'] = crowding;
    map['Impacted_Tooth'] = impactedTooth;
    map['Impacted_Tooth_Yes'] = impactedToothYes;
    map['Impacted_Tooth_Yes_Position'] = impactedToothYesPosition;
    map['Worn_Enamel'] = wornEnamel;
    return map;
  }
}
