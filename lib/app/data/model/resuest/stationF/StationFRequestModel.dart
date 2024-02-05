class StationFRequestModel {
  StationFRequestModel({
    this.hcid,
    this.hcpid,
    this.infoseekId,
    this.skinColourTone,
    this.skinColourToneAbnormal,
    this.skinTextureOfSkin,
    this.skinTextureOfSkinAbnormal,
    this.skinRash,
    this.skinRashPresent,
    this.skinRashPresentFace,
    this.skinRashPresentNeck,
    this.skinRashPresentChest,
    this.skinRashPresentAbdomen,
    this.skinRashPresentGroin,
    this.skinRashPresentBack,
    this.skinRashPresentArms,
    this.skinRashPresentHands,
    this.skinRashPresentLegs,
    this.skinRashPresentFeet,
    this.otherSkinLesions,
    this.otherSkinLesionsYes,
    this.otherSkinLesionsYesOther,
    this.otherSkinLesionsYesBirthMarks,
    this.otherSkinLesionsYesBirthMarksOther,
    this.skinAcne,
    this.skinAcneYes,
    this.entryTime,
  });

  StationFRequestModel.fromJson(dynamic json) {
    hcid = json['HCID'];
    hcpid = json['HCPID'];
    infoseekId = json['InfoseekId'];
    skinColourTone = json['Skin_colour_Tone'];
    skinColourToneAbnormal = json['Skin_colour_Tone_Abnormal'];
    skinTextureOfSkin = json['Skin_Texture_of_Skin'];
    skinTextureOfSkinAbnormal = json['Skin_Texture_of_Skin_Abnormal'];
    skinRash = json['skin_Rash'];
    skinRashPresent = json['skin_Rash_Present'];
    skinRashPresentFace = json['skin_Rash_Present_Face'];
    skinRashPresentNeck = json['skin_Rash_Present_Neck'];
    skinRashPresentChest = json['skin_Rash_Present_Chest'];
    skinRashPresentAbdomen = json['skin_Rash_Present_Abdomen'];
    skinRashPresentGroin = json['skin_Rash_Present_Groin'];
    skinRashPresentBack = json['skin_Rash_Present_Back'];
    skinRashPresentArms = json['skin_Rash_Present_Arms'];
    skinRashPresentHands = json['skin_Rash_Present_Hands'];
    skinRashPresentLegs = json['skin_Rash_Present_Legs'];
    skinRashPresentFeet = json['skin_Rash_Present_Feet'];
    otherSkinLesions = json['Other_Skin_lesions'];
    otherSkinLesionsYes = json['Other_Skin_lesions_Yes'];
    otherSkinLesionsYesOther = json['Other_Skin_lesions_Yes_Other'];
    otherSkinLesionsYesBirthMarks = json['Other_Skin_lesions_Yes_Birth_marks'];
    otherSkinLesionsYesBirthMarksOther =
        json['Other_Skin_lesions_Yes_Birth_marks_Other'];
    skinAcne = json['skin_Acne'];
    skinAcneYes = json['skin_Acne_Yes'];
    entryTime = json['EntryTime'];
  }
  int? hcid;
  int? hcpid;
  int? infoseekId;
  String? skinColourTone;
  String? skinColourToneAbnormal;
  String? skinTextureOfSkin;
  String? skinTextureOfSkinAbnormal;
  String? skinRash;
  String? skinRashPresent;
  String? skinRashPresentFace;
  String? skinRashPresentNeck;
  String? skinRashPresentChest;
  String? skinRashPresentAbdomen;
  String? skinRashPresentGroin;
  String? skinRashPresentBack;
  String? skinRashPresentArms;
  String? skinRashPresentHands;
  String? skinRashPresentLegs;
  String? skinRashPresentFeet;
  String? otherSkinLesions;
  String? otherSkinLesionsYes;
  String? otherSkinLesionsYesOther;
  String? otherSkinLesionsYesBirthMarks;
  String? otherSkinLesionsYesBirthMarksOther;
  String? skinAcne;
  String? skinAcneYes;
  String? entryTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['HCID'] = hcid;
    map['HCPID'] = hcpid;
    map['InfoseekId'] = infoseekId;
    map['Skin_colour_Tone'] = skinColourTone;
    map['Skin_colour_Tone_Abnormal'] = skinColourToneAbnormal;
    map['Skin_Texture_of_Skin'] = skinTextureOfSkin;
    map['Skin_Texture_of_Skin_Abnormal'] = skinTextureOfSkinAbnormal;
    map['skin_Rash'] = skinRash;
    map['skin_Rash_Present'] = skinRashPresent;
    map['skin_Rash_Present_Face'] = skinRashPresentFace;
    map['skin_Rash_Present_Neck'] = skinRashPresentNeck;
    map['skin_Rash_Present_Chest'] = skinRashPresentChest;
    map['skin_Rash_Present_Abdomen'] = skinRashPresentAbdomen;
    map['skin_Rash_Present_Groin'] = skinRashPresentGroin;
    map['skin_Rash_Present_Back'] = skinRashPresentBack;
    map['skin_Rash_Present_Arms'] = skinRashPresentArms;
    map['skin_Rash_Present_Hands'] = skinRashPresentHands;
    map['skin_Rash_Present_Legs'] = skinRashPresentLegs;
    map['skin_Rash_Present_Feet'] = skinRashPresentFeet;
    map['Other_Skin_lesions'] = otherSkinLesions;
    map['Other_Skin_lesions_Yes'] = otherSkinLesionsYes;
    map['Other_Skin_lesions_Yes_Other'] = otherSkinLesionsYesOther;
    map['Other_Skin_lesions_Yes_Birth_marks'] = otherSkinLesionsYesBirthMarks;
    map['Other_Skin_lesions_Yes_Birth_marks_Other'] =
        otherSkinLesionsYesBirthMarksOther;
    map['skin_Acne'] = skinAcne;
    map['skin_Acne_Yes'] = skinAcneYes;
    map['EntryTime'] = entryTime;
    return map;
  }
}
