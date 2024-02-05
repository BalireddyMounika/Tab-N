class StationFMouthRequest {
  StationFMouthRequest({
      this.mouthThroatMucosa, 
      this.mouthThroatMucosaAbnormal, 
      this.mouthThroatMucosaAbnormalOther, 
      this.mouthThroatTongue, 
      this.mouthThroatTongueAbnormal, 
      this.mouthThroatTongueAbnormalOther, 
      this.mouthTonsils, 
      this.mouthTonsilsAbnormal, 
      this.mouthUvula, 
      this.mouthUvulaAbnormal, 
      this.mouthPalate, 
      this.mouthPalateCleftPalate, 
      this.mouthPalateCleftLipPalate, 
      this.mouthPalateOther,});

  StationFMouthRequest.fromJson(dynamic json) {
    mouthThroatMucosa = json['Mouth_Throat_Mucosa'];
    mouthThroatMucosaAbnormal = json['Mouth_Throat_Mucosa_Abnormal'];
    mouthThroatMucosaAbnormalOther = json['Mouth_Throat_Mucosa_Abnormal_Other'];
    mouthThroatTongue = json['Mouth_Throat_Tongue'];
    mouthThroatTongueAbnormal = json['Mouth_Throat_Tongue_Abnormal'];
    mouthThroatTongueAbnormalOther = json['Mouth_Throat_Tongue_Abnormal_Other'];
    mouthTonsils = json['Mouth_Tonsils'];
    mouthTonsilsAbnormal = json['Mouth_Tonsils_Abnormal'];
    mouthUvula = json['Mouth_Uvula'];
    mouthUvulaAbnormal = json['Mouth_Uvula_Abnormal'];
    mouthPalate = json['Mouth_Palate'];
    mouthPalateCleftPalate = json['Mouth_Palate_Cleft_Palate'];
    mouthPalateCleftLipPalate = json['Mouth_Palate_CleftLip_Palate'];
    mouthPalateOther = json['Mouth_Palate_Other'];
  }
  String? mouthThroatMucosa;
  String? mouthThroatMucosaAbnormal;
  String? mouthThroatMucosaAbnormalOther;
  String? mouthThroatTongue;
  String? mouthThroatTongueAbnormal;
  String? mouthThroatTongueAbnormalOther;
  String? mouthTonsils;
  String? mouthTonsilsAbnormal;
  String? mouthUvula;
  String? mouthUvulaAbnormal;
  String? mouthPalate;
  String? mouthPalateCleftPalate;
  String? mouthPalateCleftLipPalate;
  String? mouthPalateOther;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Mouth_Throat_Mucosa'] = mouthThroatMucosa;
    map['Mouth_Throat_Mucosa_Abnormal'] = mouthThroatMucosaAbnormal;
    map['Mouth_Throat_Mucosa_Abnormal_Other'] = mouthThroatMucosaAbnormalOther;
    map['Mouth_Throat_Tongue'] = mouthThroatTongue;
    map['Mouth_Throat_Tongue_Abnormal'] = mouthThroatTongueAbnormal;
    map['Mouth_Throat_Tongue_Abnormal_Other'] = mouthThroatTongueAbnormalOther;
    map['Mouth_Tonsils'] = mouthTonsils;
    map['Mouth_Tonsils_Abnormal'] = mouthTonsilsAbnormal;
    map['Mouth_Uvula'] = mouthUvula;
    map['Mouth_Uvula_Abnormal'] = mouthUvulaAbnormal;
    map['Mouth_Palate'] = mouthPalate;
    map['Mouth_Palate_Cleft_Palate'] = mouthPalateCleftPalate;
    map['Mouth_Palate_CleftLip_Palate'] = mouthPalateCleftLipPalate;
    map['Mouth_Palate_Other'] = mouthPalateOther;
    return map;
  }

}