class StationFHygiene {
  StationFHygiene({
      this.hygieneNails, 
      this.hygieneHair, 
      this.hygieneSkin, 
      this.hygieneOdour,});

  StationFHygiene.fromJson(dynamic json) {
    hygieneNails = json['Hygiene_Nails'];
    hygieneHair = json['Hygiene_Hair'];
    hygieneSkin = json['Hygiene_Skin'];
    hygieneOdour = json['Hygiene_Odour'];
  }
  String? hygieneNails;
  String? hygieneHair;
  String? hygieneSkin;
  String? hygieneOdour;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Hygiene_Nails'] = hygieneNails;
    map['Hygiene_Hair'] = hygieneHair;
    map['Hygiene_Skin'] = hygieneSkin;
    map['Hygiene_Odour'] = hygieneOdour;
    return map;
  }

}