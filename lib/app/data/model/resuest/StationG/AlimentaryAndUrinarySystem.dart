class AlimentaryAndUrinarySystem {
  AlimentaryAndUrinarySystem({
    this.alimentaryAndUrinarySystemDoYouHaveNauseaVomiting,
    this.aUSDoYouHavePainInYourAbdomen,
    this.aUSDoYouFeelBurningWhenYouPassUrine,
    this.aUSCleftLip,
    this.aUSCleftLipPresent,
    this.aUSCleftPalate,
    this.aUSCleftPalatePresent,
    this.aUSAbdominalDistension,
    this.aUSExaggerateBowelSounds,
    this.aUSGuarding,
    this.aUSRigidity,
    this.aUSRightHypochondriumPain,
    this.aUSRHPainYesPainScore,
    this.aUSRHTenderness,
    this.aUSRHTendernessPresent,
    this.aUSRHSwellingLumps,
    this.aUSRHSwellingLumpsPresentDescription,
    this.aUSRHSwellingLumpsPresentSize,
    this.aUSRHSwellingLumpsPresentTexture,
    this.aUSRHLiver,
    this.aUSRHLiverPalpable,
    this.aUSRHGallBladder,
    this.aUSRHGallBladderTender,
    this.aUSRightLumbarPain,
    this.aUSRLPainYesPainScore,
    this.aUSRLTenderness,
    this.aUSRLTendernessPresent,
    this.aUSRLSwellingLumps,
    this.aUSRLSwellingLumpsPresentDescription,
    this.aUSRLSwellingLumpsPresentSize,
    this.aUSRLSwellingLumpsPresentTexture,
    this.aUSRLRightKidney,
    this.aUSRLRightKidneyPalpable,
    this.aUSRightIliacPain,
    this.aUSRIPainYesPainScore,
    this.ausrimbp,
    this.aUSRIMBPPainScore,
    this.aUSRITenderness,
    this.aUSRITendernessPresent,
    this.aUSRISwellingLumps,
    this.aUSRISwellingLumpsPresentDescription,
    this.aUSRISwellingLumpsPresentSize,
    this.aUSRISwellingLumpsPresentTexture,
    this.aUSEpigastricPain,
    this.aUSEPainYesPainScore,
    this.aUSETenderness,
    this.aUSETendernessPresent,
    this.aUSETendernessPresentRebound,
    this.aUSESwellingLumps,
    this.aUSESwellingLumpsPresentDescription,
    this.aUSESwellingLumpsPresentSize,
    this.aUSESwellingLumpsPresentTexture,
    this.aUSUmbilicalPain,
    this.aUSUPainYesPainScore,
    this.aUSUTenderness,
    this.aUSUTendernessPresent,
    this.aUSUTendernessPresentRebound,
    this.aUSUSwellingLumps,
    this.aUSUSwellingLumpsPresentDescription,
    this.aUSUSwellingLumpsPresentSize,
    this.aUSUSwellingLumpsPresentTexture,
    this.aUSSuprapubicPain,
    this.aUSSPainYesPainScore,
    this.aUSSTenderness,
    this.aUSSTendernessPresent,
    this.aUSSTendernessPresentRebound,
    this.aUSSSwellingLumps,
    this.aUSSSwellingLumpsPresentDescription,
    this.aUSSSwellingLumpsPresentSize,
    this.aUSSSwellingLumpsPresentTexture,
    this.aUSSUterus,
    this.aUSSUterusPalpable,
    this.aUSLeftHypochondriumPain,
    this.aUSLHPainYesPainScore,
    this.aUSLHTenderness,
    this.aUSLHTendernessPresent,
    this.aUSLHSwellingLumps,
    this.aUSLHSwellingLumpsPresentDescription,
    this.aUSLHSwellingLumpsPresentSize,
    this.aUSLHSwellingLumpsPresentTexture,
    this.aUSLHSpleen,
    this.aUSLHSpleenPalpable,
    this.aUSLeftLumbarPain,
    this.aUSLLPainYesPainScore,
    this.aUSLLTenderness,
    this.aUSLLTendernessPresent,
    this.aUSLLSwellingLumps,
    this.aUSLLSwellingLumpsPresentDescription,
    this.aUSLLSwellingLumpsPresentSize,
    this.aUSLLSwellingLumpsPresentTexture,
    this.aUSLLLeftKidney,
    this.aUSLLLeftKidneyPalpable,
    this.aUSLeftIliacPain,
    this.aUSLIPainYesPainScore,
    this.aUSLITenderness,
    this.aUSLITendernessPresent,
    this.aUSLISwellingLumps,
    this.aUSLISwellingLumpsPresentDescription,
    this.aUSLISwellingLumpsPresentSize,
    this.aUSLISwellingLumpsPresentTexture,
    this.aUSHernia,
    this.aUSHerniaPresent,
    this.aUSUrinaryBladder,
    this.aUSUrinaryBladderPalpable,});
  AlimentaryAndUrinarySystem.fromJson(dynamic json) {
    alimentaryAndUrinarySystemDoYouHaveNauseaVomiting = json['Alimentary_and_Urinary_System_Do_you_have_Nausea_Vomiting'];
    aUSDoYouHavePainInYourAbdomen = json['AUS_Do_you_have_Pain_in_your_Abdomen'];
    aUSDoYouFeelBurningWhenYouPassUrine = json['AUS_Do_you_feel_Burning_when_you_pass_Urine'];
    aUSCleftLip = json['AUS_Cleft_Lip'];
    aUSCleftLipPresent = json['AUS_Cleft_Lip_Present'];
    aUSCleftPalate = json['AUS_Cleft_Palate'];
    aUSCleftPalatePresent = json['AUS_Cleft_Palate_Present'];
    aUSAbdominalDistension = json['AUS_Abdominal_Distension'];
    aUSExaggerateBowelSounds = json['AUS_Exaggerate_Bowel_Sounds'];
    aUSGuarding = json['AUS_Guarding'];
    aUSRigidity = json['AUS_Rigidity'];
    aUSRightHypochondriumPain = json['AUS_Right_Hypochondrium_Pain'];
    aUSRHPainYesPainScore = json['AUS_RH_Pain_Yes_Pain_Score'];
    aUSRHTenderness = json['AUS_RH_Tenderness'];
    aUSRHTendernessPresent = json['AUS_RH_Tenderness_Present'];
    aUSRHSwellingLumps = json['AUS_RH_Swelling_Lumps'];
    aUSRHSwellingLumpsPresentDescription = json['AUS_RH_Swelling_Lumps_Present_Description'];
    aUSRHSwellingLumpsPresentSize = json['AUS_RH_Swelling_Lumps_Present_Size'];
    aUSRHSwellingLumpsPresentTexture = json['AUS_RH_Swelling_Lumps_Present_Texture'];
    aUSRHLiver = json['AUS_RH_Liver'];
    aUSRHLiverPalpable = json['AUS_RH_Liver_Palpable'];
    aUSRHGallBladder = json['AUS_RH_Gall_Bladder'];
    aUSRHGallBladderTender = json['AUS_RH_Gall_Bladder_Tender'];
    aUSRightLumbarPain = json['AUS_Right_Lumbar_Pain'];
    aUSRLPainYesPainScore = json['AUS_RL_Pain_Yes_Pain_Score'];
    aUSRLTenderness = json['AUS_RL_Tenderness'];
    aUSRLTendernessPresent = json['AUS_RL_Tenderness_Present'];
    aUSRLSwellingLumps = json['AUS_RL_Swelling_Lumps'];
    aUSRLSwellingLumpsPresentDescription = json['AUS_RL_Swelling_Lumps_Present_Description'];
    aUSRLSwellingLumpsPresentSize = json['AUS_RL_Swelling_Lumps_Present_Size'];
    aUSRLSwellingLumpsPresentTexture = json['AUS_RL_Swelling_Lumps_Present_Texture'];
    aUSRLRightKidney = json['AUS_RL_Right_Kidney'];
    aUSRLRightKidneyPalpable = json['AUS_RL_Right_Kidney_Palpable'];
    aUSRightIliacPain = json['AUS_Right_Iliac_Pain'];
    aUSRIPainYesPainScore = json['AUS_RI_Pain_Yes_Pain_Score'];
    ausrimbp = json['AUS_RI_MBP'];
    aUSRIMBPPainScore = json['AUS_RI_MBP_Pain_Score'];
    aUSRITenderness = json['AUS_RI_Tenderness'];
    aUSRITendernessPresent = json['AUS_RI_Tenderness_Present'];
    aUSRISwellingLumps = json['AUS_RI_Swelling_Lumps'];
    aUSRISwellingLumpsPresentDescription = json['AUS_RI_Swelling_Lumps_Present_Description'];
    aUSRISwellingLumpsPresentSize = json['AUS_RI_Swelling_Lumps_Present_Size'];
    aUSRISwellingLumpsPresentTexture = json['AUS_RI_Swelling_Lumps_Present_Texture'];
    aUSEpigastricPain = json['AUS_Epigastric_Pain'];
    aUSEPainYesPainScore = json['AUS_E_Pain_Yes_Pain_Score'];
    aUSETenderness = json['AUS_E_Tenderness'];
    aUSETendernessPresent = json['AUS_E_Tenderness_Present'];
    aUSETendernessPresentRebound = json['AUS_E_Tenderness_Present_Rebound'];
    aUSESwellingLumps = json['AUS_E_Swelling_Lumps'];
    aUSESwellingLumpsPresentDescription = json['AUS_E_Swelling_Lumps_Present_Description'];
    aUSESwellingLumpsPresentSize = json['AUS_E_Swelling_Lumps_Present_Size'];
    aUSESwellingLumpsPresentTexture = json['AUS_E_Swelling_Lumps_Present_Texture'];
    aUSUmbilicalPain = json['AUS_Umbilical_Pain'];
    aUSUPainYesPainScore = json['AUS_U_Pain_Yes_Pain_Score'];
    aUSUTenderness = json['AUS_U_Tenderness'];
    aUSUTendernessPresent = json['AUS_U_Tenderness_Present'];
    aUSUTendernessPresentRebound = json['AUS_U_Tenderness_Present_Rebound'];
    aUSUSwellingLumps = json['AUS_U_Swelling_Lumps'];
    aUSUSwellingLumpsPresentDescription = json['AUS_U_Swelling_Lumps_Present_Description'];
    aUSUSwellingLumpsPresentSize = json['AUS_U_Swelling_Lumps_Present_Size'];
    aUSUSwellingLumpsPresentTexture = json['AUS_U_Swelling_Lumps_Present_Texture'];
    aUSSuprapubicPain = json['AUS_Suprapubic_Pain'];
    aUSSPainYesPainScore = json['AUS_S_Pain_Yes_Pain_Score'];
    aUSSTenderness = json['AUS_S_Tenderness'];
    aUSSTendernessPresent = json['AUS_S_Tenderness_Present'];
    aUSSTendernessPresentRebound = json['AUS_S_Tenderness_Present_Rebound'];
    aUSSSwellingLumps = json['AUS_S_Swelling_Lumps'];
    aUSSSwellingLumpsPresentDescription = json['AUS_S_Swelling_Lumps_Present_Description'];
    aUSSSwellingLumpsPresentSize = json['AUS_S_Swelling_Lumps_Present_Size'];
    aUSSSwellingLumpsPresentTexture = json['AUS_S_Swelling_Lumps_Present_Texture'];
    aUSSUterus = json['AUS_S_Uterus'];
    aUSSUterusPalpable = json['AUS_S_Uterus_Palpable'];
    aUSLeftHypochondriumPain = json['AUS_Left_Hypochondrium_Pain'];
    aUSLHPainYesPainScore = json['AUS_LH_Pain_Yes_Pain_Score'];
    aUSLHTenderness = json['AUS_LH_Tenderness'];
    aUSLHTendernessPresent = json['AUS_LH_Tenderness_Present'];
    aUSLHSwellingLumps = json['AUS_LH_Swelling_Lumps'];
    aUSLHSwellingLumpsPresentDescription = json['AUS_LH_Swelling_Lumps_Present_Description'];
    aUSLHSwellingLumpsPresentSize = json['AUS_LH_Swelling_Lumps_Present_Size'];
    aUSLHSwellingLumpsPresentTexture = json['AUS_LH_Swelling_Lumps_Present_Texture'];
    aUSLHSpleen = json['AUS_LH_Spleen'];
    aUSLHSpleenPalpable = json['AUS_LH_Spleen_Palpable'];
    aUSLeftLumbarPain = json['AUS_Left_Lumbar_Pain'];
    aUSLLPainYesPainScore = json['AUS_LL_Pain_Yes_Pain_Score'];
    aUSLLTenderness = json['AUS_LL_Tenderness'];
    aUSLLTendernessPresent = json['AUS_LL_Tenderness_Present'];
    aUSLLSwellingLumps = json['AUS_LL_Swelling_Lumps'];
    aUSLLSwellingLumpsPresentDescription = json['AUS_LL_Swelling_Lumps_Present_Description'];
    aUSLLSwellingLumpsPresentSize = json['AUS_LL_Swelling_Lumps_Present_Size'];
    aUSLLSwellingLumpsPresentTexture = json['AUS_LL_Swelling_Lumps_Present_Texture'];
    aUSLLLeftKidney = json['AUS_LL_Left_Kidney'];
    aUSLLLeftKidneyPalpable = json['AUS_LL_Left_Kidney_Palpable'];
    aUSLeftIliacPain = json['AUS_Left_Iliac_Pain'];
    aUSLIPainYesPainScore = json['AUS_LI_Pain_Yes_Pain_Score'];
    aUSLITenderness = json['AUS_LI_Tenderness'];
    aUSLITendernessPresent = json['AUS_LI_Tenderness_Present'];
    aUSLISwellingLumps = json['AUS_LI_Swelling_Lumps'];
    aUSLISwellingLumpsPresentDescription = json['AUS_LI_Swelling_Lumps_Present_Description'];
    aUSLISwellingLumpsPresentSize = json['AUS_LI_Swelling_Lumps_Present_Size'];
    aUSLISwellingLumpsPresentTexture = json['AUS_LI_Swelling_Lumps_Present_Texture'];
    aUSHernia = json['AUS_Hernia'];
    aUSHerniaPresent = json['AUS_Hernia_Present'];
    aUSUrinaryBladder = json['AUS_Urinary_Bladder'];
    aUSUrinaryBladderPalpable = json['AUS_Urinary_Bladder_Palpable'];
  }
  String? alimentaryAndUrinarySystemDoYouHaveNauseaVomiting;
  String? aUSDoYouHavePainInYourAbdomen;
  String? aUSDoYouFeelBurningWhenYouPassUrine;
  String? aUSCleftLip;
  String? aUSCleftLipPresent;
  String? aUSCleftPalate;
  String? aUSCleftPalatePresent;
  String? aUSAbdominalDistension;
  String? aUSExaggerateBowelSounds;
  String? aUSGuarding;
  String? aUSRigidity;
  String? aUSRightHypochondriumPain;
  int? aUSRHPainYesPainScore;
  String? aUSRHTenderness;
  String? aUSRHTendernessPresent;
  String? aUSRHSwellingLumps;
  String? aUSRHSwellingLumpsPresentDescription;
  int? aUSRHSwellingLumpsPresentSize;
  String? aUSRHSwellingLumpsPresentTexture;
  String? aUSRHLiver;
  String? aUSRHLiverPalpable;
  String? aUSRHGallBladder;
  int? aUSRHGallBladderTender;
  String? aUSRightLumbarPain;
  int? aUSRLPainYesPainScore;
  String? aUSRLTenderness;
  String? aUSRLTendernessPresent;
  String? aUSRLSwellingLumps;
  String? aUSRLSwellingLumpsPresentDescription;
  int? aUSRLSwellingLumpsPresentSize;
  String? aUSRLSwellingLumpsPresentTexture;
  String? aUSRLRightKidney;
  String? aUSRLRightKidneyPalpable;
  String? aUSRightIliacPain;
  int? aUSRIPainYesPainScore;
  String? ausrimbp;
  int? aUSRIMBPPainScore;
  String? aUSRITenderness;
  String? aUSRITendernessPresent;
  String? aUSRISwellingLumps;
  String? aUSRISwellingLumpsPresentDescription;
  int? aUSRISwellingLumpsPresentSize;
  String? aUSRISwellingLumpsPresentTexture;
  String? aUSEpigastricPain;
  int? aUSEPainYesPainScore;
  String? aUSETenderness;
  String? aUSETendernessPresent;
  String? aUSETendernessPresentRebound;
  String? aUSESwellingLumps;
  String? aUSESwellingLumpsPresentDescription;
  int? aUSESwellingLumpsPresentSize;
  String? aUSESwellingLumpsPresentTexture;
  String? aUSUmbilicalPain;
  int? aUSUPainYesPainScore;
  String? aUSUTenderness;
  String? aUSUTendernessPresent;
  String? aUSUTendernessPresentRebound;
  String? aUSUSwellingLumps;
  String? aUSUSwellingLumpsPresentDescription;
  int? aUSUSwellingLumpsPresentSize;
  String? aUSUSwellingLumpsPresentTexture;
  String? aUSSuprapubicPain;
  int? aUSSPainYesPainScore;
  String? aUSSTenderness;
  String? aUSSTendernessPresent;
  String? aUSSTendernessPresentRebound;
  String? aUSSSwellingLumps;
  String? aUSSSwellingLumpsPresentDescription;
  int? aUSSSwellingLumpsPresentSize;
  String? aUSSSwellingLumpsPresentTexture;
  String? aUSSUterus;
  String? aUSSUterusPalpable;
  String? aUSLeftHypochondriumPain;
  int? aUSLHPainYesPainScore;
  String? aUSLHTenderness;
  String? aUSLHTendernessPresent;
  String? aUSLHSwellingLumps;
  String? aUSLHSwellingLumpsPresentDescription;
  int? aUSLHSwellingLumpsPresentSize;
  String? aUSLHSwellingLumpsPresentTexture;
  String? aUSLHSpleen;
  String? aUSLHSpleenPalpable;
  String? aUSLeftLumbarPain;
  int? aUSLLPainYesPainScore;
  String? aUSLLTenderness;
  String? aUSLLTendernessPresent;
  String? aUSLLSwellingLumps;
  String? aUSLLSwellingLumpsPresentDescription;
  int? aUSLLSwellingLumpsPresentSize;
  String? aUSLLSwellingLumpsPresentTexture;
  String? aUSLLLeftKidney;
  String? aUSLLLeftKidneyPalpable;
  String? aUSLeftIliacPain;
  int? aUSLIPainYesPainScore;
  String? aUSLITenderness;
  String? aUSLITendernessPresent;
  String? aUSLISwellingLumps;
  String? aUSLISwellingLumpsPresentDescription;
  int? aUSLISwellingLumpsPresentSize;
  String? aUSLISwellingLumpsPresentTexture;
  String? aUSHernia;
  String? aUSHerniaPresent;
  String? aUSUrinaryBladder;
  String? aUSUrinaryBladderPalpable;
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Alimentary_and_Urinary_System_Do_you_have_Nausea_Vomiting'] = alimentaryAndUrinarySystemDoYouHaveNauseaVomiting;
    map['AUS_Do_you_have_Pain_in_your_Abdomen'] = aUSDoYouHavePainInYourAbdomen;
    map['AUS_Do_you_feel_Burning_when_you_pass_Urine'] = aUSDoYouFeelBurningWhenYouPassUrine;
    map['AUS_Cleft_Lip'] = aUSCleftLip;
    map['AUS_Cleft_Lip_Present'] = aUSCleftLipPresent;
    map['AUS_Cleft_Palate'] = aUSCleftPalate;
    map['AUS_Cleft_Palate_Present'] = aUSCleftPalatePresent;
    map['AUS_Abdominal_Distension'] = aUSAbdominalDistension;
    map['AUS_Exaggerate_Bowel_Sounds'] = aUSExaggerateBowelSounds;
    map['AUS_Guarding'] = aUSGuarding;
    map['AUS_Rigidity'] = aUSRigidity;
    map['AUS_Right_Hypochondrium_Pain'] = aUSRightHypochondriumPain;
    map['AUS_RH_Pain_Yes_Pain_Score'] = aUSRHPainYesPainScore;
    map['AUS_RH_Tenderness'] = aUSRHTenderness;
    map['AUS_RH_Tenderness_Present'] = aUSRHTendernessPresent;
    map['AUS_RH_Swelling_Lumps'] = aUSRHSwellingLumps;
    map['AUS_RH_Swelling_Lumps_Present_Description'] = aUSRHSwellingLumpsPresentDescription;
    map['AUS_RH_Swelling_Lumps_Present_Size'] = aUSRHSwellingLumpsPresentSize;
    map['AUS_RH_Swelling_Lumps_Present_Texture'] = aUSRHSwellingLumpsPresentTexture;
    map['AUS_RH_Liver'] = aUSRHLiver;
    map['AUS_RH_Liver_Palpable'] = aUSRHLiverPalpable;
    map['AUS_RH_Gall_Bladder'] = aUSRHGallBladder;
    map['AUS_RH_Gall_Bladder_Tender'] = aUSRHGallBladderTender;
    map['AUS_Right_Lumbar_Pain'] = aUSRightLumbarPain;
    map['AUS_RL_Pain_Yes_Pain_Score'] = aUSRLPainYesPainScore;
    map['AUS_RL_Tenderness'] = aUSRLTenderness;
    map['AUS_RL_Tenderness_Present'] = aUSRLTendernessPresent;
    map['AUS_RL_Swelling_Lumps'] = aUSRLSwellingLumps;
    map['AUS_RL_Swelling_Lumps_Present_Description'] = aUSRLSwellingLumpsPresentDescription;
    map['AUS_RL_Swelling_Lumps_Present_Size'] = aUSRLSwellingLumpsPresentSize;
    map['AUS_RL_Swelling_Lumps_Present_Texture'] = aUSRLSwellingLumpsPresentTexture;
    map['AUS_RL_Right_Kidney'] = aUSRLRightKidney;
    map['AUS_RL_Right_Kidney_Palpable'] = aUSRLRightKidneyPalpable;
    map['AUS_Right_Iliac_Pain'] = aUSRightIliacPain;
    map['AUS_RI_Pain_Yes_Pain_Score'] = aUSRIPainYesPainScore;
    map['AUS_RI_MBP'] = ausrimbp;
    map['AUS_RI_MBP_Pain_Score'] = aUSRIMBPPainScore;
    map['AUS_RI_Tenderness'] = aUSRITenderness;
    map['AUS_RI_Tenderness_Present'] = aUSRITendernessPresent;
    map['AUS_RI_Swelling_Lumps'] = aUSRISwellingLumps;
    map['AUS_RI_Swelling_Lumps_Present_Description'] = aUSRISwellingLumpsPresentDescription;
    map['AUS_RI_Swelling_Lumps_Present_Size'] = aUSRISwellingLumpsPresentSize;
    map['AUS_RI_Swelling_Lumps_Present_Texture'] = aUSRISwellingLumpsPresentTexture;
    map['AUS_Epigastric_Pain'] = aUSEpigastricPain;
    map['AUS_E_Pain_Yes_Pain_Score'] = aUSEPainYesPainScore;
    map['AUS_E_Tenderness'] = aUSETenderness;
    map['AUS_E_Tenderness_Present'] = aUSETendernessPresent;
    map['AUS_E_Tenderness_Present_Rebound'] = aUSETendernessPresentRebound;
    map['AUS_E_Swelling_Lumps'] = aUSESwellingLumps;
    map['AUS_E_Swelling_Lumps_Present_Description'] = aUSESwellingLumpsPresentDescription;
    map['AUS_E_Swelling_Lumps_Present_Size'] = aUSESwellingLumpsPresentSize;
    map['AUS_E_Swelling_Lumps_Present_Texture'] = aUSESwellingLumpsPresentTexture;
    map['AUS_Umbilical_Pain'] = aUSUmbilicalPain;
    map['AUS_U_Pain_Yes_Pain_Score'] = aUSUPainYesPainScore;
    map['AUS_U_Tenderness'] = aUSUTenderness;
    map['AUS_U_Tenderness_Present'] = aUSUTendernessPresent;
    map['AUS_U_Tenderness_Present_Rebound'] = aUSUTendernessPresentRebound;
    map['AUS_U_Swelling_Lumps'] = aUSUSwellingLumps;
    map['AUS_U_Swelling_Lumps_Present_Description'] = aUSUSwellingLumpsPresentDescription;
    map['AUS_U_Swelling_Lumps_Present_Size'] = aUSUSwellingLumpsPresentSize;
    map['AUS_U_Swelling_Lumps_Present_Texture'] = aUSUSwellingLumpsPresentTexture;
    map['AUS_Suprapubic_Pain'] = aUSSuprapubicPain;
    map['AUS_S_Pain_Yes_Pain_Score'] = aUSSPainYesPainScore;
    map['AUS_S_Tenderness'] = aUSSTenderness;
    map['AUS_S_Tenderness_Present'] = aUSSTendernessPresent;
    map['AUS_S_Tenderness_Present_Rebound'] = aUSSTendernessPresentRebound;
    map['AUS_S_Swelling_Lumps'] = aUSSSwellingLumps;
    map['AUS_S_Swelling_Lumps_Present_Description'] = aUSSSwellingLumpsPresentDescription;
    map['AUS_S_Swelling_Lumps_Present_Size'] = aUSSSwellingLumpsPresentSize;
    map['AUS_S_Swelling_Lumps_Present_Texture'] = aUSSSwellingLumpsPresentTexture;
    map['AUS_S_Uterus'] = aUSSUterus;
    map['AUS_S_Uterus_Palpable'] = aUSSUterusPalpable;
    map['AUS_Left_Hypochondrium_Pain'] = aUSLeftHypochondriumPain;
    map['AUS_LH_Pain_Yes_Pain_Score'] = aUSLHPainYesPainScore;
    map['AUS_LH_Tenderness'] = aUSLHTenderness;
    map['AUS_LH_Tenderness_Present'] = aUSLHTendernessPresent;
    map['AUS_LH_Swelling_Lumps'] = aUSLHSwellingLumps;
    map['AUS_LH_Swelling_Lumps_Present_Description'] = aUSLHSwellingLumpsPresentDescription;
    map['AUS_LH_Swelling_Lumps_Present_Size'] = aUSLHSwellingLumpsPresentSize;
    map['AUS_LH_Swelling_Lumps_Present_Texture'] = aUSLHSwellingLumpsPresentTexture;
    map['AUS_LH_Spleen'] = aUSLHSpleen;
    map['AUS_LH_Spleen_Palpable'] = aUSLHSpleenPalpable;
    map['AUS_Left_Lumbar_Pain'] = aUSLeftLumbarPain;
    map['AUS_LL_Pain_Yes_Pain_Score'] = aUSLLPainYesPainScore;
    map['AUS_LL_Tenderness'] = aUSLLTenderness;
    map['AUS_LL_Tenderness_Present'] = aUSLLTendernessPresent;
    map['AUS_LL_Swelling_Lumps'] = aUSLLSwellingLumps;
    map['AUS_LL_Swelling_Lumps_Present_Description'] = aUSLLSwellingLumpsPresentDescription;
    map['AUS_LL_Swelling_Lumps_Present_Size'] = aUSLLSwellingLumpsPresentSize;
    map['AUS_LL_Swelling_Lumps_Present_Texture'] = aUSLLSwellingLumpsPresentTexture;
    map['AUS_LL_Left_Kidney'] = aUSLLLeftKidney;
    map['AUS_LL_Left_Kidney_Palpable'] = aUSLLLeftKidneyPalpable;
    map['AUS_Left_Iliac_Pain'] = aUSLeftIliacPain;
    map['AUS_LI_Pain_Yes_Pain_Score'] = aUSLIPainYesPainScore;
    map['AUS_LI_Tenderness'] = aUSLITenderness;
    map['AUS_LI_Tenderness_Present'] = aUSLITendernessPresent;
    map['AUS_LI_Swelling_Lumps'] = aUSLISwellingLumps;
    map['AUS_LI_Swelling_Lumps_Present_Description'] = aUSLISwellingLumpsPresentDescription;
    map['AUS_LI_Swelling_Lumps_Present_Size'] = aUSLISwellingLumpsPresentSize;
    map['AUS_LI_Swelling_Lumps_Present_Texture'] = aUSLISwellingLumpsPresentTexture;
    map['AUS_Hernia'] = aUSHernia;
    map['AUS_Hernia_Present'] = aUSHerniaPresent;
    map['AUS_Urinary_Bladder'] = aUSUrinaryBladder;
    map['AUS_Urinary_Bladder_Palpable'] = aUSUrinaryBladderPalpable;
    return map;
  }

}