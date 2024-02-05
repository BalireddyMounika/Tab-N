class StationFHeadRequest {
  StationFHeadRequest({
      this.headSkullFontanelle, 
      this.headSkullFontanelleOpen, 
      this.headSkullFontanelleOpenFontanella, 
      this.headSkullFontanelleOpenOccipital, 
      this.headSkullAppearanceAndSize, 
      this.headSkullAppearanceAndSizeOther, 
      this.headHairAppearance, 
      this.headHairAppearanceAbnormal, 
      this.headHairAppearanceAbnormalOther, 
      this.headScalp, 
      this.headScalpAbnormal, 
      this.headParasites, 
      this.headParasitesYes, 
      this.headParasitesYesOther, 
      this.headHairLoss, 
      this.headHairLossYes,});

  StationFHeadRequest.fromJson(dynamic json) {
    headSkullFontanelle = json['Head_Skull_Fontanelle'];
    headSkullFontanelleOpen = json['Head_Skull_Fontanelle_Open'];
    headSkullFontanelleOpenFontanella = json['Head_Skull_Fontanelle_Open_Fontanella'];
    headSkullFontanelleOpenOccipital = json['Head_Skull_Fontanelle_Open_Occipital'];
    headSkullAppearanceAndSize = json['Head_Skull_Appearance_and_Size'];
    headSkullAppearanceAndSizeOther = json['Head_Skull_Appearance_and_Size_Other'];
    headHairAppearance = json['Head_Hair_Appearance'];
    headHairAppearanceAbnormal = json['Head_Hair_Appearance_Abnormal'];
    headHairAppearanceAbnormalOther = json['Head_Hair_Appearance_Abnormal_Other'];
    headScalp = json['Head_Scalp'];
    headScalpAbnormal = json['Head_Scalp_Abnormal'];
    headParasites = json['Head_Parasites'];
    headParasitesYes = json['Head_Parasites_Yes'];
    headParasitesYesOther = json['Head_Parasites_Yes_Other'];
    headHairLoss = json['Head_Hair_Loss'];
    headHairLossYes = json['Head_Hair_Loss_Yes'];
  }
  String? headSkullFontanelle;
  String? headSkullFontanelleOpen;
  String? headSkullFontanelleOpenFontanella;
  String? headSkullFontanelleOpenOccipital;
  String? headSkullAppearanceAndSize;
  String? headSkullAppearanceAndSizeOther;
  String? headHairAppearance;
  String? headHairAppearanceAbnormal;
  String? headHairAppearanceAbnormalOther;
  String? headScalp;
  String? headScalpAbnormal;
  String? headParasites;
  String? headParasitesYes;
  String? headParasitesYesOther;
  String? headHairLoss;
  String? headHairLossYes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Head_Skull_Fontanelle'] = headSkullFontanelle;
    map['Head_Skull_Fontanelle_Open'] = headSkullFontanelleOpen;
    map['Head_Skull_Fontanelle_Open_Fontanella'] = headSkullFontanelleOpenFontanella;
    map['Head_Skull_Fontanelle_Open_Occipital'] = headSkullFontanelleOpenOccipital;
    map['Head_Skull_Appearance_and_Size'] = headSkullAppearanceAndSize;
    map['Head_Skull_Appearance_and_Size_Other'] = headSkullAppearanceAndSizeOther;
    map['Head_Hair_Appearance'] = headHairAppearance;
    map['Head_Hair_Appearance_Abnormal'] = headHairAppearanceAbnormal;
    map['Head_Hair_Appearance_Abnormal_Other'] = headHairAppearanceAbnormalOther;
    map['Head_Scalp'] = headScalp;
    map['Head_Scalp_Abnormal'] = headScalpAbnormal;
    map['Head_Parasites'] = headParasites;
    map['Head_Parasites_Yes'] = headParasitesYes;
    map['Head_Parasites_Yes_Other'] = headParasitesYesOther;
    map['Head_Hair_Loss'] = headHairLoss;
    map['Head_Hair_Loss_Yes'] = headHairLossYes;
    return map;
  }

}