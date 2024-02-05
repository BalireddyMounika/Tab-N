class StationFGetModel {
  StationFGetModel({
    this.id,
    this.stationID,
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
    this.nailsColor,
    this.nailsShape,
    this.nailsShapeAbnormal,
    this.nailsDeformity,
    this.nailsDeformityYes,
    this.nailsCuticles,
    this.nailBedInfection,
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
    this.headHairLossYes,
    this.thyroidLymphThyroidGland,
    this.thyroidLymphThyroidGlandEnlarged,
    this.thyroidLymphCervicalLN,
    this.thyroidLymphCervicalLNPalpable,
    this.thyroidLymphSupraclavicularLN,
    this.thyroidLymphSupraclavicularLNPalpable,
    this.thyroidLymphAxillaryLN,
    this.thyroidLymphAxillaryLNPalpable,
    this.thyroidLymphSupratrochlearLN,
    this.thyroidLymphSupratrochlearLNPalpable,
    this.thyroidLymphInguinalLN,
    this.thyroidLymphInguinalLNPalpable,
    this.eyesConjuctiva,
    this.eyesSclera,
    this.eyesDischarge,
    this.eyesDischargeYes,
    this.eyesDischargeYesRightEye,
    this.eyesDischargeYesLeftEye,
    this.eyesEyelids,
    this.eyesEyelidsAbnormal,
    this.earsHearing,
    this.earsHearingAbnormal,
    this.earsHearingAbnormalReduced,
    this.earsHearingAbnormalReducedWearsHearingAid,
    this.earsHearingAbnormalReducedWearsHearingAidYes,
    this.earsHearingAbnormalReducedOther,
    this.earsDischarge,
    this.earsDischargeYes,
    this.earsDischargeYesRightEar,
    this.earsDischargeYesLeftEar,
    this.earWax,
    this.earWaxPresent,
    this.earEardrum,
    this.earEardrumAbnormal,
    this.earEardrumAbnormalRightEar,
    this.earEardrumAbnormalLeftEar,
    this.noseDischarge,
    this.noseDischargeYes,
    this.noseDischargeYesRightNostril,
    this.noseDischargeYesLeftNostril,
    this.noseDryness,
    this.noseDrynessYes,
    this.noseCrusting,
    this.noseCrustingYes,
    this.nosePolyps,
    this.nosePolypsYes,
    this.noseSeptumBridge,
    this.noseSinuses,
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
    this.mouthPalateOther,
    this.hygieneNails,
    this.hygieneHair,
    this.hygieneSkin,
    this.hygieneOdour,
    this.otherObservations,
    this.specialistReferralNeeded,
    this.specialistReferralNeededType,
    this.specialistReferralNeededFlag,
    this.other,

    this.completed,
  });

  StationFGetModel.fromJson(dynamic json) {
    id = json['id'];
    stationID = json['StationID'];
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
    nailsColor = json['Nails_Color'];
    nailsShape = json['Nails_Shape'];
    nailsShapeAbnormal = json['Nails_Shape_Abnormal'];
    nailsDeformity = json['Nails_Deformity'];
    nailsDeformityYes = json['Nails_Deformity_Yes'];
    nailsCuticles = json['Nails_Cuticles'];
    nailBedInfection = json['Nail_Bed_Infection'];
    headSkullFontanelle = json['Head_Skull_Fontanelle'];
    headSkullFontanelleOpen = json['Head_Skull_Fontanelle_Open'];
    headSkullFontanelleOpenFontanella =
        json['Head_Skull_Fontanelle_Open_Fontanella'];
    headSkullFontanelleOpenOccipital =
        json['Head_Skull_Fontanelle_Open_Occipital'];
    headSkullAppearanceAndSize = json['Head_Skull_Appearance_and_Size'];
    headSkullAppearanceAndSizeOther =
        json['Head_Skull_Appearance_and_Size_Other'];
    headHairAppearance = json['Head_Hair_Appearance'];
    headHairAppearanceAbnormal = json['Head_Hair_Appearance_Abnormal'];
    headHairAppearanceAbnormalOther =
        json['Head_Hair_Appearance_Abnormal_Other'];
    headScalp = json['Head_Scalp'];
    headScalpAbnormal = json['Head_Scalp_Abnormal'];
    headParasites = json['Head_Parasites'];
    headParasitesYes = json['Head_Parasites_Yes'];
    headParasitesYesOther = json['Head_Parasites_Yes_Other'];
    headHairLoss = json['Head_Hair_Loss'];
    headHairLossYes = json['Head_Hair_Loss_Yes'];
    thyroidLymphThyroidGland = json['Thyroid_Lymph_Thyroid_Gland'];
    thyroidLymphThyroidGlandEnlarged =
        json['Thyroid_Lymph_Thyroid_Gland_Enlarged'];
    thyroidLymphCervicalLN = json['Thyroid_Lymph_Cervical_LN'];
    thyroidLymphCervicalLNPalpable = json['Thyroid_Lymph_Cervical_LN_Palpable'];
    thyroidLymphSupraclavicularLN = json['Thyroid_Lymph_Supraclavicular_LN'];
    thyroidLymphSupraclavicularLNPalpable =
        json['Thyroid_Lymph_Supraclavicular_LN_Palpable'];
    thyroidLymphAxillaryLN = json['Thyroid_Lymph_Axillary_LN'];
    thyroidLymphAxillaryLNPalpable = json['Thyroid_Lymph_Axillary_LN_Palpable'];
    thyroidLymphSupratrochlearLN = json['Thyroid_Lymph_Supratrochlear_LN'];
    thyroidLymphSupratrochlearLNPalpable =
        json['Thyroid_Lymph_Supratrochlear_LN_Palpable'];
    thyroidLymphInguinalLN = json['Thyroid_Lymph_Inguinal_LN'];
    thyroidLymphInguinalLNPalpable = json['Thyroid_Lymph_Inguinal_LN_Palpable'];
    eyesConjuctiva = json['Eyes_Conjuctiva'];
    eyesSclera = json['Eyes_Sclera'];
    eyesDischarge = json['Eyes_Discharge'];
    eyesDischargeYes = json['Eyes_Discharge_Yes'];
    eyesDischargeYesRightEye = json['Eyes_Discharge_Yes_Right_Eye'];
    eyesDischargeYesLeftEye = json['Eyes_Discharge_Yes_Left_Eye'];
    eyesEyelids = json['Eyes_Eyelids'];
    eyesEyelidsAbnormal = json['Eyes_Eyelids_Abnormal'];
    earsHearing = json['Ears_Hearing'];
    earsHearingAbnormal = json['Ears_Hearing_Abnormal'];
    earsHearingAbnormalReduced = json['Ears_Hearing_Abnormal_Reduced'];
    earsHearingAbnormalReducedWearsHearingAid =
        json['Ears_Hearing_Abnormal_Reduced_Wears_Hearing_Aid'];
    earsHearingAbnormalReducedWearsHearingAidYes =
        json['Ears_Hearing_Abnormal_Reduced_Wears_Hearing_Aid_Yes'];
    earsHearingAbnormalReducedOther =
        json['Ears_Hearing_Abnormal_Reduced_Other'];
    earsDischarge = json['Ears_Discharge'];
    earsDischargeYes = json['Ears_Discharge_Yes'];
    earsDischargeYesRightEar = json['Ears_Discharge_Yes_Right_Ear'];
    earsDischargeYesLeftEar = json['Ears_Discharge_Yes_Left_Ear'];
    earWax = json['Ear_Wax'];
    earWaxPresent = json['Ear_Wax_Present'];
    earEardrum = json['Ear_Eardrum'];
    earEardrumAbnormal = json['Ear_Eardrum_Abnormal'];
    earEardrumAbnormalRightEar = json['Ear_Eardrum_Abnormal_Right_Ear'];
    earEardrumAbnormalLeftEar = json['Ear_Eardrum_Abnormal_Left_Ear'];
    noseDischarge = json['Nose_Discharge'];
    noseDischargeYes = json['Nose_Discharge_Yes'];
    noseDischargeYesRightNostril = json['Nose_Discharge_Yes_Right_Nostril'];
    noseDischargeYesLeftNostril = json['Nose_Discharge_Yes_Left_Nostril'];
    noseDryness = json['Nose_Dryness'];
    noseDrynessYes = json['Nose_Dryness_Yes'];
    noseCrusting = json['Nose_Crusting'];
    noseCrustingYes = json['Nose_Crusting_Yes'];
    nosePolyps = json['Nose_Polyps'];
    nosePolypsYes = json['Nose_Polyps_Yes'];
    noseSeptumBridge = json['Nose_Septum_Bridge'];
    noseSinuses = json['Nose_Sinuses'];
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
    hygieneNails = json['Hygiene_Nails'];
    hygieneHair = json['Hygiene_Hair'];
    hygieneSkin = json['Hygiene_Skin'];
    hygieneOdour = json['Hygiene_Odour'];
    otherObservations = json['Other_Observations'];
    specialistReferralNeeded = json['Specialist_Referral_Needed'];
    specialistReferralNeededType = json['Specialist_Referral_Needed_Type'];
    specialistReferralNeededFlag = json['Specialist_Referral_Needed_Flag'];
    other = json['Other'];
    completed = json['Completed'];
  }
  int? id;
  int? stationID;
  int? hcid;
  int? hcpid;
  int? infoseekId;
  String? skinColourTone;
  dynamic skinColourToneAbnormal;
  String? skinTextureOfSkin;
  dynamic skinTextureOfSkinAbnormal;
  String? skinRash;
  dynamic skinRashPresent;
  dynamic skinRashPresentFace;
  dynamic skinRashPresentNeck;
  dynamic skinRashPresentChest;
  dynamic skinRashPresentAbdomen;
  dynamic skinRashPresentGroin;
  dynamic skinRashPresentBack;
  dynamic skinRashPresentArms;
  dynamic skinRashPresentHands;
  dynamic skinRashPresentLegs;
  dynamic skinRashPresentFeet;
  String? otherSkinLesions;
  dynamic otherSkinLesionsYes;
  dynamic otherSkinLesionsYesOther;
  dynamic otherSkinLesionsYesBirthMarks;
  dynamic otherSkinLesionsYesBirthMarksOther;
  String? skinAcne;
  dynamic skinAcneYes;
  String? nailsColor;
  String? nailsShape;
  dynamic nailsShapeAbnormal;
  String? nailsDeformity;
  dynamic nailsDeformityYes;
  String? nailsCuticles;
  String? nailBedInfection;
  String? headSkullFontanelle;
  dynamic headSkullFontanelleOpen;
  dynamic headSkullFontanelleOpenFontanella;
  dynamic headSkullFontanelleOpenOccipital;
  String? headSkullAppearanceAndSize;
  dynamic headSkullAppearanceAndSizeOther;
  String? headHairAppearance;
  dynamic headHairAppearanceAbnormal;
  dynamic headHairAppearanceAbnormalOther;
  String? headScalp;
  dynamic headScalpAbnormal;
  String? headParasites;
  dynamic headParasitesYes;
  dynamic headParasitesYesOther;
  String? headHairLoss;
  dynamic headHairLossYes;
  dynamic thyroidLymphThyroidGland;
  dynamic thyroidLymphThyroidGlandEnlarged;
  String? thyroidLymphCervicalLN;
  dynamic thyroidLymphCervicalLNPalpable;
  String? thyroidLymphSupraclavicularLN;
  dynamic thyroidLymphSupraclavicularLNPalpable;
  String? thyroidLymphAxillaryLN;
  dynamic thyroidLymphAxillaryLNPalpable;
  String? thyroidLymphSupratrochlearLN;
  dynamic thyroidLymphSupratrochlearLNPalpable;
  String? thyroidLymphInguinalLN;
  dynamic thyroidLymphInguinalLNPalpable;
  String? eyesConjuctiva;
  String? eyesSclera;
  String? eyesDischarge;
  dynamic eyesDischargeYes;
  dynamic eyesDischargeYesRightEye;
  dynamic eyesDischargeYesLeftEye;
  String? eyesEyelids;
  dynamic eyesEyelidsAbnormal;
  String? earsHearing;
  dynamic earsHearingAbnormal;
  dynamic earsHearingAbnormalReduced;
  dynamic earsHearingAbnormalReducedWearsHearingAid;
  dynamic earsHearingAbnormalReducedWearsHearingAidYes;
  dynamic earsHearingAbnormalReducedOther;
  String? earsDischarge;
  dynamic earsDischargeYes;
  dynamic earsDischargeYesRightEar;
  dynamic earsDischargeYesLeftEar;
  String? earWax;
  dynamic earWaxPresent;
  String? earEardrum;
  dynamic earEardrumAbnormal;
  dynamic earEardrumAbnormalRightEar;
  dynamic earEardrumAbnormalLeftEar;
  String? noseDischarge;
  dynamic noseDischargeYes;
  dynamic noseDischargeYesRightNostril;
  dynamic noseDischargeYesLeftNostril;
  String? noseDryness;
  dynamic noseDrynessYes;
  String? noseCrusting;
  dynamic noseCrustingYes;
  String? nosePolyps;
  dynamic nosePolypsYes;
  String? noseSeptumBridge;
  String? noseSinuses;
  String? mouthThroatMucosa;
  dynamic mouthThroatMucosaAbnormal;
  dynamic mouthThroatMucosaAbnormalOther;
  String? mouthThroatTongue;
  dynamic mouthThroatTongueAbnormal;
  dynamic mouthThroatTongueAbnormalOther;
  String? mouthTonsils;
  dynamic mouthTonsilsAbnormal;
  String? mouthUvula;
  dynamic mouthUvulaAbnormal;
  String? mouthPalate;
  dynamic mouthPalateCleftPalate;
  dynamic mouthPalateCleftLipPalate;
  dynamic mouthPalateOther;
  String? hygieneNails;
  String? hygieneHair;
  String? hygieneSkin;
  String? hygieneOdour;
  dynamic otherObservations;
  String? specialistReferralNeeded;
  dynamic specialistReferralNeededType;
  dynamic specialistReferralNeededFlag;
  dynamic other;
  String? completed;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['StationID'] = stationID;
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
    map['Nails_Color'] = nailsColor;
    map['Nails_Shape'] = nailsShape;
    map['Nails_Shape_Abnormal'] = nailsShapeAbnormal;
    map['Nails_Deformity'] = nailsDeformity;
    map['Nails_Deformity_Yes'] = nailsDeformityYes;
    map['Nails_Cuticles'] = nailsCuticles;
    map['Nail_Bed_Infection'] = nailBedInfection;
    map['Head_Skull_Fontanelle'] = headSkullFontanelle;
    map['Head_Skull_Fontanelle_Open'] = headSkullFontanelleOpen;
    map['Head_Skull_Fontanelle_Open_Fontanella'] =
        headSkullFontanelleOpenFontanella;
    map['Head_Skull_Fontanelle_Open_Occipital'] =
        headSkullFontanelleOpenOccipital;
    map['Head_Skull_Appearance_and_Size'] = headSkullAppearanceAndSize;
    map['Head_Skull_Appearance_and_Size_Other'] =
        headSkullAppearanceAndSizeOther;
    map['Head_Hair_Appearance'] = headHairAppearance;
    map['Head_Hair_Appearance_Abnormal'] = headHairAppearanceAbnormal;
    map['Head_Hair_Appearance_Abnormal_Other'] =
        headHairAppearanceAbnormalOther;
    map['Head_Scalp'] = headScalp;
    map['Head_Scalp_Abnormal'] = headScalpAbnormal;
    map['Head_Parasites'] = headParasites;
    map['Head_Parasites_Yes'] = headParasitesYes;
    map['Head_Parasites_Yes_Other'] = headParasitesYesOther;
    map['Head_Hair_Loss'] = headHairLoss;
    map['Head_Hair_Loss_Yes'] = headHairLossYes;
    map['Thyroid_Lymph_Thyroid_Gland'] = thyroidLymphThyroidGland;
    map['Thyroid_Lymph_Thyroid_Gland_Enlarged'] =
        thyroidLymphThyroidGlandEnlarged;
    map['Thyroid_Lymph_Cervical_LN'] = thyroidLymphCervicalLN;
    map['Thyroid_Lymph_Cervical_LN_Palpable'] = thyroidLymphCervicalLNPalpable;
    map['Thyroid_Lymph_Supraclavicular_LN'] = thyroidLymphSupraclavicularLN;
    map['Thyroid_Lymph_Supraclavicular_LN_Palpable'] =
        thyroidLymphSupraclavicularLNPalpable;
    map['Thyroid_Lymph_Axillary_LN'] = thyroidLymphAxillaryLN;
    map['Thyroid_Lymph_Axillary_LN_Palpable'] = thyroidLymphAxillaryLNPalpable;
    map['Thyroid_Lymph_Supratrochlear_LN'] = thyroidLymphSupratrochlearLN;
    map['Thyroid_Lymph_Supratrochlear_LN_Palpable'] =
        thyroidLymphSupratrochlearLNPalpable;
    map['Thyroid_Lymph_Inguinal_LN'] = thyroidLymphInguinalLN;
    map['Thyroid_Lymph_Inguinal_LN_Palpable'] = thyroidLymphInguinalLNPalpable;
    map['Eyes_Conjuctiva'] = eyesConjuctiva;
    map['Eyes_Sclera'] = eyesSclera;
    map['Eyes_Discharge'] = eyesDischarge;
    map['Eyes_Discharge_Yes'] = eyesDischargeYes;
    map['Eyes_Discharge_Yes_Right_Eye'] = eyesDischargeYesRightEye;
    map['Eyes_Discharge_Yes_Left_Eye'] = eyesDischargeYesLeftEye;
    map['Eyes_Eyelids'] = eyesEyelids;
    map['Eyes_Eyelids_Abnormal'] = eyesEyelidsAbnormal;
    map['Ears_Hearing'] = earsHearing;
    map['Ears_Hearing_Abnormal'] = earsHearingAbnormal;
    map['Ears_Hearing_Abnormal_Reduced'] = earsHearingAbnormalReduced;
    map['Ears_Hearing_Abnormal_Reduced_Wears_Hearing_Aid'] =
        earsHearingAbnormalReducedWearsHearingAid;
    map['Ears_Hearing_Abnormal_Reduced_Wears_Hearing_Aid_Yes'] =
        earsHearingAbnormalReducedWearsHearingAidYes;
    map['Ears_Hearing_Abnormal_Reduced_Other'] =
        earsHearingAbnormalReducedOther;
    map['Ears_Discharge'] = earsDischarge;
    map['Ears_Discharge_Yes'] = earsDischargeYes;
    map['Ears_Discharge_Yes_Right_Ear'] = earsDischargeYesRightEar;
    map['Ears_Discharge_Yes_Left_Ear'] = earsDischargeYesLeftEar;
    map['Ear_Wax'] = earWax;
    map['Ear_Wax_Present'] = earWaxPresent;
    map['Ear_Eardrum'] = earEardrum;
    map['Ear_Eardrum_Abnormal'] = earEardrumAbnormal;
    map['Ear_Eardrum_Abnormal_Right_Ear'] = earEardrumAbnormalRightEar;
    map['Ear_Eardrum_Abnormal_Left_Ear'] = earEardrumAbnormalLeftEar;
    map['Nose_Discharge'] = noseDischarge;
    map['Nose_Discharge_Yes'] = noseDischargeYes;
    map['Nose_Discharge_Yes_Right_Nostril'] = noseDischargeYesRightNostril;
    map['Nose_Discharge_Yes_Left_Nostril'] = noseDischargeYesLeftNostril;
    map['Nose_Dryness'] = noseDryness;
    map['Nose_Dryness_Yes'] = noseDrynessYes;
    map['Nose_Crusting'] = noseCrusting;
    map['Nose_Crusting_Yes'] = noseCrustingYes;
    map['Nose_Polyps'] = nosePolyps;
    map['Nose_Polyps_Yes'] = nosePolypsYes;
    map['Nose_Septum_Bridge'] = noseSeptumBridge;
    map['Nose_Sinuses'] = noseSinuses;
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
    map['Hygiene_Nails'] = hygieneNails;
    map['Hygiene_Hair'] = hygieneHair;
    map['Hygiene_Skin'] = hygieneSkin;
    map['Hygiene_Odour'] = hygieneOdour;
    map['Other_Observations'] = otherObservations;
    map['Specialist_Referral_Needed'] = specialistReferralNeeded;
    map['Specialist_Referral_Needed_Type'] = specialistReferralNeededType;
    map['Specialist_Referral_Needed_Flag'] = specialistReferralNeededFlag;
    map['Other'] = other;
    map['Completed'] = completed;
    return map;
  }
}
