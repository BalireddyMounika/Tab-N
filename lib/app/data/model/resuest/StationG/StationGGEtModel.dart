class StationGgetModel {
  StationGgetModel({
    num? id,
    num? stationID,
    num? hcid,
    num? hcpid,
    num? infoseekId,
    String? entryTime,
    String? centralNervousSystemAlert,
    String? cNSOriented,
    String? cNSListens,
    String? cNSUnderstands,
    String? cNSResponds,
    String? cNSSpeech,
    dynamic cNSSpeechAbnormal,
    dynamic cNSSpeechAbnormalOther,
    String? cNSHistoryOfHeadache,
    dynamic cNSHistoryOfHeadacheYesFrequency,
    dynamic cNSHistoryOfHeadacheYesFrequencyContinuous,
    dynamic cNSHistoryOfHeadacheYesAssociatedWith,
    dynamic cNSHistoryOfHeadacheYesAssociatedWithOccurrence,
    dynamic cNSHistoryOfHeadacheYesAssociatedWithOther,
    dynamic cNSHistoryOfHeadacheYesFrom,
    dynamic cNSHistoryOfHeadacheYesDuration,
    String? cNSHistoryOfDizziness,
    dynamic cNSHistoryOfDizzinessYesFrequency,
    dynamic cNSHistoryOfDizzinessYesFrequencyContinuous,
    dynamic cNSHistoryOfDizzinessYesAssociatedWith,
    dynamic cNSHistoryOfDizzinessYesAssociatedWithOccurrence,
    dynamic cNSHistoryOfDizzinessYesAssociatedWithOther,
    String? respiratorySystemDoYouFeelBreathless,
    String? rSDoYouHaveACough,
    String? rSShapeOfChest,
    dynamic rSShapeOfChestAbnormal,
    dynamic rSShapeOfChestAbnormalOther,
    String? rSTypeOfRespiration,
    String? rSTypeOfRespirationAbdominal,
    String? rSTypeOfRespirationAbdominalOther,
    String? rSTypeOfRespirationThoracic,
    String? rSTypeOfRespirationThoracicOther,
    String? rSTypeOfRespirationAbdominoThoracic,
    String? rSTypeOfRespirationAbdominoThoracicOther,
    String? rSTrachea,
    String? rSEvidenceOfTracheostomy,
    String? rightLungAirEntryNormal,
    String? rLBreathSounds,
    dynamic rLBreathSoundsAbnormal,
    dynamic rLBreathSoundsAbnormalApical,
    dynamic rLBreathSoundsAbnormalMidZone,
    dynamic rLBreathSoundsAbnormalBasal,
    dynamic rLBreathSoundsAbnormalSubScapular,
    dynamic rLBreathSoundsAbnormalDiffuse,
    String? rLRalesCrepts,
    String? rLRalesCreptsPresent,
    String? rLRalesCreptsPresentApical,
    String? rLRalesCreptsPresentApicalFine,
    dynamic rLRalesCreptsPresentApicalCoarse,
    dynamic rLRalesCreptsPresentMidZone,
    dynamic rLRalesCreptsPresentMidZoneFine,
    dynamic rLRalesCreptsPresentMidZoneCoarse,
    dynamic rLRalesCreptsPresentBasal,
    dynamic rLRalesCreptsPresentBasalFine,
    dynamic rLRalesCreptsPresentBasalCoarse,
    dynamic rLRalesCreptsPresentSubScapular,
    dynamic rLRalesCreptsPresentSubScapularFine,
    dynamic rLRalesCreptsPresentSubScapularCoarse,
    dynamic rLRalesCreptsPresentDiffuse,
    dynamic rLRalesCreptsPresentDiffuseFine,
    dynamic rLRalesCreptsPresentDiffuseCoarse,
    String? rLRhonchiWheezing,
    dynamic rLRhonchiWheezingPresent,
    String? rLAddedSounds,
    String? rLAddedZoneOfConcern,
    dynamic rLAddedZoneOfConcernAbnormal,
    dynamic rLAddedSoundsPresent,
    String? leftLungAirEntryNormal,
    String? lLBreathSounds,
    dynamic lLBreathSoundsAbnormal,
    dynamic lLBreathSoundsAbnormalApical,
    dynamic lLBreathSoundsAbnormalMidZone,
    dynamic lLBreathSoundsAbnormalBasal,
    dynamic lLBreathSoundsAbnormalSubScapular,
    dynamic lLBreathSoundsAbnormalDiffuse,
    String? lLRalesCrepts,
    dynamic lLRalesCreptsPresent,
    dynamic lLRalesCreptsPresentApical,
    dynamic lLRalesCreptsPresentApicalFine,
    dynamic lLRalesCreptsPresentApicalCoarse,
    dynamic lLRalesCreptsPresentMidZone,
    dynamic lLRalesCreptsPresentMidZoneFine,
    dynamic lLRalesCreptsPresentMidZoneCoarse,
    dynamic lLRalesCreptsPresentBasal,
    dynamic lLRalesCreptsPresentBasalFine,
    dynamic lLRalesCreptsPresentBasalCoarse,
    dynamic lLRalesCreptsPresentSubScapular,
    dynamic lLRalesCreptsPresentSubScapularFine,
    dynamic lLRalesCreptsPresentSubScapularCoarse,
    dynamic lLRalesCreptsPresentDiffuse,
    dynamic lLRalesCreptsPresentDiffuseFine,
    dynamic lLRalesCreptsPresentDiffuseCoarse,
    String? lLRhonchiWheezing,
    dynamic lLRhonchiWheezingPresent,
    String? lLAddedSounds,
    String? lLAddedZoneOfConcern,
    dynamic lLAddedZoneOfConcernAbnormal,
    dynamic lLAddedSoundsPresent,
    String? cardioVascularSystemsDoYouGetPalpitation,
    String? cVSFaintedInHomeSchoolWorkplaceAtAnyTime,
    String? cVSJugularPulsations,
    String? cVSJugularPulsationsVisible,
    dynamic cVSJugularPulsationsVisibleAbnormal,
    String? cVSSuprasternalPulsations,
    dynamic cVSSuprasternalPulsationsPresent,
    String? cVSPeripheralPulsationsRadial,
    String? cVSPeripheralPulsationsRadialPresent,
    dynamic cVSPeripheralPulsationsRadialPresentAbnormal,
    String? cVSPeripheralPulsationsDorsalisPedis,
    String? cVSPeripheralPulsationsDorsalisPedisPresent,
    dynamic cVSPeripheralPulsationsDorsalisPedisAbnormal,
    String? cVSPeripheralPulsationsOtherAbnormality,
    String? cvss1,
    String? cvss2,
    String? cvss3,
    String? cVSMurmur,
    dynamic cVSMurmurPresent,
    dynamic cVSMurmurPresentOther,
    String? cVSClick,
    dynamic cVSClickPresentPosition,
    String? cVSApexBeat,
    dynamic cVSApexBeatPresentDisplaced,
    String? alimentaryAndUrinarySystemDoYouHaveNauseaVomiting,
    String? aUSDoYouHavePainInYourAbdomen,
    String? aUSDoYouFeelBurningWhenYouPassUrine,
    String? aUSCleftLip,
    dynamic aUSCleftLipPresent,
    String? aUSCleftPalate,
    dynamic aUSCleftPalatePresent,
    String? aUSAbdominalDistension,
    String? aUSExaggerateBowelSounds,
    String? aUSGuarding,
    String? aUSRigidity,
    String? aUSRightHypochondriumPain,
    dynamic aUSRHPainYesPainScore,
    String? aUSRHTenderness,
    dynamic aUSRHTendernessPresent,
    String? aUSRHSwellingLumps,
    dynamic aUSRHSwellingLumpsPresentDescription,
    dynamic aUSRHSwellingLumpsPresentSize,
    dynamic aUSRHSwellingLumpsPresentTexture,
    String? aUSRHLiver,
    dynamic aUSRHLiverPalpable,
    String? aUSRHGallBladder,
    dynamic aUSRHGallBladderTender,
    String? aUSRightLumbarPain,
    dynamic aUSRLPainYesPainScore,
    String? aUSRLTenderness,
    dynamic aUSRLTendernessPresent,
    String? aUSRLSwellingLumps,
    dynamic aUSRLSwellingLumpsPresentDescription,
    dynamic aUSRLSwellingLumpsPresentSize,
    dynamic aUSRLSwellingLumpsPresentTexture,
    String? aUSRLRightKidney,
    dynamic aUSRLRightKidneyPalpable,
    String? aUSRightIliacPain,
    dynamic aUSRIPainYesPainScore,
    String? ausrimbp,
    dynamic aUSRIMBPPainScore,
    String? aUSRITenderness,
    dynamic aUSRITendernessPresent,
    String? aUSRISwellingLumps,
    dynamic aUSRISwellingLumpsPresentDescription,
    dynamic aUSRISwellingLumpsPresentSize,
    dynamic aUSRISwellingLumpsPresentTexture,
    String? aUSEpigastricPain,
    dynamic aUSEPainYesPainScore,
    String? aUSETenderness,
    dynamic aUSETendernessPresent,
    dynamic aUSETendernessPresentRebound,
    String? aUSESwellingLumps,
    dynamic aUSESwellingLumpsPresentDescription,
    dynamic aUSESwellingLumpsPresentSize,
    dynamic aUSESwellingLumpsPresentTexture,
    String? aUSUmbilicalPain,
    dynamic aUSUPainYesPainScore,
    String? aUSUTenderness,
    dynamic aUSUTendernessPresent,
    dynamic aUSUTendernessPresentRebound,
    String? aUSUSwellingLumps,
    dynamic aUSUSwellingLumpsPresentDescription,
    dynamic aUSUSwellingLumpsPresentSize,
    dynamic aUSUSwellingLumpsPresentTexture,
    String? aUSSuprapubicPain,
    dynamic aUSSPainYesPainScore,
    String? aUSSTenderness,
    dynamic aUSSTendernessPresent,
    dynamic aUSSTendernessPresentRebound,
    String? aUSSSwellingLumps,
    dynamic aUSSSwellingLumpsPresentDescription,
    dynamic aUSSSwellingLumpsPresentSize,
    dynamic aUSSSwellingLumpsPresentTexture,
    String? aUSSUterus,
    dynamic aUSSUterusPalpable,
    String? aUSLeftHypochondriumPain,
    dynamic aUSLHPainYesPainScore,
    String? aUSLHTenderness,
    dynamic aUSLHTendernessPresent,
    String? aUSLHSwellingLumps,
    dynamic aUSLHSwellingLumpsPresentDescription,
    dynamic aUSLHSwellingLumpsPresentSize,
    dynamic aUSLHSwellingLumpsPresentTexture,
    String? aUSLHSpleen,
    dynamic aUSLHSpleenPalpable,
    String? aUSLeftLumbarPain,
    dynamic aUSLLPainYesPainScore,
    String? aUSLLTenderness,
    dynamic aUSLLTendernessPresent,
    String? aUSLLSwellingLumps,
    dynamic aUSLLSwellingLumpsPresentDescription,
    dynamic aUSLLSwellingLumpsPresentSize,
    dynamic aUSLLSwellingLumpsPresentTexture,
    String? aUSLLLeftKidney,
    dynamic aUSLLLeftKidneyPalpable,
    String? aUSLeftIliacPain,
    dynamic aUSLIPainYesPainScore,
    String? aUSLITenderness,
    dynamic aUSLITendernessPresent,
    String? aUSLISwellingLumps,
    dynamic aUSLISwellingLumpsPresentDescription,
    dynamic aUSLISwellingLumpsPresentSize,
    dynamic aUSLISwellingLumpsPresentTexture,
    String? aUSHernia,
    dynamic aUSHerniaPresent,
    String? aUSUrinaryBladder,
    dynamic aUSUrinaryBladderPalpable,
    dynamic pubertalAssessmentGirls,
    dynamic pAGTannerScore,
    dynamic pAGMenarcheAttained,
    dynamic pAGMAYesAgeOfMenarche,
    dynamic pAGMAYesLMPDate,
    dynamic pAGMAYesCharacterRegularity,
    dynamic pAGMAYesCharacterFrequencyInDays,
    dynamic pAGMAYesDurationInDays,
    dynamic pAGMAYesFlow,
    dynamic pAGMAYesComfort,
    dynamic pAGMAYesPainInOtherPartsOfBodyDuringMenses,
    dynamic pAGMAYesPainInOtherPartsOfBodyDuringMensesYes,
    dynamic pAGMAYesPainInOtherPartsBodyDuringMensesYesOther,
    dynamic pAGYesCrackingOfVoiceOrChnageInVoice,
    dynamic pAGHaveYouExperiencedAChangeInBehaviourRecently,
    dynamic pAGChangeBehaviourYes,
    dynamic pAGChangeBehaviourYesQuietWithdrawn,
    dynamic pAGChangeBehaviourOutgoing,
    dynamic pAGChangeBehaviourAggressive,
    dynamic pAGChangeBehaviourBoldAndDaring,
    dynamic pAGChangeBehaviourCareless,
    dynamic pAGPreferCompanyOf,
    dynamic pAGAnyOtherAbnormalFinding,
    dynamic pAGAnyOtherAbnormalFindingYes,
    String? pubertalAssessmentBoys,
    dynamic pABTannerScore,
    String? pABYesCrackingOfVoiceOrChnageInVoice,
    String? pABNightlyEmissions,
    String? pABHaveYouExperiencedAChangeInBehaviourRecently,
    dynamic pABChangeBehaviourYes,
    dynamic pABChangeBehaviourYesQuietWithdrawn,
    dynamic pABChangeBehaviourOutgoing,
    dynamic pABChangeBehaviourAggressive,
    dynamic pABChangeBehaviourBoldAndDaring,
    dynamic pABChangeBehaviourCareless,
    String? pABPreferCompanyOf,
    String? pABAnyOtherAbnormalFinding,
    dynamic pABAnyOtherAbnormalFindingYes,
    String? historyOfMedication,
    dynamic historyOfMedicationYes,
    dynamic nameOfMedication,
    String? milestones,
    String? otherObservations,
    String? specialistReferralNeeded,
    dynamic specialistReferralNeededType,
    dynamic specialistReferralNeededFlag,
    dynamic other,
    String? completed,
    String? reviewStatus,
    dynamic reviewedBy,
    String? reviewedOn,
    dynamic comments,
    String? endTime,
  }) {
    _id = id;
    _stationID = stationID;
    _hcid = hcid;
    _hcpid = hcpid;
    _infoseekId = infoseekId;
    _entryTime = entryTime;
    _centralNervousSystemAlert = centralNervousSystemAlert;
    _cNSOriented = cNSOriented;
    _cNSListens = cNSListens;
    _cNSUnderstands = cNSUnderstands;
    _cNSResponds = cNSResponds;
    _cNSSpeech = cNSSpeech;
    _cNSSpeechAbnormal = cNSSpeechAbnormal;
    _cNSSpeechAbnormalOther = cNSSpeechAbnormalOther;
    _cNSHistoryOfHeadache = cNSHistoryOfHeadache;
    _cNSHistoryOfHeadacheYesFrequency = cNSHistoryOfHeadacheYesFrequency;
    _cNSHistoryOfHeadacheYesFrequencyContinuous =
        cNSHistoryOfHeadacheYesFrequencyContinuous;
    _cNSHistoryOfHeadacheYesAssociatedWith =
        cNSHistoryOfHeadacheYesAssociatedWith;
    _cNSHistoryOfHeadacheYesAssociatedWithOccurrence =
        cNSHistoryOfHeadacheYesAssociatedWithOccurrence;
    _cNSHistoryOfHeadacheYesAssociatedWithOther =
        cNSHistoryOfHeadacheYesAssociatedWithOther;
    _cNSHistoryOfHeadacheYesFrom = cNSHistoryOfHeadacheYesFrom;
    _cNSHistoryOfHeadacheYesDuration = cNSHistoryOfHeadacheYesDuration;
    _cNSHistoryOfDizziness = cNSHistoryOfDizziness;
    _cNSHistoryOfDizzinessYesFrequency = cNSHistoryOfDizzinessYesFrequency;
    _cNSHistoryOfDizzinessYesFrequencyContinuous =
        cNSHistoryOfDizzinessYesFrequencyContinuous;
    _cNSHistoryOfDizzinessYesAssociatedWith =
        cNSHistoryOfDizzinessYesAssociatedWith;
    _cNSHistoryOfDizzinessYesAssociatedWithOccurrence =
        cNSHistoryOfDizzinessYesAssociatedWithOccurrence;
    _cNSHistoryOfDizzinessYesAssociatedWithOther =
        cNSHistoryOfDizzinessYesAssociatedWithOther;
    _respiratorySystemDoYouFeelBreathless =
        respiratorySystemDoYouFeelBreathless;
    _rSDoYouHaveACough = rSDoYouHaveACough;
    _rSShapeOfChest = rSShapeOfChest;
    _rSShapeOfChestAbnormal = rSShapeOfChestAbnormal;
    _rSShapeOfChestAbnormalOther = rSShapeOfChestAbnormalOther;
    _rSTypeOfRespiration = rSTypeOfRespiration;
    _rSTypeOfRespirationAbdominal = rSTypeOfRespirationAbdominal;
    _rSTypeOfRespirationAbdominalOther = rSTypeOfRespirationAbdominalOther;
    _rSTypeOfRespirationThoracic = rSTypeOfRespirationThoracic;
    _rSTypeOfRespirationThoracicOther = rSTypeOfRespirationThoracicOther;
    _rSTypeOfRespirationAbdominoThoracic = rSTypeOfRespirationAbdominoThoracic;
    _rSTypeOfRespirationAbdominoThoracicOther =
        rSTypeOfRespirationAbdominoThoracicOther;
    _rSTrachea = rSTrachea;
    _rSEvidenceOfTracheostomy = rSEvidenceOfTracheostomy;
    _rightLungAirEntryNormal = rightLungAirEntryNormal;
    _rLBreathSounds = rLBreathSounds;
    _rLBreathSoundsAbnormal = rLBreathSoundsAbnormal;
    _rLBreathSoundsAbnormalApical = rLBreathSoundsAbnormalApical;
    _rLBreathSoundsAbnormalMidZone = rLBreathSoundsAbnormalMidZone;
    _rLBreathSoundsAbnormalBasal = rLBreathSoundsAbnormalBasal;
    _rLBreathSoundsAbnormalSubScapular = rLBreathSoundsAbnormalSubScapular;
    _rLBreathSoundsAbnormalDiffuse = rLBreathSoundsAbnormalDiffuse;
    _rLRalesCrepts = rLRalesCrepts;
    _rLRalesCreptsPresent = rLRalesCreptsPresent;
    _rLRalesCreptsPresentApical = rLRalesCreptsPresentApical;
    _rLRalesCreptsPresentApicalFine = rLRalesCreptsPresentApicalFine;
    _rLRalesCreptsPresentApicalCoarse = rLRalesCreptsPresentApicalCoarse;
    _rLRalesCreptsPresentMidZone = rLRalesCreptsPresentMidZone;
    _rLRalesCreptsPresentMidZoneFine = rLRalesCreptsPresentMidZoneFine;
    _rLRalesCreptsPresentMidZoneCoarse = rLRalesCreptsPresentMidZoneCoarse;
    _rLRalesCreptsPresentBasal = rLRalesCreptsPresentBasal;
    _rLRalesCreptsPresentBasalFine = rLRalesCreptsPresentBasalFine;
    _rLRalesCreptsPresentBasalCoarse = rLRalesCreptsPresentBasalCoarse;
    _rLRalesCreptsPresentSubScapular = rLRalesCreptsPresentSubScapular;
    _rLRalesCreptsPresentSubScapularFine = rLRalesCreptsPresentSubScapularFine;
    _rLRalesCreptsPresentSubScapularCoarse =
        rLRalesCreptsPresentSubScapularCoarse;
    _rLRalesCreptsPresentDiffuse = rLRalesCreptsPresentDiffuse;
    _rLRalesCreptsPresentDiffuseFine = rLRalesCreptsPresentDiffuseFine;
    _rLRalesCreptsPresentDiffuseCoarse = rLRalesCreptsPresentDiffuseCoarse;
    _rLRhonchiWheezing = rLRhonchiWheezing;
    _rLRhonchiWheezingPresent = rLRhonchiWheezingPresent;
    _rLAddedSounds = rLAddedSounds;
    _rLAddedZoneOfConcern = rLAddedZoneOfConcern;
    _rLAddedZoneOfConcernAbnormal = rLAddedZoneOfConcernAbnormal;
    _rLAddedSoundsPresent = rLAddedSoundsPresent;
    _leftLungAirEntryNormal = leftLungAirEntryNormal;
    _lLBreathSounds = lLBreathSounds;
    _lLBreathSoundsAbnormal = lLBreathSoundsAbnormal;
    _lLBreathSoundsAbnormalApical = lLBreathSoundsAbnormalApical;
    _lLBreathSoundsAbnormalMidZone = lLBreathSoundsAbnormalMidZone;
    _lLBreathSoundsAbnormalBasal = lLBreathSoundsAbnormalBasal;
    _lLBreathSoundsAbnormalSubScapular = lLBreathSoundsAbnormalSubScapular;
    _lLBreathSoundsAbnormalDiffuse = lLBreathSoundsAbnormalDiffuse;
    _lLRalesCrepts = lLRalesCrepts;
    _lLRalesCreptsPresent = lLRalesCreptsPresent;
    _lLRalesCreptsPresentApical = lLRalesCreptsPresentApical;
    _lLRalesCreptsPresentApicalFine = lLRalesCreptsPresentApicalFine;
    _lLRalesCreptsPresentApicalCoarse = lLRalesCreptsPresentApicalCoarse;
    _lLRalesCreptsPresentMidZone = lLRalesCreptsPresentMidZone;
    _lLRalesCreptsPresentMidZoneFine = lLRalesCreptsPresentMidZoneFine;
    _lLRalesCreptsPresentMidZoneCoarse = lLRalesCreptsPresentMidZoneCoarse;
    _lLRalesCreptsPresentBasal = lLRalesCreptsPresentBasal;
    _lLRalesCreptsPresentBasalFine = lLRalesCreptsPresentBasalFine;
    _lLRalesCreptsPresentBasalCoarse = lLRalesCreptsPresentBasalCoarse;
    _lLRalesCreptsPresentSubScapular = lLRalesCreptsPresentSubScapular;
    _lLRalesCreptsPresentSubScapularFine = lLRalesCreptsPresentSubScapularFine;
    _lLRalesCreptsPresentSubScapularCoarse =
        lLRalesCreptsPresentSubScapularCoarse;
    _lLRalesCreptsPresentDiffuse = lLRalesCreptsPresentDiffuse;
    _lLRalesCreptsPresentDiffuseFine = lLRalesCreptsPresentDiffuseFine;
    _lLRalesCreptsPresentDiffuseCoarse = lLRalesCreptsPresentDiffuseCoarse;
    _lLRhonchiWheezing = lLRhonchiWheezing;
    _lLRhonchiWheezingPresent = lLRhonchiWheezingPresent;
    _lLAddedSounds = lLAddedSounds;
    _lLAddedZoneOfConcern = lLAddedZoneOfConcern;
    _lLAddedZoneOfConcernAbnormal = lLAddedZoneOfConcernAbnormal;
    _lLAddedSoundsPresent = lLAddedSoundsPresent;
    _cardioVascularSystemsDoYouGetPalpitation =
        cardioVascularSystemsDoYouGetPalpitation;
    _cVSFaintedInHomeSchoolWorkplaceAtAnyTime =
        cVSFaintedInHomeSchoolWorkplaceAtAnyTime;
    _cVSJugularPulsations = cVSJugularPulsations;
    _cVSJugularPulsationsVisible = cVSJugularPulsationsVisible;
    _cVSJugularPulsationsVisibleAbnormal = cVSJugularPulsationsVisibleAbnormal;
    _cVSSuprasternalPulsations = cVSSuprasternalPulsations;
    _cVSSuprasternalPulsationsPresent = cVSSuprasternalPulsationsPresent;
    _cVSPeripheralPulsationsRadial = cVSPeripheralPulsationsRadial;
    _cVSPeripheralPulsationsRadialPresent =
        cVSPeripheralPulsationsRadialPresent;
    _cVSPeripheralPulsationsRadialPresentAbnormal =
        cVSPeripheralPulsationsRadialPresentAbnormal;
    _cVSPeripheralPulsationsDorsalisPedis =
        cVSPeripheralPulsationsDorsalisPedis;
    _cVSPeripheralPulsationsDorsalisPedisPresent =
        cVSPeripheralPulsationsDorsalisPedisPresent;
    _cVSPeripheralPulsationsDorsalisPedisAbnormal =
        cVSPeripheralPulsationsDorsalisPedisAbnormal;
    _cVSPeripheralPulsationsOtherAbnormality =
        cVSPeripheralPulsationsOtherAbnormality;
    _cvss1 = cvss1;
    _cvss2 = cvss2;
    _cvss3 = cvss3;
    _cVSMurmur = cVSMurmur;
    _cVSMurmurPresent = cVSMurmurPresent;
    _cVSMurmurPresentOther = cVSMurmurPresentOther;
    _cVSClick = cVSClick;
    _cVSClickPresentPosition = cVSClickPresentPosition;
    _cVSApexBeat = cVSApexBeat;
    _cVSApexBeatPresentDisplaced = cVSApexBeatPresentDisplaced;
    _alimentaryAndUrinarySystemDoYouHaveNauseaVomiting =
        alimentaryAndUrinarySystemDoYouHaveNauseaVomiting;
    _aUSDoYouHavePainInYourAbdomen = aUSDoYouHavePainInYourAbdomen;
    _aUSDoYouFeelBurningWhenYouPassUrine = aUSDoYouFeelBurningWhenYouPassUrine;
    _aUSCleftLip = aUSCleftLip;
    _aUSCleftLipPresent = aUSCleftLipPresent;
    _aUSCleftPalate = aUSCleftPalate;
    _aUSCleftPalatePresent = aUSCleftPalatePresent;
    _aUSAbdominalDistension = aUSAbdominalDistension;
    _aUSExaggerateBowelSounds = aUSExaggerateBowelSounds;
    _aUSGuarding = aUSGuarding;
    _aUSRigidity = aUSRigidity;
    _aUSRightHypochondriumPain = aUSRightHypochondriumPain;
    _aUSRHPainYesPainScore = aUSRHPainYesPainScore;
    _aUSRHTenderness = aUSRHTenderness;
    _aUSRHTendernessPresent = aUSRHTendernessPresent;
    _aUSRHSwellingLumps = aUSRHSwellingLumps;
    _aUSRHSwellingLumpsPresentDescription =
        aUSRHSwellingLumpsPresentDescription;
    _aUSRHSwellingLumpsPresentSize = aUSRHSwellingLumpsPresentSize;
    _aUSRHSwellingLumpsPresentTexture = aUSRHSwellingLumpsPresentTexture;
    _aUSRHLiver = aUSRHLiver;
    _aUSRHLiverPalpable = aUSRHLiverPalpable;
    _aUSRHGallBladder = aUSRHGallBladder;
    _aUSRHGallBladderTender = aUSRHGallBladderTender;
    _aUSRightLumbarPain = aUSRightLumbarPain;
    _aUSRLPainYesPainScore = aUSRLPainYesPainScore;
    _aUSRLTenderness = aUSRLTenderness;
    _aUSRLTendernessPresent = aUSRLTendernessPresent;
    _aUSRLSwellingLumps = aUSRLSwellingLumps;
    _aUSRLSwellingLumpsPresentDescription =
        aUSRLSwellingLumpsPresentDescription;
    _aUSRLSwellingLumpsPresentSize = aUSRLSwellingLumpsPresentSize;
    _aUSRLSwellingLumpsPresentTexture = aUSRLSwellingLumpsPresentTexture;
    _aUSRLRightKidney = aUSRLRightKidney;
    _aUSRLRightKidneyPalpable = aUSRLRightKidneyPalpable;
    _aUSRightIliacPain = aUSRightIliacPain;
    _aUSRIPainYesPainScore = aUSRIPainYesPainScore;
    _ausrimbp = ausrimbp;
    _aUSRIMBPPainScore = aUSRIMBPPainScore;
    _aUSRITenderness = aUSRITenderness;
    _aUSRITendernessPresent = aUSRITendernessPresent;
    _aUSRISwellingLumps = aUSRISwellingLumps;
    _aUSRISwellingLumpsPresentDescription =
        aUSRISwellingLumpsPresentDescription;
    _aUSRISwellingLumpsPresentSize = aUSRISwellingLumpsPresentSize;
    _aUSRISwellingLumpsPresentTexture = aUSRISwellingLumpsPresentTexture;
    _aUSEpigastricPain = aUSEpigastricPain;
    _aUSEPainYesPainScore = aUSEPainYesPainScore;
    _aUSETenderness = aUSETenderness;
    _aUSETendernessPresent = aUSETendernessPresent;
    _aUSETendernessPresentRebound = aUSETendernessPresentRebound;
    _aUSESwellingLumps = aUSESwellingLumps;
    _aUSESwellingLumpsPresentDescription = aUSESwellingLumpsPresentDescription;
    _aUSESwellingLumpsPresentSize = aUSESwellingLumpsPresentSize;
    _aUSESwellingLumpsPresentTexture = aUSESwellingLumpsPresentTexture;
    _aUSUmbilicalPain = aUSUmbilicalPain;
    _aUSUPainYesPainScore = aUSUPainYesPainScore;
    _aUSUTenderness = aUSUTenderness;
    _aUSUTendernessPresent = aUSUTendernessPresent;
    _aUSUTendernessPresentRebound = aUSUTendernessPresentRebound;
    _aUSUSwellingLumps = aUSUSwellingLumps;
    _aUSUSwellingLumpsPresentDescription = aUSUSwellingLumpsPresentDescription;
    _aUSUSwellingLumpsPresentSize = aUSUSwellingLumpsPresentSize;
    _aUSUSwellingLumpsPresentTexture = aUSUSwellingLumpsPresentTexture;
    _aUSSuprapubicPain = aUSSuprapubicPain;
    _aUSSPainYesPainScore = aUSSPainYesPainScore;
    _aUSSTenderness = aUSSTenderness;
    _aUSSTendernessPresent = aUSSTendernessPresent;
    _aUSSTendernessPresentRebound = aUSSTendernessPresentRebound;
    _aUSSSwellingLumps = aUSSSwellingLumps;
    _aUSSSwellingLumpsPresentDescription = aUSSSwellingLumpsPresentDescription;
    _aUSSSwellingLumpsPresentSize = aUSSSwellingLumpsPresentSize;
    _aUSSSwellingLumpsPresentTexture = aUSSSwellingLumpsPresentTexture;
    _aUSSUterus = aUSSUterus;
    _aUSSUterusPalpable = aUSSUterusPalpable;
    _aUSLeftHypochondriumPain = aUSLeftHypochondriumPain;
    _aUSLHPainYesPainScore = aUSLHPainYesPainScore;
    _aUSLHTenderness = aUSLHTenderness;
    _aUSLHTendernessPresent = aUSLHTendernessPresent;
    _aUSLHSwellingLumps = aUSLHSwellingLumps;
    _aUSLHSwellingLumpsPresentDescription =
        aUSLHSwellingLumpsPresentDescription;
    _aUSLHSwellingLumpsPresentSize = aUSLHSwellingLumpsPresentSize;
    _aUSLHSwellingLumpsPresentTexture = aUSLHSwellingLumpsPresentTexture;
    _aUSLHSpleen = aUSLHSpleen;
    _aUSLHSpleenPalpable = aUSLHSpleenPalpable;
    _aUSLeftLumbarPain = aUSLeftLumbarPain;
    _aUSLLPainYesPainScore = aUSLLPainYesPainScore;
    _aUSLLTenderness = aUSLLTenderness;
    _aUSLLTendernessPresent = aUSLLTendernessPresent;
    _aUSLLSwellingLumps = aUSLLSwellingLumps;
    _aUSLLSwellingLumpsPresentDescription =
        aUSLLSwellingLumpsPresentDescription;
    _aUSLLSwellingLumpsPresentSize = aUSLLSwellingLumpsPresentSize;
    _aUSLLSwellingLumpsPresentTexture = aUSLLSwellingLumpsPresentTexture;
    _aUSLLLeftKidney = aUSLLLeftKidney;
    _aUSLLLeftKidneyPalpable = aUSLLLeftKidneyPalpable;
    _aUSLeftIliacPain = aUSLeftIliacPain;
    _aUSLIPainYesPainScore = aUSLIPainYesPainScore;
    _aUSLITenderness = aUSLITenderness;
    _aUSLITendernessPresent = aUSLITendernessPresent;
    _aUSLISwellingLumps = aUSLISwellingLumps;
    _aUSLISwellingLumpsPresentDescription =
        aUSLISwellingLumpsPresentDescription;
    _aUSLISwellingLumpsPresentSize = aUSLISwellingLumpsPresentSize;
    _aUSLISwellingLumpsPresentTexture = aUSLISwellingLumpsPresentTexture;
    _aUSHernia = aUSHernia;
    _aUSHerniaPresent = aUSHerniaPresent;
    _aUSUrinaryBladder = aUSUrinaryBladder;
    _aUSUrinaryBladderPalpable = aUSUrinaryBladderPalpable;
    _pubertalAssessmentGirls = pubertalAssessmentGirls;
    _pAGTannerScore = pAGTannerScore;
    _pAGMenarcheAttained = pAGMenarcheAttained;
    _pAGMAYesAgeOfMenarche = pAGMAYesAgeOfMenarche;
    _pAGMAYesLMPDate = pAGMAYesLMPDate;
    _pAGMAYesCharacterRegularity = pAGMAYesCharacterRegularity;
    _pAGMAYesCharacterFrequencyInDays = pAGMAYesCharacterFrequencyInDays;
    _pAGMAYesDurationInDays = pAGMAYesDurationInDays;
    _pAGMAYesFlow = pAGMAYesFlow;
    _pAGMAYesComfort = pAGMAYesComfort;
    _pAGMAYesPainInOtherPartsOfBodyDuringMenses =
        pAGMAYesPainInOtherPartsOfBodyDuringMenses;
    _pAGMAYesPainInOtherPartsOfBodyDuringMensesYes =
        pAGMAYesPainInOtherPartsOfBodyDuringMensesYes;
    _pAGMAYesPainInOtherPartsBodyDuringMensesYesOther =
        pAGMAYesPainInOtherPartsBodyDuringMensesYesOther;
    _pAGYesCrackingOfVoiceOrChnageInVoice =
        pAGYesCrackingOfVoiceOrChnageInVoice;
    _pAGHaveYouExperiencedAChangeInBehaviourRecently =
        pAGHaveYouExperiencedAChangeInBehaviourRecently;
    _pAGChangeBehaviourYes = pAGChangeBehaviourYes;
    _pAGChangeBehaviourYesQuietWithdrawn = pAGChangeBehaviourYesQuietWithdrawn;
    _pAGChangeBehaviourOutgoing = pAGChangeBehaviourOutgoing;
    _pAGChangeBehaviourAggressive = pAGChangeBehaviourAggressive;
    _pAGChangeBehaviourBoldAndDaring = pAGChangeBehaviourBoldAndDaring;
    _pAGChangeBehaviourCareless = pAGChangeBehaviourCareless;
    _pAGPreferCompanyOf = pAGPreferCompanyOf;
    _pAGAnyOtherAbnormalFinding = pAGAnyOtherAbnormalFinding;
    _pAGAnyOtherAbnormalFindingYes = pAGAnyOtherAbnormalFindingYes;
    _pubertalAssessmentBoys = pubertalAssessmentBoys;
    _pABTannerScore = pABTannerScore;
    _pABYesCrackingOfVoiceOrChnageInVoice =
        pABYesCrackingOfVoiceOrChnageInVoice;
    _pABNightlyEmissions = pABNightlyEmissions;
    _pABHaveYouExperiencedAChangeInBehaviourRecently =
        pABHaveYouExperiencedAChangeInBehaviourRecently;
    _pABChangeBehaviourYes = pABChangeBehaviourYes;
    _pABChangeBehaviourYesQuietWithdrawn = pABChangeBehaviourYesQuietWithdrawn;
    _pABChangeBehaviourOutgoing = pABChangeBehaviourOutgoing;
    _pABChangeBehaviourAggressive = pABChangeBehaviourAggressive;
    _pABChangeBehaviourBoldAndDaring = pABChangeBehaviourBoldAndDaring;
    _pABChangeBehaviourCareless = pABChangeBehaviourCareless;
    _pABPreferCompanyOf = pABPreferCompanyOf;
    _pABAnyOtherAbnormalFinding = pABAnyOtherAbnormalFinding;
    _pABAnyOtherAbnormalFindingYes = pABAnyOtherAbnormalFindingYes;
    _historyOfMedication = historyOfMedication;
    _historyOfMedicationYes = historyOfMedicationYes;
    _nameOfMedication = nameOfMedication;
    _milestones = milestones;
    _otherObservations = otherObservations;
    _specialistReferralNeeded = specialistReferralNeeded;
    _specialistReferralNeededType = specialistReferralNeededType;
    _specialistReferralNeededFlag = specialistReferralNeededFlag;
    _other = other;
    _completed = completed;
    _reviewStatus = reviewStatus;
    _reviewedBy = reviewedBy;
    _reviewedOn = reviewedOn;
    _comments = comments;
    _endTime = endTime;
  }

  StationGgetModel.fromJson(dynamic json) {
    _id = json['id'];
    _stationID = json['StationID'];
    _hcid = json['HCID'];
    _hcpid = json['HCPID'];
    _infoseekId = json['InfoseekId'];
    _entryTime = json['EntryTime'];
    _centralNervousSystemAlert = json['Central_Nervous_System_Alert'];
    _cNSOriented = json['CNS_Oriented'];
    _cNSListens = json['CNS_Listens'];
    _cNSUnderstands = json['CNS_Understands'];
    _cNSResponds = json['CNS_Responds'];
    _cNSSpeech = json['CNS_Speech'];
    _cNSSpeechAbnormal = json['CNS_Speech_Abnormal'];
    _cNSSpeechAbnormalOther = json['CNS_Speech_Abnormal_Other'];
    _cNSHistoryOfHeadache = json['CNS_History_of_Headache'];
    _cNSHistoryOfHeadacheYesFrequency =
        json['CNS_History_of_Headache_yes_Frequency'];
    _cNSHistoryOfHeadacheYesFrequencyContinuous =
        json['CNS_History_of_Headache_yes_Frequency_Continuous'];
    _cNSHistoryOfHeadacheYesAssociatedWith =
        json['CNS_History_of_Headache_yes_Associated_With'];
    _cNSHistoryOfHeadacheYesAssociatedWithOccurrence =
        json['CNS_History_of_Headache_yes_Associated_With_Occurrence'];
    _cNSHistoryOfHeadacheYesAssociatedWithOther =
        json['CNS_History_of_Headache_yes_Associated_With_Other'];
    _cNSHistoryOfHeadacheYesFrom = json['CNS_History_of_Headache_yes_From'];
    _cNSHistoryOfHeadacheYesDuration =
        json['CNS_History_of_Headache_yes_Duration'];
    _cNSHistoryOfDizziness = json['CNS_History_of_Dizziness'];
    _cNSHistoryOfDizzinessYesFrequency =
        json['CNS_History_of_Dizziness_yes_Frequency'];
    _cNSHistoryOfDizzinessYesFrequencyContinuous =
        json['CNS_History_of_Dizziness_yes_Frequency_Continuous'];
    _cNSHistoryOfDizzinessYesAssociatedWith =
        json['CNS_History_of_Dizziness_yes_Associated_With'];
    _cNSHistoryOfDizzinessYesAssociatedWithOccurrence =
        json['CNS_History_of_Dizziness_yes_Associated_With_Occurrence'];
    _cNSHistoryOfDizzinessYesAssociatedWithOther =
        json['CNS_History_of_Dizziness_yes_Associated_With_Other'];
    _respiratorySystemDoYouFeelBreathless =
        json['Respiratory_System_Do_you_Feel_Breathless'];
    _rSDoYouHaveACough = json['RS_Do_you_have_a_Cough'];
    _rSShapeOfChest = json['RS_Shape_of_Chest'];
    _rSShapeOfChestAbnormal = json['RS_Shape_of_Chest_Abnormal'];
    _rSShapeOfChestAbnormalOther = json['RS_Shape_of_Chest_Abnormal_Other'];
    _rSTypeOfRespiration = json['RS_Type_of_Respiration'];
    _rSTypeOfRespirationAbdominal = json['RS_Type_of_Respiration_Abdominal'];
    _rSTypeOfRespirationAbdominalOther =
        json['RS_Type_of_Respiration_Abdominal_Other'];
    _rSTypeOfRespirationThoracic = json['RS_Type_of_Respiration_Thoracic'];
    _rSTypeOfRespirationThoracicOther =
        json['RS_Type_of_Respiration_Thoracic_Other'];
    _rSTypeOfRespirationAbdominoThoracic =
        json['RS_Type_of_Respiration_Abdomino_Thoracic'];
    _rSTypeOfRespirationAbdominoThoracicOther =
        json['RS_Type_of_Respiration_Abdomino_Thoracic_Other'];
    _rSTrachea = json['RS_Trachea'];
    _rSEvidenceOfTracheostomy = json['RS_Evidence_of_Tracheostomy'];
    _rightLungAirEntryNormal = json['Right_Lung_Air_Entry_Normal'];
    _rLBreathSounds = json['RL_Breath_Sounds'];
    _rLBreathSoundsAbnormal = json['RL_Breath_Sounds_Abnormal'];
    _rLBreathSoundsAbnormalApical = json['RL_Breath_Sounds_Abnormal_Apical'];
    _rLBreathSoundsAbnormalMidZone = json['RL_Breath_Sounds_Abnormal_Mid_Zone'];
    _rLBreathSoundsAbnormalBasal = json['RL_Breath_Sounds_Abnormal_Basal'];
    _rLBreathSoundsAbnormalSubScapular =
        json['RL_Breath_Sounds_Abnormal_Sub_Scapular'];
    _rLBreathSoundsAbnormalDiffuse = json['RL_Breath_Sounds_Abnormal_Diffuse'];
    _rLRalesCrepts = json['RL_Rales_Crepts'];
    _rLRalesCreptsPresent = json['RL_Rales_Crepts_Present'];
    _rLRalesCreptsPresentApical = json['RL_Rales_Crepts_Present_Apical'];
    _rLRalesCreptsPresentApicalFine =
        json['RL_Rales_Crepts_Present_Apical_Fine'];
    _rLRalesCreptsPresentApicalCoarse =
        json['RL_Rales_Crepts_Present_Apical_Coarse'];
    _rLRalesCreptsPresentMidZone = json['RL_Rales_Crepts_Present_Mid_Zone'];
    _rLRalesCreptsPresentMidZoneFine =
        json['RL_Rales_Crepts_Present_Mid_Zone_Fine'];
    _rLRalesCreptsPresentMidZoneCoarse =
        json['RL_Rales_Crepts_Present_Mid_Zone_Coarse'];
    _rLRalesCreptsPresentBasal = json['RL_Rales_Crepts_Present_Basal'];
    _rLRalesCreptsPresentBasalFine = json['RL_Rales_Crepts_Present_Basal_Fine'];
    _rLRalesCreptsPresentBasalCoarse =
        json['RL_Rales_Crepts_Present_Basal_Coarse'];
    _rLRalesCreptsPresentSubScapular =
        json['RL_Rales_Crepts_Present_Sub_Scapular'];
    _rLRalesCreptsPresentSubScapularFine =
        json['RL_Rales_Crepts_Present_Sub_Scapular_Fine'];
    _rLRalesCreptsPresentSubScapularCoarse =
        json['RL_Rales_Crepts_Present_Sub_Scapular_Coarse'];
    _rLRalesCreptsPresentDiffuse = json['RL_Rales_Crepts_Present_Diffuse'];
    _rLRalesCreptsPresentDiffuseFine =
        json['RL_Rales_Crepts_Present_Diffuse_Fine'];
    _rLRalesCreptsPresentDiffuseCoarse =
        json['RL_Rales_Crepts_Present_Diffuse_Coarse'];
    _rLRhonchiWheezing = json['RL_Rhonchi_Wheezing'];
    _rLRhonchiWheezingPresent = json['RL_Rhonchi_Wheezing_Present'];
    _rLAddedSounds = json['RL_Added_Sounds'];
    _rLAddedZoneOfConcern = json['RL_Added_Zone_of_Concern'];
    _rLAddedZoneOfConcernAbnormal = json['RL_Added_Zone_of_Concern_Abnormal'];
    _rLAddedSoundsPresent = json['RL_Added_Sounds_Present'];
    _leftLungAirEntryNormal = json['Left_Lung_Air_Entry_Normal'];
    _lLBreathSounds = json['LL_Breath_Sounds'];
    _lLBreathSoundsAbnormal = json['LL_Breath_Sounds_Abnormal'];
    _lLBreathSoundsAbnormalApical = json['LL_Breath_Sounds_Abnormal_Apical'];
    _lLBreathSoundsAbnormalMidZone = json['LL_Breath_Sounds_Abnormal_Mid_Zone'];
    _lLBreathSoundsAbnormalBasal = json['LL_Breath_Sounds_Abnormal_Basal'];
    _lLBreathSoundsAbnormalSubScapular =
        json['LL_Breath_Sounds_Abnormal_Sub_Scapular'];
    _lLBreathSoundsAbnormalDiffuse = json['LL_Breath_Sounds_Abnormal_Diffuse'];
    _lLRalesCrepts = json['LL_Rales_Crepts'];
    _lLRalesCreptsPresent = json['LL_Rales_Crepts_Present'];
    _lLRalesCreptsPresentApical = json['LL_Rales_Crepts_Present_Apical'];
    _lLRalesCreptsPresentApicalFine =
        json['LL_Rales_Crepts_Present_Apical_Fine'];
    _lLRalesCreptsPresentApicalCoarse =
        json['LL_Rales_Crepts_Present_Apical_Coarse'];
    _lLRalesCreptsPresentMidZone = json['LL_Rales_Crepts_Present_Mid_Zone'];
    _lLRalesCreptsPresentMidZoneFine =
        json['LL_Rales_Crepts_Present_Mid_Zone_Fine'];
    _lLRalesCreptsPresentMidZoneCoarse =
        json['LL_Rales_Crepts_Present_Mid_Zone_Coarse'];
    _lLRalesCreptsPresentBasal = json['LL_Rales_Crepts_Present_Basal'];
    _lLRalesCreptsPresentBasalFine = json['LL_Rales_Crepts_Present_Basal_Fine'];
    _lLRalesCreptsPresentBasalCoarse =
        json['LL_Rales_Crepts_Present_Basal_Coarse'];
    _lLRalesCreptsPresentSubScapular =
        json['LL_Rales_Crepts_Present_Sub_Scapular'];
    _lLRalesCreptsPresentSubScapularFine =
        json['LL_Rales_Crepts_Present_Sub_Scapular_Fine'];
    _lLRalesCreptsPresentSubScapularCoarse =
        json['LL_Rales_Crepts_Present_Sub_Scapular_Coarse'];
    _lLRalesCreptsPresentDiffuse = json['LL_Rales_Crepts_Present_Diffuse'];
    _lLRalesCreptsPresentDiffuseFine =
        json['LL_Rales_Crepts_Present_Diffuse_Fine'];
    _lLRalesCreptsPresentDiffuseCoarse =
        json['LL_Rales_Crepts_Present_Diffuse_Coarse'];
    _lLRhonchiWheezing = json['LL_Rhonchi_Wheezing'];
    _lLRhonchiWheezingPresent = json['LL_Rhonchi_Wheezing_Present'];
    _lLAddedSounds = json['LL_Added_Sounds'];
    _lLAddedZoneOfConcern = json['LL_Added_Zone_of_Concern'];
    _lLAddedZoneOfConcernAbnormal = json['LL_Added_Zone_of_Concern_Abnormal'];
    _lLAddedSoundsPresent = json['LL_Added_Sounds_Present'];
    _cardioVascularSystemsDoYouGetPalpitation =
        json['Cardio_Vascular_Systems_Do_you_get_Palpitation'];
    _cVSFaintedInHomeSchoolWorkplaceAtAnyTime =
        json['CVS_Fainted_in_Home_School_Workplace_at_any_time'];
    _cVSJugularPulsations = json['CVS_Jugular_Pulsations'];
    _cVSJugularPulsationsVisible = json['CVS_Jugular_Pulsations_Visible'];
    _cVSJugularPulsationsVisibleAbnormal =
        json['CVS_Jugular_Pulsations_Visible_Abnormal'];
    _cVSSuprasternalPulsations = json['CVS_Suprasternal_Pulsations'];
    _cVSSuprasternalPulsationsPresent =
        json['CVS_Suprasternal_Pulsations_Present'];
    _cVSPeripheralPulsationsRadial = json['CVS_Peripheral_Pulsations_Radial'];
    _cVSPeripheralPulsationsRadialPresent =
        json['CVS_Peripheral_Pulsations_Radial_Present'];
    _cVSPeripheralPulsationsRadialPresentAbnormal =
        json['CVS_Peripheral_Pulsations_Radial_Present_Abnormal'];
    _cVSPeripheralPulsationsDorsalisPedis =
        json['CVS_Peripheral_Pulsations_Dorsalis_Pedis'];
    _cVSPeripheralPulsationsDorsalisPedisPresent =
        json['CVS_Peripheral_Pulsations_Dorsalis_Pedis_Present'];
    _cVSPeripheralPulsationsDorsalisPedisAbnormal =
        json['CVS_Peripheral_Pulsations_Dorsalis_Pedis_Abnormal'];
    _cVSPeripheralPulsationsOtherAbnormality =
        json['CVS_Peripheral_Pulsations_Other_abnormality'];
    _cvss1 = json['CVS_S1'];
    _cvss2 = json['CVS_S2'];
    _cvss3 = json['CVS_S3'];
    _cVSMurmur = json['CVS_Murmur'];
    _cVSMurmurPresent = json['CVS_Murmur_Present'];
    _cVSMurmurPresentOther = json['CVS_Murmur_Present_Other'];
    _cVSClick = json['CVS_Click'];
    _cVSClickPresentPosition = json['CVS_Click_Present_Position'];
    _cVSApexBeat = json['CVS_Apex_Beat'];
    _cVSApexBeatPresentDisplaced = json['CVS_Apex_Beat_Present_Displaced'];
    _alimentaryAndUrinarySystemDoYouHaveNauseaVomiting =
        json['Alimentary_and_Urinary_System_Do_you_have_Nausea_Vomiting'];
    _aUSDoYouHavePainInYourAbdomen =
        json['AUS_Do_you_have_Pain_in_your_Abdomen'];
    _aUSDoYouFeelBurningWhenYouPassUrine =
        json['AUS_Do_you_feel_Burning_when_you_pass_Urine'];
    _aUSCleftLip = json['AUS_Cleft_Lip'];
    _aUSCleftLipPresent = json['AUS_Cleft_Lip_Present'];
    _aUSCleftPalate = json['AUS_Cleft_Palate'];
    _aUSCleftPalatePresent = json['AUS_Cleft_Palate_Present'];
    _aUSAbdominalDistension = json['AUS_Abdominal_Distension'];
    _aUSExaggerateBowelSounds = json['AUS_Exaggerate_Bowel_Sounds'];
    _aUSGuarding = json['AUS_Guarding'];
    _aUSRigidity = json['AUS_Rigidity'];
    _aUSRightHypochondriumPain = json['AUS_Right_Hypochondrium_Pain'];
    _aUSRHPainYesPainScore = json['AUS_RH_Pain_Yes_Pain_Score'];
    _aUSRHTenderness = json['AUS_RH_Tenderness'];
    _aUSRHTendernessPresent = json['AUS_RH_Tenderness_Present'];
    _aUSRHSwellingLumps = json['AUS_RH_Swelling_Lumps'];
    _aUSRHSwellingLumpsPresentDescription =
        json['AUS_RH_Swelling_Lumps_Present_Description'];
    _aUSRHSwellingLumpsPresentSize = json['AUS_RH_Swelling_Lumps_Present_Size'];
    _aUSRHSwellingLumpsPresentTexture =
        json['AUS_RH_Swelling_Lumps_Present_Texture'];
    _aUSRHLiver = json['AUS_RH_Liver'];
    _aUSRHLiverPalpable = json['AUS_RH_Liver_Palpable'];
    _aUSRHGallBladder = json['AUS_RH_Gall_Bladder'];
    _aUSRHGallBladderTender = json['AUS_RH_Gall_Bladder_Tender'];
    _aUSRightLumbarPain = json['AUS_Right_Lumbar_Pain'];
    _aUSRLPainYesPainScore = json['AUS_RL_Pain_Yes_Pain_Score'];
    _aUSRLTenderness = json['AUS_RL_Tenderness'];
    _aUSRLTendernessPresent = json['AUS_RL_Tenderness_Present'];
    _aUSRLSwellingLumps = json['AUS_RL_Swelling_Lumps'];
    _aUSRLSwellingLumpsPresentDescription =
        json['AUS_RL_Swelling_Lumps_Present_Description'];
    _aUSRLSwellingLumpsPresentSize = json['AUS_RL_Swelling_Lumps_Present_Size'];
    _aUSRLSwellingLumpsPresentTexture =
        json['AUS_RL_Swelling_Lumps_Present_Texture'];
    _aUSRLRightKidney = json['AUS_RL_Right_Kidney'];
    _aUSRLRightKidneyPalpable = json['AUS_RL_Right_Kidney_Palpable'];
    _aUSRightIliacPain = json['AUS_Right_Iliac_Pain'];
    _aUSRIPainYesPainScore = json['AUS_RI_Pain_Yes_Pain_Score'];
    _ausrimbp = json['AUS_RI_MBP'];
    _aUSRIMBPPainScore = json['AUS_RI_MBP_Pain_Score'];
    _aUSRITenderness = json['AUS_RI_Tenderness'];
    _aUSRITendernessPresent = json['AUS_RI_Tenderness_Present'];
    _aUSRISwellingLumps = json['AUS_RI_Swelling_Lumps'];
    _aUSRISwellingLumpsPresentDescription =
        json['AUS_RI_Swelling_Lumps_Present_Description'];
    _aUSRISwellingLumpsPresentSize = json['AUS_RI_Swelling_Lumps_Present_Size'];
    _aUSRISwellingLumpsPresentTexture =
        json['AUS_RI_Swelling_Lumps_Present_Texture'];
    _aUSEpigastricPain = json['AUS_Epigastric_Pain'];
    _aUSEPainYesPainScore = json['AUS_E_Pain_Yes_Pain_Score'];
    _aUSETenderness = json['AUS_E_Tenderness'];
    _aUSETendernessPresent = json['AUS_E_Tenderness_Present'];
    _aUSETendernessPresentRebound = json['AUS_E_Tenderness_Present_Rebound'];
    _aUSESwellingLumps = json['AUS_E_Swelling_Lumps'];
    _aUSESwellingLumpsPresentDescription =
        json['AUS_E_Swelling_Lumps_Present_Description'];
    _aUSESwellingLumpsPresentSize = json['AUS_E_Swelling_Lumps_Present_Size'];
    _aUSESwellingLumpsPresentTexture =
        json['AUS_E_Swelling_Lumps_Present_Texture'];
    _aUSUmbilicalPain = json['AUS_Umbilical_Pain'];
    _aUSUPainYesPainScore = json['AUS_U_Pain_Yes_Pain_Score'];
    _aUSUTenderness = json['AUS_U_Tenderness'];
    _aUSUTendernessPresent = json['AUS_U_Tenderness_Present'];
    _aUSUTendernessPresentRebound = json['AUS_U_Tenderness_Present_Rebound'];
    _aUSUSwellingLumps = json['AUS_U_Swelling_Lumps'];
    _aUSUSwellingLumpsPresentDescription =
        json['AUS_U_Swelling_Lumps_Present_Description'];
    _aUSUSwellingLumpsPresentSize = json['AUS_U_Swelling_Lumps_Present_Size'];
    _aUSUSwellingLumpsPresentTexture =
        json['AUS_U_Swelling_Lumps_Present_Texture'];
    _aUSSuprapubicPain = json['AUS_Suprapubic_Pain'];
    _aUSSPainYesPainScore = json['AUS_S_Pain_Yes_Pain_Score'];
    _aUSSTenderness = json['AUS_S_Tenderness'];
    _aUSSTendernessPresent = json['AUS_S_Tenderness_Present'];
    _aUSSTendernessPresentRebound = json['AUS_S_Tenderness_Present_Rebound'];
    _aUSSSwellingLumps = json['AUS_S_Swelling_Lumps'];
    _aUSSSwellingLumpsPresentDescription =
        json['AUS_S_Swelling_Lumps_Present_Description'];
    _aUSSSwellingLumpsPresentSize = json['AUS_S_Swelling_Lumps_Present_Size'];
    _aUSSSwellingLumpsPresentTexture =
        json['AUS_S_Swelling_Lumps_Present_Texture'];
    _aUSSUterus = json['AUS_S_Uterus'];
    _aUSSUterusPalpable = json['AUS_S_Uterus_Palpable'];
    _aUSLeftHypochondriumPain = json['AUS_Left_Hypochondrium_Pain'];
    _aUSLHPainYesPainScore = json['AUS_LH_Pain_Yes_Pain_Score'];
    _aUSLHTenderness = json['AUS_LH_Tenderness'];
    _aUSLHTendernessPresent = json['AUS_LH_Tenderness_Present'];
    _aUSLHSwellingLumps = json['AUS_LH_Swelling_Lumps'];
    _aUSLHSwellingLumpsPresentDescription =
        json['AUS_LH_Swelling_Lumps_Present_Description'];
    _aUSLHSwellingLumpsPresentSize = json['AUS_LH_Swelling_Lumps_Present_Size'];
    _aUSLHSwellingLumpsPresentTexture =
        json['AUS_LH_Swelling_Lumps_Present_Texture'];
    _aUSLHSpleen = json['AUS_LH_Spleen'];
    _aUSLHSpleenPalpable = json['AUS_LH_Spleen_Palpable'];
    _aUSLeftLumbarPain = json['AUS_Left_Lumbar_Pain'];
    _aUSLLPainYesPainScore = json['AUS_LL_Pain_Yes_Pain_Score'];
    _aUSLLTenderness = json['AUS_LL_Tenderness'];
    _aUSLLTendernessPresent = json['AUS_LL_Tenderness_Present'];
    _aUSLLSwellingLumps = json['AUS_LL_Swelling_Lumps'];
    _aUSLLSwellingLumpsPresentDescription =
        json['AUS_LL_Swelling_Lumps_Present_Description'];
    _aUSLLSwellingLumpsPresentSize = json['AUS_LL_Swelling_Lumps_Present_Size'];
    _aUSLLSwellingLumpsPresentTexture =
        json['AUS_LL_Swelling_Lumps_Present_Texture'];
    _aUSLLLeftKidney = json['AUS_LL_Left_Kidney'];
    _aUSLLLeftKidneyPalpable = json['AUS_LL_Left_Kidney_Palpable'];
    _aUSLeftIliacPain = json['AUS_Left_Iliac_Pain'];
    _aUSLIPainYesPainScore = json['AUS_LI_Pain_Yes_Pain_Score'];
    _aUSLITenderness = json['AUS_LI_Tenderness'];
    _aUSLITendernessPresent = json['AUS_LI_Tenderness_Present'];
    _aUSLISwellingLumps = json['AUS_LI_Swelling_Lumps'];
    _aUSLISwellingLumpsPresentDescription =
        json['AUS_LI_Swelling_Lumps_Present_Description'];
    _aUSLISwellingLumpsPresentSize = json['AUS_LI_Swelling_Lumps_Present_Size'];
    _aUSLISwellingLumpsPresentTexture =
        json['AUS_LI_Swelling_Lumps_Present_Texture'];
    _aUSHernia = json['AUS_Hernia'];
    _aUSHerniaPresent = json['AUS_Hernia_Present'];
    _aUSUrinaryBladder = json['AUS_Urinary_Bladder'];
    _aUSUrinaryBladderPalpable = json['AUS_Urinary_Bladder_Palpable'];
    _pubertalAssessmentGirls = json['Pubertal_Assessment_Girls'];
    _pAGTannerScore = json['PAG_Tanner_Score'];
    _pAGMenarcheAttained = json['PAG_Menarche_Attained'];
    _pAGMAYesAgeOfMenarche = json['PAG_MA_Yes_Age_of_Menarche'];
    _pAGMAYesLMPDate = json['PAG_MA_Yes_LMP_Date'];
    _pAGMAYesCharacterRegularity = json['PAG_MA_Yes_Character_Regularity'];
    _pAGMAYesCharacterFrequencyInDays =
        json['PAG_MA_Yes_Character_Frequency_in_Days'];
    _pAGMAYesDurationInDays = json['PAG_MA_Yes_Duration_in_days'];
    _pAGMAYesFlow = json['PAG_MA_Yes_Flow'];
    _pAGMAYesComfort = json['PAG_MA_Yes_Comfort'];
    _pAGMAYesPainInOtherPartsOfBodyDuringMenses =
        json['PAG_MA_Yes_Pain_in_other_parts_of_body_during_menses'];
    _pAGMAYesPainInOtherPartsOfBodyDuringMensesYes =
        json['PAG_MA_Yes_Pain_in_other_parts_of_body_during_menses_Yes'];
    _pAGMAYesPainInOtherPartsBodyDuringMensesYesOther =
        json['PAG_MA_Yes_Pain_in_other_parts_body_during_menses_Yes_Other'];
    _pAGYesCrackingOfVoiceOrChnageInVoice =
        json['PAG_Yes_Cracking_of_Voice_or_chnage_in_voice'];
    _pAGHaveYouExperiencedAChangeInBehaviourRecently =
        json['PAG_HaveYouExperienced_A_change_in_behaviour_recently'];
    _pAGChangeBehaviourYes = json['PAG_Change_behaviour_Yes'];
    _pAGChangeBehaviourYesQuietWithdrawn =
        json['PAG_Change_behaviour_Yes_Quiet_Withdrawn'];
    _pAGChangeBehaviourOutgoing = json['PAG_Change_behaviour_Outgoing'];
    _pAGChangeBehaviourAggressive = json['PAG_Change_behaviour_Aggressive'];
    _pAGChangeBehaviourBoldAndDaring =
        json['PAG_Change_behaviour_Bold_and_Daring'];
    _pAGChangeBehaviourCareless = json['PAG_Change_behaviour_Careless'];
    _pAGPreferCompanyOf = json['PAG_Prefer_company_of'];
    _pAGAnyOtherAbnormalFinding = json['PAG_Any_other_abnormal_finding'];
    _pAGAnyOtherAbnormalFindingYes = json['PAG_Any_other_abnormal_finding_Yes'];
    _pubertalAssessmentBoys = json['Pubertal_Assessment_Boys'];
    _pABTannerScore = json['PAB_Tanner_Score'];
    _pABYesCrackingOfVoiceOrChnageInVoice =
        json['PAB_Yes_Cracking_of_Voice_or_chnage_in_voice'];
    _pABNightlyEmissions = json['PAB_Nightly_Emissions'];
    _pABHaveYouExperiencedAChangeInBehaviourRecently =
        json['PAB_HaveYouExperienced_A_change_in_behaviour_recently'];
    _pABChangeBehaviourYes = json['PAB_Change_behaviour_Yes'];
    _pABChangeBehaviourYesQuietWithdrawn =
        json['PAB_Change_behaviour_Yes_Quiet_Withdrawn'];
    _pABChangeBehaviourOutgoing = json['PAB_Change_behaviour_Outgoing'];
    _pABChangeBehaviourAggressive = json['PAB_Change_behaviour_Aggressive'];
    _pABChangeBehaviourBoldAndDaring =
        json['PAB_Change_behaviour_Bold_and_Daring'];
    _pABChangeBehaviourCareless = json['PAB_Change_behaviour_Careless'];
    _pABPreferCompanyOf = json['PAB_Prefer_company_of'];
    _pABAnyOtherAbnormalFinding = json['PAB_Any_other_abnormal_finding'];
    _pABAnyOtherAbnormalFindingYes = json['PAB_Any_other_abnormal_finding_Yes'];
    _historyOfMedication = json['History_of_Medication'];
    _historyOfMedicationYes = json['History_of_Medication_Yes'];
    _nameOfMedication = json['Name_of_Medication'];
    _milestones = json['Milestones'];
    _otherObservations = json['Other_Observations'];
    _specialistReferralNeeded = json['Specialist_Referral_Needed'];
    _specialistReferralNeededType = json['Specialist_Referral_Needed_Type'];
    _specialistReferralNeededFlag = json['Specialist_Referral_Needed_Flag'];
    _other = json['Other'];
    _completed = json['Completed'];
    _reviewStatus = json['Review_Status'];
    _reviewedBy = json['Reviewed_By'];
    _reviewedOn = json['Reviewed_On'];
    _comments = json['Comments'];
    _endTime = json['EndTime'];
  }
  num? _id;
  num? _stationID;
  num? _hcid;
  num? _hcpid;
  num? _infoseekId;
  String? _entryTime;
  String? _centralNervousSystemAlert;
  String? _cNSOriented;
  String? _cNSListens;
  String? _cNSUnderstands;
  String? _cNSResponds;
  String? _cNSSpeech;
  dynamic _cNSSpeechAbnormal;
  dynamic _cNSSpeechAbnormalOther;
  String? _cNSHistoryOfHeadache;
  dynamic _cNSHistoryOfHeadacheYesFrequency;
  dynamic _cNSHistoryOfHeadacheYesFrequencyContinuous;
  dynamic _cNSHistoryOfHeadacheYesAssociatedWith;
  dynamic _cNSHistoryOfHeadacheYesAssociatedWithOccurrence;
  dynamic _cNSHistoryOfHeadacheYesAssociatedWithOther;
  dynamic _cNSHistoryOfHeadacheYesFrom;
  dynamic _cNSHistoryOfHeadacheYesDuration;
  String? _cNSHistoryOfDizziness;
  dynamic _cNSHistoryOfDizzinessYesFrequency;
  dynamic _cNSHistoryOfDizzinessYesFrequencyContinuous;
  dynamic _cNSHistoryOfDizzinessYesAssociatedWith;
  dynamic _cNSHistoryOfDizzinessYesAssociatedWithOccurrence;
  dynamic _cNSHistoryOfDizzinessYesAssociatedWithOther;
  String? _respiratorySystemDoYouFeelBreathless;
  String? _rSDoYouHaveACough;
  String? _rSShapeOfChest;
  dynamic _rSShapeOfChestAbnormal;
  dynamic _rSShapeOfChestAbnormalOther;
  String? _rSTypeOfRespiration;
  String? _rSTypeOfRespirationAbdominal;
  String? _rSTypeOfRespirationAbdominalOther;
  String? _rSTypeOfRespirationThoracic;
  String? _rSTypeOfRespirationThoracicOther;
  String? _rSTypeOfRespirationAbdominoThoracic;
  String? _rSTypeOfRespirationAbdominoThoracicOther;
  String? _rSTrachea;
  String? _rSEvidenceOfTracheostomy;
  String? _rightLungAirEntryNormal;
  String? _rLBreathSounds;
  dynamic _rLBreathSoundsAbnormal;
  dynamic _rLBreathSoundsAbnormalApical;
  dynamic _rLBreathSoundsAbnormalMidZone;
  dynamic _rLBreathSoundsAbnormalBasal;
  dynamic _rLBreathSoundsAbnormalSubScapular;
  dynamic _rLBreathSoundsAbnormalDiffuse;
  String? _rLRalesCrepts;
  String? _rLRalesCreptsPresent;
  String? _rLRalesCreptsPresentApical;
  String? _rLRalesCreptsPresentApicalFine;
  dynamic _rLRalesCreptsPresentApicalCoarse;
  dynamic _rLRalesCreptsPresentMidZone;
  dynamic _rLRalesCreptsPresentMidZoneFine;
  dynamic _rLRalesCreptsPresentMidZoneCoarse;
  dynamic _rLRalesCreptsPresentBasal;
  dynamic _rLRalesCreptsPresentBasalFine;
  dynamic _rLRalesCreptsPresentBasalCoarse;
  dynamic _rLRalesCreptsPresentSubScapular;
  dynamic _rLRalesCreptsPresentSubScapularFine;
  dynamic _rLRalesCreptsPresentSubScapularCoarse;
  dynamic _rLRalesCreptsPresentDiffuse;
  dynamic _rLRalesCreptsPresentDiffuseFine;
  dynamic _rLRalesCreptsPresentDiffuseCoarse;
  String? _rLRhonchiWheezing;
  dynamic _rLRhonchiWheezingPresent;
  String? _rLAddedSounds;
  String? _rLAddedZoneOfConcern;
  dynamic _rLAddedZoneOfConcernAbnormal;
  dynamic _rLAddedSoundsPresent;
  String? _leftLungAirEntryNormal;
  String? _lLBreathSounds;
  dynamic _lLBreathSoundsAbnormal;
  dynamic _lLBreathSoundsAbnormalApical;
  dynamic _lLBreathSoundsAbnormalMidZone;
  dynamic _lLBreathSoundsAbnormalBasal;
  dynamic _lLBreathSoundsAbnormalSubScapular;
  dynamic _lLBreathSoundsAbnormalDiffuse;
  String? _lLRalesCrepts;
  dynamic _lLRalesCreptsPresent;
  dynamic _lLRalesCreptsPresentApical;
  dynamic _lLRalesCreptsPresentApicalFine;
  dynamic _lLRalesCreptsPresentApicalCoarse;
  dynamic _lLRalesCreptsPresentMidZone;
  dynamic _lLRalesCreptsPresentMidZoneFine;
  dynamic _lLRalesCreptsPresentMidZoneCoarse;
  dynamic _lLRalesCreptsPresentBasal;
  dynamic _lLRalesCreptsPresentBasalFine;
  dynamic _lLRalesCreptsPresentBasalCoarse;
  dynamic _lLRalesCreptsPresentSubScapular;
  dynamic _lLRalesCreptsPresentSubScapularFine;
  dynamic _lLRalesCreptsPresentSubScapularCoarse;
  dynamic _lLRalesCreptsPresentDiffuse;
  dynamic _lLRalesCreptsPresentDiffuseFine;
  dynamic _lLRalesCreptsPresentDiffuseCoarse;
  String? _lLRhonchiWheezing;
  dynamic _lLRhonchiWheezingPresent;
  String? _lLAddedSounds;
  String? _lLAddedZoneOfConcern;
  dynamic _lLAddedZoneOfConcernAbnormal;
  dynamic _lLAddedSoundsPresent;
  String? _cardioVascularSystemsDoYouGetPalpitation;
  String? _cVSFaintedInHomeSchoolWorkplaceAtAnyTime;
  String? _cVSJugularPulsations;
  String? _cVSJugularPulsationsVisible;
  dynamic _cVSJugularPulsationsVisibleAbnormal;
  String? _cVSSuprasternalPulsations;
  dynamic _cVSSuprasternalPulsationsPresent;
  String? _cVSPeripheralPulsationsRadial;
  String? _cVSPeripheralPulsationsRadialPresent;
  dynamic _cVSPeripheralPulsationsRadialPresentAbnormal;
  String? _cVSPeripheralPulsationsDorsalisPedis;
  String? _cVSPeripheralPulsationsDorsalisPedisPresent;
  dynamic _cVSPeripheralPulsationsDorsalisPedisAbnormal;
  String? _cVSPeripheralPulsationsOtherAbnormality;
  String? _cvss1;
  String? _cvss2;
  String? _cvss3;
  String? _cVSMurmur;
  dynamic _cVSMurmurPresent;
  dynamic _cVSMurmurPresentOther;
  String? _cVSClick;
  dynamic _cVSClickPresentPosition;
  String? _cVSApexBeat;
  dynamic _cVSApexBeatPresentDisplaced;
  String? _alimentaryAndUrinarySystemDoYouHaveNauseaVomiting;
  String? _aUSDoYouHavePainInYourAbdomen;
  String? _aUSDoYouFeelBurningWhenYouPassUrine;
  String? _aUSCleftLip;
  dynamic _aUSCleftLipPresent;
  String? _aUSCleftPalate;
  dynamic _aUSCleftPalatePresent;
  String? _aUSAbdominalDistension;
  String? _aUSExaggerateBowelSounds;
  String? _aUSGuarding;
  String? _aUSRigidity;
  String? _aUSRightHypochondriumPain;
  dynamic _aUSRHPainYesPainScore;
  String? _aUSRHTenderness;
  dynamic _aUSRHTendernessPresent;
  String? _aUSRHSwellingLumps;
  dynamic _aUSRHSwellingLumpsPresentDescription;
  dynamic _aUSRHSwellingLumpsPresentSize;
  dynamic _aUSRHSwellingLumpsPresentTexture;
  String? _aUSRHLiver;
  dynamic _aUSRHLiverPalpable;
  String? _aUSRHGallBladder;
  dynamic _aUSRHGallBladderTender;
  String? _aUSRightLumbarPain;
  dynamic _aUSRLPainYesPainScore;
  String? _aUSRLTenderness;
  dynamic _aUSRLTendernessPresent;
  String? _aUSRLSwellingLumps;
  dynamic _aUSRLSwellingLumpsPresentDescription;
  dynamic _aUSRLSwellingLumpsPresentSize;
  dynamic _aUSRLSwellingLumpsPresentTexture;
  String? _aUSRLRightKidney;
  dynamic _aUSRLRightKidneyPalpable;
  String? _aUSRightIliacPain;
  dynamic _aUSRIPainYesPainScore;
  String? _ausrimbp;
  dynamic _aUSRIMBPPainScore;
  String? _aUSRITenderness;
  dynamic _aUSRITendernessPresent;
  String? _aUSRISwellingLumps;
  dynamic _aUSRISwellingLumpsPresentDescription;
  dynamic _aUSRISwellingLumpsPresentSize;
  dynamic _aUSRISwellingLumpsPresentTexture;
  String? _aUSEpigastricPain;
  dynamic _aUSEPainYesPainScore;
  String? _aUSETenderness;
  dynamic _aUSETendernessPresent;
  dynamic _aUSETendernessPresentRebound;
  String? _aUSESwellingLumps;
  dynamic _aUSESwellingLumpsPresentDescription;
  dynamic _aUSESwellingLumpsPresentSize;
  dynamic _aUSESwellingLumpsPresentTexture;
  String? _aUSUmbilicalPain;
  dynamic _aUSUPainYesPainScore;
  String? _aUSUTenderness;
  dynamic _aUSUTendernessPresent;
  dynamic _aUSUTendernessPresentRebound;
  String? _aUSUSwellingLumps;
  dynamic _aUSUSwellingLumpsPresentDescription;
  dynamic _aUSUSwellingLumpsPresentSize;
  dynamic _aUSUSwellingLumpsPresentTexture;
  String? _aUSSuprapubicPain;
  dynamic _aUSSPainYesPainScore;
  String? _aUSSTenderness;
  dynamic _aUSSTendernessPresent;
  dynamic _aUSSTendernessPresentRebound;
  String? _aUSSSwellingLumps;
  dynamic _aUSSSwellingLumpsPresentDescription;
  dynamic _aUSSSwellingLumpsPresentSize;
  dynamic _aUSSSwellingLumpsPresentTexture;
  String? _aUSSUterus;
  dynamic _aUSSUterusPalpable;
  String? _aUSLeftHypochondriumPain;
  dynamic _aUSLHPainYesPainScore;
  String? _aUSLHTenderness;
  dynamic _aUSLHTendernessPresent;
  String? _aUSLHSwellingLumps;
  dynamic _aUSLHSwellingLumpsPresentDescription;
  dynamic _aUSLHSwellingLumpsPresentSize;
  dynamic _aUSLHSwellingLumpsPresentTexture;
  String? _aUSLHSpleen;
  dynamic _aUSLHSpleenPalpable;
  String? _aUSLeftLumbarPain;
  dynamic _aUSLLPainYesPainScore;
  String? _aUSLLTenderness;
  dynamic _aUSLLTendernessPresent;
  String? _aUSLLSwellingLumps;
  dynamic _aUSLLSwellingLumpsPresentDescription;
  dynamic _aUSLLSwellingLumpsPresentSize;
  dynamic _aUSLLSwellingLumpsPresentTexture;
  String? _aUSLLLeftKidney;
  dynamic _aUSLLLeftKidneyPalpable;
  String? _aUSLeftIliacPain;
  dynamic _aUSLIPainYesPainScore;
  String? _aUSLITenderness;
  dynamic _aUSLITendernessPresent;
  String? _aUSLISwellingLumps;
  dynamic _aUSLISwellingLumpsPresentDescription;
  dynamic _aUSLISwellingLumpsPresentSize;
  dynamic _aUSLISwellingLumpsPresentTexture;
  String? _aUSHernia;
  dynamic _aUSHerniaPresent;
  String? _aUSUrinaryBladder;
  dynamic _aUSUrinaryBladderPalpable;
  dynamic _pubertalAssessmentGirls;
  dynamic _pAGTannerScore;
  dynamic _pAGMenarcheAttained;
  dynamic _pAGMAYesAgeOfMenarche;
  dynamic _pAGMAYesLMPDate;
  dynamic _pAGMAYesCharacterRegularity;
  dynamic _pAGMAYesCharacterFrequencyInDays;
  dynamic _pAGMAYesDurationInDays;
  dynamic _pAGMAYesFlow;
  dynamic _pAGMAYesComfort;
  dynamic _pAGMAYesPainInOtherPartsOfBodyDuringMenses;
  dynamic _pAGMAYesPainInOtherPartsOfBodyDuringMensesYes;
  dynamic _pAGMAYesPainInOtherPartsBodyDuringMensesYesOther;
  dynamic _pAGYesCrackingOfVoiceOrChnageInVoice;
  dynamic _pAGHaveYouExperiencedAChangeInBehaviourRecently;
  dynamic _pAGChangeBehaviourYes;
  dynamic _pAGChangeBehaviourYesQuietWithdrawn;
  dynamic _pAGChangeBehaviourOutgoing;
  dynamic _pAGChangeBehaviourAggressive;
  dynamic _pAGChangeBehaviourBoldAndDaring;
  dynamic _pAGChangeBehaviourCareless;
  dynamic _pAGPreferCompanyOf;
  dynamic _pAGAnyOtherAbnormalFinding;
  dynamic _pAGAnyOtherAbnormalFindingYes;
  String? _pubertalAssessmentBoys;
  dynamic _pABTannerScore;
  String? _pABYesCrackingOfVoiceOrChnageInVoice;
  String? _pABNightlyEmissions;
  String? _pABHaveYouExperiencedAChangeInBehaviourRecently;
  dynamic _pABChangeBehaviourYes;
  dynamic _pABChangeBehaviourYesQuietWithdrawn;
  dynamic _pABChangeBehaviourOutgoing;
  dynamic _pABChangeBehaviourAggressive;
  dynamic _pABChangeBehaviourBoldAndDaring;
  dynamic _pABChangeBehaviourCareless;
  String? _pABPreferCompanyOf;
  String? _pABAnyOtherAbnormalFinding;
  dynamic _pABAnyOtherAbnormalFindingYes;
  String? _historyOfMedication;
  dynamic _historyOfMedicationYes;
  dynamic _nameOfMedication;
  String? _milestones;
  String? _otherObservations;
  String? _specialistReferralNeeded;
  dynamic _specialistReferralNeededType;
  dynamic _specialistReferralNeededFlag;
  dynamic _other;
  String? _completed;
  String? _reviewStatus;
  dynamic _reviewedBy;
  String? _reviewedOn;
  dynamic _comments;
  String? _endTime;
  StationGgetModel copyWith({
    num? id,
    num? stationID,
    num? hcid,
    num? hcpid,
    num? infoseekId,
    String? entryTime,
    String? centralNervousSystemAlert,
    String? cNSOriented,
    String? cNSListens,
    String? cNSUnderstands,
    String? cNSResponds,
    String? cNSSpeech,
    dynamic cNSSpeechAbnormal,
    dynamic cNSSpeechAbnormalOther,
    String? cNSHistoryOfHeadache,
    dynamic cNSHistoryOfHeadacheYesFrequency,
    dynamic cNSHistoryOfHeadacheYesFrequencyContinuous,
    dynamic cNSHistoryOfHeadacheYesAssociatedWith,
    dynamic cNSHistoryOfHeadacheYesAssociatedWithOccurrence,
    dynamic cNSHistoryOfHeadacheYesAssociatedWithOther,
    dynamic cNSHistoryOfHeadacheYesFrom,
    dynamic cNSHistoryOfHeadacheYesDuration,
    String? cNSHistoryOfDizziness,
    dynamic cNSHistoryOfDizzinessYesFrequency,
    dynamic cNSHistoryOfDizzinessYesFrequencyContinuous,
    dynamic cNSHistoryOfDizzinessYesAssociatedWith,
    dynamic cNSHistoryOfDizzinessYesAssociatedWithOccurrence,
    dynamic cNSHistoryOfDizzinessYesAssociatedWithOther,
    String? respiratorySystemDoYouFeelBreathless,
    String? rSDoYouHaveACough,
    String? rSShapeOfChest,
    dynamic rSShapeOfChestAbnormal,
    dynamic rSShapeOfChestAbnormalOther,
    String? rSTypeOfRespiration,
    String? rSTypeOfRespirationAbdominal,
    String? rSTypeOfRespirationAbdominalOther,
    String? rSTypeOfRespirationThoracic,
    String? rSTypeOfRespirationThoracicOther,
    String? rSTypeOfRespirationAbdominoThoracic,
    String? rSTypeOfRespirationAbdominoThoracicOther,
    String? rSTrachea,
    String? rSEvidenceOfTracheostomy,
    String? rightLungAirEntryNormal,
    String? rLBreathSounds,
    dynamic rLBreathSoundsAbnormal,
    dynamic rLBreathSoundsAbnormalApical,
    dynamic rLBreathSoundsAbnormalMidZone,
    dynamic rLBreathSoundsAbnormalBasal,
    dynamic rLBreathSoundsAbnormalSubScapular,
    dynamic rLBreathSoundsAbnormalDiffuse,
    String? rLRalesCrepts,
    String? rLRalesCreptsPresent,
    String? rLRalesCreptsPresentApical,
    String? rLRalesCreptsPresentApicalFine,
    dynamic rLRalesCreptsPresentApicalCoarse,
    dynamic rLRalesCreptsPresentMidZone,
    dynamic rLRalesCreptsPresentMidZoneFine,
    dynamic rLRalesCreptsPresentMidZoneCoarse,
    dynamic rLRalesCreptsPresentBasal,
    dynamic rLRalesCreptsPresentBasalFine,
    dynamic rLRalesCreptsPresentBasalCoarse,
    dynamic rLRalesCreptsPresentSubScapular,
    dynamic rLRalesCreptsPresentSubScapularFine,
    dynamic rLRalesCreptsPresentSubScapularCoarse,
    dynamic rLRalesCreptsPresentDiffuse,
    dynamic rLRalesCreptsPresentDiffuseFine,
    dynamic rLRalesCreptsPresentDiffuseCoarse,
    String? rLRhonchiWheezing,
    dynamic rLRhonchiWheezingPresent,
    String? rLAddedSounds,
    String? rLAddedZoneOfConcern,
    dynamic rLAddedZoneOfConcernAbnormal,
    dynamic rLAddedSoundsPresent,
    String? leftLungAirEntryNormal,
    String? lLBreathSounds,
    dynamic lLBreathSoundsAbnormal,
    dynamic lLBreathSoundsAbnormalApical,
    dynamic lLBreathSoundsAbnormalMidZone,
    dynamic lLBreathSoundsAbnormalBasal,
    dynamic lLBreathSoundsAbnormalSubScapular,
    dynamic lLBreathSoundsAbnormalDiffuse,
    String? lLRalesCrepts,
    dynamic lLRalesCreptsPresent,
    dynamic lLRalesCreptsPresentApical,
    dynamic lLRalesCreptsPresentApicalFine,
    dynamic lLRalesCreptsPresentApicalCoarse,
    dynamic lLRalesCreptsPresentMidZone,
    dynamic lLRalesCreptsPresentMidZoneFine,
    dynamic lLRalesCreptsPresentMidZoneCoarse,
    dynamic lLRalesCreptsPresentBasal,
    dynamic lLRalesCreptsPresentBasalFine,
    dynamic lLRalesCreptsPresentBasalCoarse,
    dynamic lLRalesCreptsPresentSubScapular,
    dynamic lLRalesCreptsPresentSubScapularFine,
    dynamic lLRalesCreptsPresentSubScapularCoarse,
    dynamic lLRalesCreptsPresentDiffuse,
    dynamic lLRalesCreptsPresentDiffuseFine,
    dynamic lLRalesCreptsPresentDiffuseCoarse,
    String? lLRhonchiWheezing,
    dynamic lLRhonchiWheezingPresent,
    String? lLAddedSounds,
    String? lLAddedZoneOfConcern,
    dynamic lLAddedZoneOfConcernAbnormal,
    dynamic lLAddedSoundsPresent,
    String? cardioVascularSystemsDoYouGetPalpitation,
    String? cVSFaintedInHomeSchoolWorkplaceAtAnyTime,
    String? cVSJugularPulsations,
    String? cVSJugularPulsationsVisible,
    dynamic cVSJugularPulsationsVisibleAbnormal,
    String? cVSSuprasternalPulsations,
    dynamic cVSSuprasternalPulsationsPresent,
    String? cVSPeripheralPulsationsRadial,
    String? cVSPeripheralPulsationsRadialPresent,
    dynamic cVSPeripheralPulsationsRadialPresentAbnormal,
    String? cVSPeripheralPulsationsDorsalisPedis,
    String? cVSPeripheralPulsationsDorsalisPedisPresent,
    dynamic cVSPeripheralPulsationsDorsalisPedisAbnormal,
    String? cVSPeripheralPulsationsOtherAbnormality,
    String? cvss1,
    String? cvss2,
    String? cvss3,
    String? cVSMurmur,
    dynamic cVSMurmurPresent,
    dynamic cVSMurmurPresentOther,
    String? cVSClick,
    dynamic cVSClickPresentPosition,
    String? cVSApexBeat,
    dynamic cVSApexBeatPresentDisplaced,
    String? alimentaryAndUrinarySystemDoYouHaveNauseaVomiting,
    String? aUSDoYouHavePainInYourAbdomen,
    String? aUSDoYouFeelBurningWhenYouPassUrine,
    String? aUSCleftLip,
    dynamic aUSCleftLipPresent,
    String? aUSCleftPalate,
    dynamic aUSCleftPalatePresent,
    String? aUSAbdominalDistension,
    String? aUSExaggerateBowelSounds,
    String? aUSGuarding,
    String? aUSRigidity,
    String? aUSRightHypochondriumPain,
    dynamic aUSRHPainYesPainScore,
    String? aUSRHTenderness,
    dynamic aUSRHTendernessPresent,
    String? aUSRHSwellingLumps,
    dynamic aUSRHSwellingLumpsPresentDescription,
    dynamic aUSRHSwellingLumpsPresentSize,
    dynamic aUSRHSwellingLumpsPresentTexture,
    String? aUSRHLiver,
    dynamic aUSRHLiverPalpable,
    String? aUSRHGallBladder,
    dynamic aUSRHGallBladderTender,
    String? aUSRightLumbarPain,
    dynamic aUSRLPainYesPainScore,
    String? aUSRLTenderness,
    dynamic aUSRLTendernessPresent,
    String? aUSRLSwellingLumps,
    dynamic aUSRLSwellingLumpsPresentDescription,
    dynamic aUSRLSwellingLumpsPresentSize,
    dynamic aUSRLSwellingLumpsPresentTexture,
    String? aUSRLRightKidney,
    dynamic aUSRLRightKidneyPalpable,
    String? aUSRightIliacPain,
    dynamic aUSRIPainYesPainScore,
    String? ausrimbp,
    dynamic aUSRIMBPPainScore,
    String? aUSRITenderness,
    dynamic aUSRITendernessPresent,
    String? aUSRISwellingLumps,
    dynamic aUSRISwellingLumpsPresentDescription,
    dynamic aUSRISwellingLumpsPresentSize,
    dynamic aUSRISwellingLumpsPresentTexture,
    String? aUSEpigastricPain,
    dynamic aUSEPainYesPainScore,
    String? aUSETenderness,
    dynamic aUSETendernessPresent,
    dynamic aUSETendernessPresentRebound,
    String? aUSESwellingLumps,
    dynamic aUSESwellingLumpsPresentDescription,
    dynamic aUSESwellingLumpsPresentSize,
    dynamic aUSESwellingLumpsPresentTexture,
    String? aUSUmbilicalPain,
    dynamic aUSUPainYesPainScore,
    String? aUSUTenderness,
    dynamic aUSUTendernessPresent,
    dynamic aUSUTendernessPresentRebound,
    String? aUSUSwellingLumps,
    dynamic aUSUSwellingLumpsPresentDescription,
    dynamic aUSUSwellingLumpsPresentSize,
    dynamic aUSUSwellingLumpsPresentTexture,
    String? aUSSuprapubicPain,
    dynamic aUSSPainYesPainScore,
    String? aUSSTenderness,
    dynamic aUSSTendernessPresent,
    dynamic aUSSTendernessPresentRebound,
    String? aUSSSwellingLumps,
    dynamic aUSSSwellingLumpsPresentDescription,
    dynamic aUSSSwellingLumpsPresentSize,
    dynamic aUSSSwellingLumpsPresentTexture,
    String? aUSSUterus,
    dynamic aUSSUterusPalpable,
    String? aUSLeftHypochondriumPain,
    dynamic aUSLHPainYesPainScore,
    String? aUSLHTenderness,
    dynamic aUSLHTendernessPresent,
    String? aUSLHSwellingLumps,
    dynamic aUSLHSwellingLumpsPresentDescription,
    dynamic aUSLHSwellingLumpsPresentSize,
    dynamic aUSLHSwellingLumpsPresentTexture,
    String? aUSLHSpleen,
    dynamic aUSLHSpleenPalpable,
    String? aUSLeftLumbarPain,
    dynamic aUSLLPainYesPainScore,
    String? aUSLLTenderness,
    dynamic aUSLLTendernessPresent,
    String? aUSLLSwellingLumps,
    dynamic aUSLLSwellingLumpsPresentDescription,
    dynamic aUSLLSwellingLumpsPresentSize,
    dynamic aUSLLSwellingLumpsPresentTexture,
    String? aUSLLLeftKidney,
    dynamic aUSLLLeftKidneyPalpable,
    String? aUSLeftIliacPain,
    dynamic aUSLIPainYesPainScore,
    String? aUSLITenderness,
    dynamic aUSLITendernessPresent,
    String? aUSLISwellingLumps,
    dynamic aUSLISwellingLumpsPresentDescription,
    dynamic aUSLISwellingLumpsPresentSize,
    dynamic aUSLISwellingLumpsPresentTexture,
    String? aUSHernia,
    dynamic aUSHerniaPresent,
    String? aUSUrinaryBladder,
    dynamic aUSUrinaryBladderPalpable,
    dynamic pubertalAssessmentGirls,
    dynamic pAGTannerScore,
    dynamic pAGMenarcheAttained,
    dynamic pAGMAYesAgeOfMenarche,
    dynamic pAGMAYesLMPDate,
    dynamic pAGMAYesCharacterRegularity,
    dynamic pAGMAYesCharacterFrequencyInDays,
    dynamic pAGMAYesDurationInDays,
    dynamic pAGMAYesFlow,
    dynamic pAGMAYesComfort,
    dynamic pAGMAYesPainInOtherPartsOfBodyDuringMenses,
    dynamic pAGMAYesPainInOtherPartsOfBodyDuringMensesYes,
    dynamic pAGMAYesPainInOtherPartsBodyDuringMensesYesOther,
    dynamic pAGYesCrackingOfVoiceOrChnageInVoice,
    dynamic pAGHaveYouExperiencedAChangeInBehaviourRecently,
    dynamic pAGChangeBehaviourYes,
    dynamic pAGChangeBehaviourYesQuietWithdrawn,
    dynamic pAGChangeBehaviourOutgoing,
    dynamic pAGChangeBehaviourAggressive,
    dynamic pAGChangeBehaviourBoldAndDaring,
    dynamic pAGChangeBehaviourCareless,
    dynamic pAGPreferCompanyOf,
    dynamic pAGAnyOtherAbnormalFinding,
    dynamic pAGAnyOtherAbnormalFindingYes,
    String? pubertalAssessmentBoys,
    dynamic pABTannerScore,
    String? pABYesCrackingOfVoiceOrChnageInVoice,
    String? pABNightlyEmissions,
    String? pABHaveYouExperiencedAChangeInBehaviourRecently,
    dynamic pABChangeBehaviourYes,
    dynamic pABChangeBehaviourYesQuietWithdrawn,
    dynamic pABChangeBehaviourOutgoing,
    dynamic pABChangeBehaviourAggressive,
    dynamic pABChangeBehaviourBoldAndDaring,
    dynamic pABChangeBehaviourCareless,
    String? pABPreferCompanyOf,
    String? pABAnyOtherAbnormalFinding,
    dynamic pABAnyOtherAbnormalFindingYes,
    String? historyOfMedication,
    dynamic historyOfMedicationYes,
    dynamic nameOfMedication,
    String? milestones,
    String? otherObservations,
    String? specialistReferralNeeded,
    dynamic specialistReferralNeededType,
    dynamic specialistReferralNeededFlag,
    dynamic other,
    String? completed,
    String? reviewStatus,
    dynamic reviewedBy,
    String? reviewedOn,
    dynamic comments,
    String? endTime,
  }) =>
      StationGgetModel(
        id: id ?? _id,
        stationID: stationID ?? _stationID,
        hcid: hcid ?? _hcid,
        hcpid: hcpid ?? _hcpid,
        infoseekId: infoseekId ?? _infoseekId,
        entryTime: entryTime ?? _entryTime,
        centralNervousSystemAlert:
            centralNervousSystemAlert ?? _centralNervousSystemAlert,
        cNSOriented: cNSOriented ?? _cNSOriented,
        cNSListens: cNSListens ?? _cNSListens,
        cNSUnderstands: cNSUnderstands ?? _cNSUnderstands,
        cNSResponds: cNSResponds ?? _cNSResponds,
        cNSSpeech: cNSSpeech ?? _cNSSpeech,
        cNSSpeechAbnormal: cNSSpeechAbnormal ?? _cNSSpeechAbnormal,
        cNSSpeechAbnormalOther:
            cNSSpeechAbnormalOther ?? _cNSSpeechAbnormalOther,
        cNSHistoryOfHeadache: cNSHistoryOfHeadache ?? _cNSHistoryOfHeadache,
        cNSHistoryOfHeadacheYesFrequency: cNSHistoryOfHeadacheYesFrequency ??
            _cNSHistoryOfHeadacheYesFrequency,
        cNSHistoryOfHeadacheYesFrequencyContinuous:
            cNSHistoryOfHeadacheYesFrequencyContinuous ??
                _cNSHistoryOfHeadacheYesFrequencyContinuous,
        cNSHistoryOfHeadacheYesAssociatedWith:
            cNSHistoryOfHeadacheYesAssociatedWith ??
                _cNSHistoryOfHeadacheYesAssociatedWith,
        cNSHistoryOfHeadacheYesAssociatedWithOccurrence:
            cNSHistoryOfHeadacheYesAssociatedWithOccurrence ??
                _cNSHistoryOfHeadacheYesAssociatedWithOccurrence,
        cNSHistoryOfHeadacheYesAssociatedWithOther:
            cNSHistoryOfHeadacheYesAssociatedWithOther ??
                _cNSHistoryOfHeadacheYesAssociatedWithOther,
        cNSHistoryOfHeadacheYesFrom:
            cNSHistoryOfHeadacheYesFrom ?? _cNSHistoryOfHeadacheYesFrom,
        cNSHistoryOfHeadacheYesDuration:
            cNSHistoryOfHeadacheYesDuration ?? _cNSHistoryOfHeadacheYesDuration,
        cNSHistoryOfDizziness: cNSHistoryOfDizziness ?? _cNSHistoryOfDizziness,
        cNSHistoryOfDizzinessYesFrequency: cNSHistoryOfDizzinessYesFrequency ??
            _cNSHistoryOfDizzinessYesFrequency,
        cNSHistoryOfDizzinessYesFrequencyContinuous:
            cNSHistoryOfDizzinessYesFrequencyContinuous ??
                _cNSHistoryOfDizzinessYesFrequencyContinuous,
        cNSHistoryOfDizzinessYesAssociatedWith:
            cNSHistoryOfDizzinessYesAssociatedWith ??
                _cNSHistoryOfDizzinessYesAssociatedWith,
        cNSHistoryOfDizzinessYesAssociatedWithOccurrence:
            cNSHistoryOfDizzinessYesAssociatedWithOccurrence ??
                _cNSHistoryOfDizzinessYesAssociatedWithOccurrence,
        cNSHistoryOfDizzinessYesAssociatedWithOther:
            cNSHistoryOfDizzinessYesAssociatedWithOther ??
                _cNSHistoryOfDizzinessYesAssociatedWithOther,
        respiratorySystemDoYouFeelBreathless:
            respiratorySystemDoYouFeelBreathless ??
                _respiratorySystemDoYouFeelBreathless,
        rSDoYouHaveACough: rSDoYouHaveACough ?? _rSDoYouHaveACough,
        rSShapeOfChest: rSShapeOfChest ?? _rSShapeOfChest,
        rSShapeOfChestAbnormal:
            rSShapeOfChestAbnormal ?? _rSShapeOfChestAbnormal,
        rSShapeOfChestAbnormalOther:
            rSShapeOfChestAbnormalOther ?? _rSShapeOfChestAbnormalOther,
        rSTypeOfRespiration: rSTypeOfRespiration ?? _rSTypeOfRespiration,
        rSTypeOfRespirationAbdominal:
            rSTypeOfRespirationAbdominal ?? _rSTypeOfRespirationAbdominal,
        rSTypeOfRespirationAbdominalOther: rSTypeOfRespirationAbdominalOther ??
            _rSTypeOfRespirationAbdominalOther,
        rSTypeOfRespirationThoracic:
            rSTypeOfRespirationThoracic ?? _rSTypeOfRespirationThoracic,
        rSTypeOfRespirationThoracicOther: rSTypeOfRespirationThoracicOther ??
            _rSTypeOfRespirationThoracicOther,
        rSTypeOfRespirationAbdominoThoracic:
            rSTypeOfRespirationAbdominoThoracic ??
                _rSTypeOfRespirationAbdominoThoracic,
        rSTypeOfRespirationAbdominoThoracicOther:
            rSTypeOfRespirationAbdominoThoracicOther ??
                _rSTypeOfRespirationAbdominoThoracicOther,
        rSTrachea: rSTrachea ?? _rSTrachea,
        rSEvidenceOfTracheostomy:
            rSEvidenceOfTracheostomy ?? _rSEvidenceOfTracheostomy,
        rightLungAirEntryNormal:
            rightLungAirEntryNormal ?? _rightLungAirEntryNormal,
        rLBreathSounds: rLBreathSounds ?? _rLBreathSounds,
        rLBreathSoundsAbnormal:
            rLBreathSoundsAbnormal ?? _rLBreathSoundsAbnormal,
        rLBreathSoundsAbnormalApical:
            rLBreathSoundsAbnormalApical ?? _rLBreathSoundsAbnormalApical,
        rLBreathSoundsAbnormalMidZone:
            rLBreathSoundsAbnormalMidZone ?? _rLBreathSoundsAbnormalMidZone,
        rLBreathSoundsAbnormalBasal:
            rLBreathSoundsAbnormalBasal ?? _rLBreathSoundsAbnormalBasal,
        rLBreathSoundsAbnormalSubScapular: rLBreathSoundsAbnormalSubScapular ??
            _rLBreathSoundsAbnormalSubScapular,
        rLBreathSoundsAbnormalDiffuse:
            rLBreathSoundsAbnormalDiffuse ?? _rLBreathSoundsAbnormalDiffuse,
        rLRalesCrepts: rLRalesCrepts ?? _rLRalesCrepts,
        rLRalesCreptsPresent: rLRalesCreptsPresent ?? _rLRalesCreptsPresent,
        rLRalesCreptsPresentApical:
            rLRalesCreptsPresentApical ?? _rLRalesCreptsPresentApical,
        rLRalesCreptsPresentApicalFine:
            rLRalesCreptsPresentApicalFine ?? _rLRalesCreptsPresentApicalFine,
        rLRalesCreptsPresentApicalCoarse: rLRalesCreptsPresentApicalCoarse ??
            _rLRalesCreptsPresentApicalCoarse,
        rLRalesCreptsPresentMidZone:
            rLRalesCreptsPresentMidZone ?? _rLRalesCreptsPresentMidZone,
        rLRalesCreptsPresentMidZoneFine:
            rLRalesCreptsPresentMidZoneFine ?? _rLRalesCreptsPresentMidZoneFine,
        rLRalesCreptsPresentMidZoneCoarse: rLRalesCreptsPresentMidZoneCoarse ??
            _rLRalesCreptsPresentMidZoneCoarse,
        rLRalesCreptsPresentBasal:
            rLRalesCreptsPresentBasal ?? _rLRalesCreptsPresentBasal,
        rLRalesCreptsPresentBasalFine:
            rLRalesCreptsPresentBasalFine ?? _rLRalesCreptsPresentBasalFine,
        rLRalesCreptsPresentBasalCoarse:
            rLRalesCreptsPresentBasalCoarse ?? _rLRalesCreptsPresentBasalCoarse,
        rLRalesCreptsPresentSubScapular:
            rLRalesCreptsPresentSubScapular ?? _rLRalesCreptsPresentSubScapular,
        rLRalesCreptsPresentSubScapularFine:
            rLRalesCreptsPresentSubScapularFine ??
                _rLRalesCreptsPresentSubScapularFine,
        rLRalesCreptsPresentSubScapularCoarse:
            rLRalesCreptsPresentSubScapularCoarse ??
                _rLRalesCreptsPresentSubScapularCoarse,
        rLRalesCreptsPresentDiffuse:
            rLRalesCreptsPresentDiffuse ?? _rLRalesCreptsPresentDiffuse,
        rLRalesCreptsPresentDiffuseFine:
            rLRalesCreptsPresentDiffuseFine ?? _rLRalesCreptsPresentDiffuseFine,
        rLRalesCreptsPresentDiffuseCoarse: rLRalesCreptsPresentDiffuseCoarse ??
            _rLRalesCreptsPresentDiffuseCoarse,
        rLRhonchiWheezing: rLRhonchiWheezing ?? _rLRhonchiWheezing,
        rLRhonchiWheezingPresent:
            rLRhonchiWheezingPresent ?? _rLRhonchiWheezingPresent,
        rLAddedSounds: rLAddedSounds ?? _rLAddedSounds,
        rLAddedZoneOfConcern: rLAddedZoneOfConcern ?? _rLAddedZoneOfConcern,
        rLAddedZoneOfConcernAbnormal:
            rLAddedZoneOfConcernAbnormal ?? _rLAddedZoneOfConcernAbnormal,
        rLAddedSoundsPresent: rLAddedSoundsPresent ?? _rLAddedSoundsPresent,
        leftLungAirEntryNormal:
            leftLungAirEntryNormal ?? _leftLungAirEntryNormal,
        lLBreathSounds: lLBreathSounds ?? _lLBreathSounds,
        lLBreathSoundsAbnormal:
            lLBreathSoundsAbnormal ?? _lLBreathSoundsAbnormal,
        lLBreathSoundsAbnormalApical:
            lLBreathSoundsAbnormalApical ?? _lLBreathSoundsAbnormalApical,
        lLBreathSoundsAbnormalMidZone:
            lLBreathSoundsAbnormalMidZone ?? _lLBreathSoundsAbnormalMidZone,
        lLBreathSoundsAbnormalBasal:
            lLBreathSoundsAbnormalBasal ?? _lLBreathSoundsAbnormalBasal,
        lLBreathSoundsAbnormalSubScapular: lLBreathSoundsAbnormalSubScapular ??
            _lLBreathSoundsAbnormalSubScapular,
        lLBreathSoundsAbnormalDiffuse:
            lLBreathSoundsAbnormalDiffuse ?? _lLBreathSoundsAbnormalDiffuse,
        lLRalesCrepts: lLRalesCrepts ?? _lLRalesCrepts,
        lLRalesCreptsPresent: lLRalesCreptsPresent ?? _lLRalesCreptsPresent,
        lLRalesCreptsPresentApical:
            lLRalesCreptsPresentApical ?? _lLRalesCreptsPresentApical,
        lLRalesCreptsPresentApicalFine:
            lLRalesCreptsPresentApicalFine ?? _lLRalesCreptsPresentApicalFine,
        lLRalesCreptsPresentApicalCoarse: lLRalesCreptsPresentApicalCoarse ??
            _lLRalesCreptsPresentApicalCoarse,
        lLRalesCreptsPresentMidZone:
            lLRalesCreptsPresentMidZone ?? _lLRalesCreptsPresentMidZone,
        lLRalesCreptsPresentMidZoneFine:
            lLRalesCreptsPresentMidZoneFine ?? _lLRalesCreptsPresentMidZoneFine,
        lLRalesCreptsPresentMidZoneCoarse: lLRalesCreptsPresentMidZoneCoarse ??
            _lLRalesCreptsPresentMidZoneCoarse,
        lLRalesCreptsPresentBasal:
            lLRalesCreptsPresentBasal ?? _lLRalesCreptsPresentBasal,
        lLRalesCreptsPresentBasalFine:
            lLRalesCreptsPresentBasalFine ?? _lLRalesCreptsPresentBasalFine,
        lLRalesCreptsPresentBasalCoarse:
            lLRalesCreptsPresentBasalCoarse ?? _lLRalesCreptsPresentBasalCoarse,
        lLRalesCreptsPresentSubScapular:
            lLRalesCreptsPresentSubScapular ?? _lLRalesCreptsPresentSubScapular,
        lLRalesCreptsPresentSubScapularFine:
            lLRalesCreptsPresentSubScapularFine ??
                _lLRalesCreptsPresentSubScapularFine,
        lLRalesCreptsPresentSubScapularCoarse:
            lLRalesCreptsPresentSubScapularCoarse ??
                _lLRalesCreptsPresentSubScapularCoarse,
        lLRalesCreptsPresentDiffuse:
            lLRalesCreptsPresentDiffuse ?? _lLRalesCreptsPresentDiffuse,
        lLRalesCreptsPresentDiffuseFine:
            lLRalesCreptsPresentDiffuseFine ?? _lLRalesCreptsPresentDiffuseFine,
        lLRalesCreptsPresentDiffuseCoarse: lLRalesCreptsPresentDiffuseCoarse ??
            _lLRalesCreptsPresentDiffuseCoarse,
        lLRhonchiWheezing: lLRhonchiWheezing ?? _lLRhonchiWheezing,
        lLRhonchiWheezingPresent:
            lLRhonchiWheezingPresent ?? _lLRhonchiWheezingPresent,
        lLAddedSounds: lLAddedSounds ?? _lLAddedSounds,
        lLAddedZoneOfConcern: lLAddedZoneOfConcern ?? _lLAddedZoneOfConcern,
        lLAddedZoneOfConcernAbnormal:
            lLAddedZoneOfConcernAbnormal ?? _lLAddedZoneOfConcernAbnormal,
        lLAddedSoundsPresent: lLAddedSoundsPresent ?? _lLAddedSoundsPresent,
        cardioVascularSystemsDoYouGetPalpitation:
            cardioVascularSystemsDoYouGetPalpitation ??
                _cardioVascularSystemsDoYouGetPalpitation,
        cVSFaintedInHomeSchoolWorkplaceAtAnyTime:
            cVSFaintedInHomeSchoolWorkplaceAtAnyTime ??
                _cVSFaintedInHomeSchoolWorkplaceAtAnyTime,
        cVSJugularPulsations: cVSJugularPulsations ?? _cVSJugularPulsations,
        cVSJugularPulsationsVisible:
            cVSJugularPulsationsVisible ?? _cVSJugularPulsationsVisible,
        cVSJugularPulsationsVisibleAbnormal:
            cVSJugularPulsationsVisibleAbnormal ??
                _cVSJugularPulsationsVisibleAbnormal,
        cVSSuprasternalPulsations:
            cVSSuprasternalPulsations ?? _cVSSuprasternalPulsations,
        cVSSuprasternalPulsationsPresent: cVSSuprasternalPulsationsPresent ??
            _cVSSuprasternalPulsationsPresent,
        cVSPeripheralPulsationsRadial:
            cVSPeripheralPulsationsRadial ?? _cVSPeripheralPulsationsRadial,
        cVSPeripheralPulsationsRadialPresent:
            cVSPeripheralPulsationsRadialPresent ??
                _cVSPeripheralPulsationsRadialPresent,
        cVSPeripheralPulsationsRadialPresentAbnormal:
            cVSPeripheralPulsationsRadialPresentAbnormal ??
                _cVSPeripheralPulsationsRadialPresentAbnormal,
        cVSPeripheralPulsationsDorsalisPedis:
            cVSPeripheralPulsationsDorsalisPedis ??
                _cVSPeripheralPulsationsDorsalisPedis,
        cVSPeripheralPulsationsDorsalisPedisPresent:
            cVSPeripheralPulsationsDorsalisPedisPresent ??
                _cVSPeripheralPulsationsDorsalisPedisPresent,
        cVSPeripheralPulsationsDorsalisPedisAbnormal:
            cVSPeripheralPulsationsDorsalisPedisAbnormal ??
                _cVSPeripheralPulsationsDorsalisPedisAbnormal,
        cVSPeripheralPulsationsOtherAbnormality:
            cVSPeripheralPulsationsOtherAbnormality ??
                _cVSPeripheralPulsationsOtherAbnormality,
        cvss1: cvss1 ?? _cvss1,
        cvss2: cvss2 ?? _cvss2,
        cvss3: cvss3 ?? _cvss3,
        cVSMurmur: cVSMurmur ?? _cVSMurmur,
        cVSMurmurPresent: cVSMurmurPresent ?? _cVSMurmurPresent,
        cVSMurmurPresentOther: cVSMurmurPresentOther ?? _cVSMurmurPresentOther,
        cVSClick: cVSClick ?? _cVSClick,
        cVSClickPresentPosition:
            cVSClickPresentPosition ?? _cVSClickPresentPosition,
        cVSApexBeat: cVSApexBeat ?? _cVSApexBeat,
        cVSApexBeatPresentDisplaced:
            cVSApexBeatPresentDisplaced ?? _cVSApexBeatPresentDisplaced,
        alimentaryAndUrinarySystemDoYouHaveNauseaVomiting:
            alimentaryAndUrinarySystemDoYouHaveNauseaVomiting ??
                _alimentaryAndUrinarySystemDoYouHaveNauseaVomiting,
        aUSDoYouHavePainInYourAbdomen:
            aUSDoYouHavePainInYourAbdomen ?? _aUSDoYouHavePainInYourAbdomen,
        aUSDoYouFeelBurningWhenYouPassUrine:
            aUSDoYouFeelBurningWhenYouPassUrine ??
                _aUSDoYouFeelBurningWhenYouPassUrine,
        aUSCleftLip: aUSCleftLip ?? _aUSCleftLip,
        aUSCleftLipPresent: aUSCleftLipPresent ?? _aUSCleftLipPresent,
        aUSCleftPalate: aUSCleftPalate ?? _aUSCleftPalate,
        aUSCleftPalatePresent: aUSCleftPalatePresent ?? _aUSCleftPalatePresent,
        aUSAbdominalDistension:
            aUSAbdominalDistension ?? _aUSAbdominalDistension,
        aUSExaggerateBowelSounds:
            aUSExaggerateBowelSounds ?? _aUSExaggerateBowelSounds,
        aUSGuarding: aUSGuarding ?? _aUSGuarding,
        aUSRigidity: aUSRigidity ?? _aUSRigidity,
        aUSRightHypochondriumPain:
            aUSRightHypochondriumPain ?? _aUSRightHypochondriumPain,
        aUSRHPainYesPainScore: aUSRHPainYesPainScore ?? _aUSRHPainYesPainScore,
        aUSRHTenderness: aUSRHTenderness ?? _aUSRHTenderness,
        aUSRHTendernessPresent:
            aUSRHTendernessPresent ?? _aUSRHTendernessPresent,
        aUSRHSwellingLumps: aUSRHSwellingLumps ?? _aUSRHSwellingLumps,
        aUSRHSwellingLumpsPresentDescription:
            aUSRHSwellingLumpsPresentDescription ??
                _aUSRHSwellingLumpsPresentDescription,
        aUSRHSwellingLumpsPresentSize:
            aUSRHSwellingLumpsPresentSize ?? _aUSRHSwellingLumpsPresentSize,
        aUSRHSwellingLumpsPresentTexture: aUSRHSwellingLumpsPresentTexture ??
            _aUSRHSwellingLumpsPresentTexture,
        aUSRHLiver: aUSRHLiver ?? _aUSRHLiver,
        aUSRHLiverPalpable: aUSRHLiverPalpable ?? _aUSRHLiverPalpable,
        aUSRHGallBladder: aUSRHGallBladder ?? _aUSRHGallBladder,
        aUSRHGallBladderTender:
            aUSRHGallBladderTender ?? _aUSRHGallBladderTender,
        aUSRightLumbarPain: aUSRightLumbarPain ?? _aUSRightLumbarPain,
        aUSRLPainYesPainScore: aUSRLPainYesPainScore ?? _aUSRLPainYesPainScore,
        aUSRLTenderness: aUSRLTenderness ?? _aUSRLTenderness,
        aUSRLTendernessPresent:
            aUSRLTendernessPresent ?? _aUSRLTendernessPresent,
        aUSRLSwellingLumps: aUSRLSwellingLumps ?? _aUSRLSwellingLumps,
        aUSRLSwellingLumpsPresentDescription:
            aUSRLSwellingLumpsPresentDescription ??
                _aUSRLSwellingLumpsPresentDescription,
        aUSRLSwellingLumpsPresentSize:
            aUSRLSwellingLumpsPresentSize ?? _aUSRLSwellingLumpsPresentSize,
        aUSRLSwellingLumpsPresentTexture: aUSRLSwellingLumpsPresentTexture ??
            _aUSRLSwellingLumpsPresentTexture,
        aUSRLRightKidney: aUSRLRightKidney ?? _aUSRLRightKidney,
        aUSRLRightKidneyPalpable:
            aUSRLRightKidneyPalpable ?? _aUSRLRightKidneyPalpable,
        aUSRightIliacPain: aUSRightIliacPain ?? _aUSRightIliacPain,
        aUSRIPainYesPainScore: aUSRIPainYesPainScore ?? _aUSRIPainYesPainScore,
        ausrimbp: ausrimbp ?? _ausrimbp,
        aUSRIMBPPainScore: aUSRIMBPPainScore ?? _aUSRIMBPPainScore,
        aUSRITenderness: aUSRITenderness ?? _aUSRITenderness,
        aUSRITendernessPresent:
            aUSRITendernessPresent ?? _aUSRITendernessPresent,
        aUSRISwellingLumps: aUSRISwellingLumps ?? _aUSRISwellingLumps,
        aUSRISwellingLumpsPresentDescription:
            aUSRISwellingLumpsPresentDescription ??
                _aUSRISwellingLumpsPresentDescription,
        aUSRISwellingLumpsPresentSize:
            aUSRISwellingLumpsPresentSize ?? _aUSRISwellingLumpsPresentSize,
        aUSRISwellingLumpsPresentTexture: aUSRISwellingLumpsPresentTexture ??
            _aUSRISwellingLumpsPresentTexture,
        aUSEpigastricPain: aUSEpigastricPain ?? _aUSEpigastricPain,
        aUSEPainYesPainScore: aUSEPainYesPainScore ?? _aUSEPainYesPainScore,
        aUSETenderness: aUSETenderness ?? _aUSETenderness,
        aUSETendernessPresent: aUSETendernessPresent ?? _aUSETendernessPresent,
        aUSETendernessPresentRebound:
            aUSETendernessPresentRebound ?? _aUSETendernessPresentRebound,
        aUSESwellingLumps: aUSESwellingLumps ?? _aUSESwellingLumps,
        aUSESwellingLumpsPresentDescription:
            aUSESwellingLumpsPresentDescription ??
                _aUSESwellingLumpsPresentDescription,
        aUSESwellingLumpsPresentSize:
            aUSESwellingLumpsPresentSize ?? _aUSESwellingLumpsPresentSize,
        aUSESwellingLumpsPresentTexture:
            aUSESwellingLumpsPresentTexture ?? _aUSESwellingLumpsPresentTexture,
        aUSUmbilicalPain: aUSUmbilicalPain ?? _aUSUmbilicalPain,
        aUSUPainYesPainScore: aUSUPainYesPainScore ?? _aUSUPainYesPainScore,
        aUSUTenderness: aUSUTenderness ?? _aUSUTenderness,
        aUSUTendernessPresent: aUSUTendernessPresent ?? _aUSUTendernessPresent,
        aUSUTendernessPresentRebound:
            aUSUTendernessPresentRebound ?? _aUSUTendernessPresentRebound,
        aUSUSwellingLumps: aUSUSwellingLumps ?? _aUSUSwellingLumps,
        aUSUSwellingLumpsPresentDescription:
            aUSUSwellingLumpsPresentDescription ??
                _aUSUSwellingLumpsPresentDescription,
        aUSUSwellingLumpsPresentSize:
            aUSUSwellingLumpsPresentSize ?? _aUSUSwellingLumpsPresentSize,
        aUSUSwellingLumpsPresentTexture:
            aUSUSwellingLumpsPresentTexture ?? _aUSUSwellingLumpsPresentTexture,
        aUSSuprapubicPain: aUSSuprapubicPain ?? _aUSSuprapubicPain,
        aUSSPainYesPainScore: aUSSPainYesPainScore ?? _aUSSPainYesPainScore,
        aUSSTenderness: aUSSTenderness ?? _aUSSTenderness,
        aUSSTendernessPresent: aUSSTendernessPresent ?? _aUSSTendernessPresent,
        aUSSTendernessPresentRebound:
            aUSSTendernessPresentRebound ?? _aUSSTendernessPresentRebound,
        aUSSSwellingLumps: aUSSSwellingLumps ?? _aUSSSwellingLumps,
        aUSSSwellingLumpsPresentDescription:
            aUSSSwellingLumpsPresentDescription ??
                _aUSSSwellingLumpsPresentDescription,
        aUSSSwellingLumpsPresentSize:
            aUSSSwellingLumpsPresentSize ?? _aUSSSwellingLumpsPresentSize,
        aUSSSwellingLumpsPresentTexture:
            aUSSSwellingLumpsPresentTexture ?? _aUSSSwellingLumpsPresentTexture,
        aUSSUterus: aUSSUterus ?? _aUSSUterus,
        aUSSUterusPalpable: aUSSUterusPalpable ?? _aUSSUterusPalpable,
        aUSLeftHypochondriumPain:
            aUSLeftHypochondriumPain ?? _aUSLeftHypochondriumPain,
        aUSLHPainYesPainScore: aUSLHPainYesPainScore ?? _aUSLHPainYesPainScore,
        aUSLHTenderness: aUSLHTenderness ?? _aUSLHTenderness,
        aUSLHTendernessPresent:
            aUSLHTendernessPresent ?? _aUSLHTendernessPresent,
        aUSLHSwellingLumps: aUSLHSwellingLumps ?? _aUSLHSwellingLumps,
        aUSLHSwellingLumpsPresentDescription:
            aUSLHSwellingLumpsPresentDescription ??
                _aUSLHSwellingLumpsPresentDescription,
        aUSLHSwellingLumpsPresentSize:
            aUSLHSwellingLumpsPresentSize ?? _aUSLHSwellingLumpsPresentSize,
        aUSLHSwellingLumpsPresentTexture: aUSLHSwellingLumpsPresentTexture ??
            _aUSLHSwellingLumpsPresentTexture,
        aUSLHSpleen: aUSLHSpleen ?? _aUSLHSpleen,
        aUSLHSpleenPalpable: aUSLHSpleenPalpable ?? _aUSLHSpleenPalpable,
        aUSLeftLumbarPain: aUSLeftLumbarPain ?? _aUSLeftLumbarPain,
        aUSLLPainYesPainScore: aUSLLPainYesPainScore ?? _aUSLLPainYesPainScore,
        aUSLLTenderness: aUSLLTenderness ?? _aUSLLTenderness,
        aUSLLTendernessPresent:
            aUSLLTendernessPresent ?? _aUSLLTendernessPresent,
        aUSLLSwellingLumps: aUSLLSwellingLumps ?? _aUSLLSwellingLumps,
        aUSLLSwellingLumpsPresentDescription:
            aUSLLSwellingLumpsPresentDescription ??
                _aUSLLSwellingLumpsPresentDescription,
        aUSLLSwellingLumpsPresentSize:
            aUSLLSwellingLumpsPresentSize ?? _aUSLLSwellingLumpsPresentSize,
        aUSLLSwellingLumpsPresentTexture: aUSLLSwellingLumpsPresentTexture ??
            _aUSLLSwellingLumpsPresentTexture,
        aUSLLLeftKidney: aUSLLLeftKidney ?? _aUSLLLeftKidney,
        aUSLLLeftKidneyPalpable:
            aUSLLLeftKidneyPalpable ?? _aUSLLLeftKidneyPalpable,
        aUSLeftIliacPain: aUSLeftIliacPain ?? _aUSLeftIliacPain,
        aUSLIPainYesPainScore: aUSLIPainYesPainScore ?? _aUSLIPainYesPainScore,
        aUSLITenderness: aUSLITenderness ?? _aUSLITenderness,
        aUSLITendernessPresent:
            aUSLITendernessPresent ?? _aUSLITendernessPresent,
        aUSLISwellingLumps: aUSLISwellingLumps ?? _aUSLISwellingLumps,
        aUSLISwellingLumpsPresentDescription:
            aUSLISwellingLumpsPresentDescription ??
                _aUSLISwellingLumpsPresentDescription,
        aUSLISwellingLumpsPresentSize:
            aUSLISwellingLumpsPresentSize ?? _aUSLISwellingLumpsPresentSize,
        aUSLISwellingLumpsPresentTexture: aUSLISwellingLumpsPresentTexture ??
            _aUSLISwellingLumpsPresentTexture,
        aUSHernia: aUSHernia ?? _aUSHernia,
        aUSHerniaPresent: aUSHerniaPresent ?? _aUSHerniaPresent,
        aUSUrinaryBladder: aUSUrinaryBladder ?? _aUSUrinaryBladder,
        aUSUrinaryBladderPalpable:
            aUSUrinaryBladderPalpable ?? _aUSUrinaryBladderPalpable,
        pubertalAssessmentGirls:
            pubertalAssessmentGirls ?? _pubertalAssessmentGirls,
        pAGTannerScore: pAGTannerScore ?? _pAGTannerScore,
        pAGMenarcheAttained: pAGMenarcheAttained ?? _pAGMenarcheAttained,
        pAGMAYesAgeOfMenarche: pAGMAYesAgeOfMenarche ?? _pAGMAYesAgeOfMenarche,
        pAGMAYesLMPDate: pAGMAYesLMPDate ?? _pAGMAYesLMPDate,
        pAGMAYesCharacterRegularity:
            pAGMAYesCharacterRegularity ?? _pAGMAYesCharacterRegularity,
        pAGMAYesCharacterFrequencyInDays: pAGMAYesCharacterFrequencyInDays ??
            _pAGMAYesCharacterFrequencyInDays,
        pAGMAYesDurationInDays:
            pAGMAYesDurationInDays ?? _pAGMAYesDurationInDays,
        pAGMAYesFlow: pAGMAYesFlow ?? _pAGMAYesFlow,
        pAGMAYesComfort: pAGMAYesComfort ?? _pAGMAYesComfort,
        pAGMAYesPainInOtherPartsOfBodyDuringMenses:
            pAGMAYesPainInOtherPartsOfBodyDuringMenses ??
                _pAGMAYesPainInOtherPartsOfBodyDuringMenses,
        pAGMAYesPainInOtherPartsOfBodyDuringMensesYes:
            pAGMAYesPainInOtherPartsOfBodyDuringMensesYes ??
                _pAGMAYesPainInOtherPartsOfBodyDuringMensesYes,
        pAGMAYesPainInOtherPartsBodyDuringMensesYesOther:
            pAGMAYesPainInOtherPartsBodyDuringMensesYesOther ??
                _pAGMAYesPainInOtherPartsBodyDuringMensesYesOther,
        pAGYesCrackingOfVoiceOrChnageInVoice:
            pAGYesCrackingOfVoiceOrChnageInVoice ??
                _pAGYesCrackingOfVoiceOrChnageInVoice,
        pAGHaveYouExperiencedAChangeInBehaviourRecently:
            pAGHaveYouExperiencedAChangeInBehaviourRecently ??
                _pAGHaveYouExperiencedAChangeInBehaviourRecently,
        pAGChangeBehaviourYes: pAGChangeBehaviourYes ?? _pAGChangeBehaviourYes,
        pAGChangeBehaviourYesQuietWithdrawn:
            pAGChangeBehaviourYesQuietWithdrawn ??
                _pAGChangeBehaviourYesQuietWithdrawn,
        pAGChangeBehaviourOutgoing:
            pAGChangeBehaviourOutgoing ?? _pAGChangeBehaviourOutgoing,
        pAGChangeBehaviourAggressive:
            pAGChangeBehaviourAggressive ?? _pAGChangeBehaviourAggressive,
        pAGChangeBehaviourBoldAndDaring:
            pAGChangeBehaviourBoldAndDaring ?? _pAGChangeBehaviourBoldAndDaring,
        pAGChangeBehaviourCareless:
            pAGChangeBehaviourCareless ?? _pAGChangeBehaviourCareless,
        pAGPreferCompanyOf: pAGPreferCompanyOf ?? _pAGPreferCompanyOf,
        pAGAnyOtherAbnormalFinding:
            pAGAnyOtherAbnormalFinding ?? _pAGAnyOtherAbnormalFinding,
        pAGAnyOtherAbnormalFindingYes:
            pAGAnyOtherAbnormalFindingYes ?? _pAGAnyOtherAbnormalFindingYes,
        pubertalAssessmentBoys:
            pubertalAssessmentBoys ?? _pubertalAssessmentBoys,
        pABTannerScore: pABTannerScore ?? _pABTannerScore,
        pABYesCrackingOfVoiceOrChnageInVoice:
            pABYesCrackingOfVoiceOrChnageInVoice ??
                _pABYesCrackingOfVoiceOrChnageInVoice,
        pABNightlyEmissions: pABNightlyEmissions ?? _pABNightlyEmissions,
        pABHaveYouExperiencedAChangeInBehaviourRecently:
            pABHaveYouExperiencedAChangeInBehaviourRecently ??
                _pABHaveYouExperiencedAChangeInBehaviourRecently,
        pABChangeBehaviourYes: pABChangeBehaviourYes ?? _pABChangeBehaviourYes,
        pABChangeBehaviourYesQuietWithdrawn:
            pABChangeBehaviourYesQuietWithdrawn ??
                _pABChangeBehaviourYesQuietWithdrawn,
        pABChangeBehaviourOutgoing:
            pABChangeBehaviourOutgoing ?? _pABChangeBehaviourOutgoing,
        pABChangeBehaviourAggressive:
            pABChangeBehaviourAggressive ?? _pABChangeBehaviourAggressive,
        pABChangeBehaviourBoldAndDaring:
            pABChangeBehaviourBoldAndDaring ?? _pABChangeBehaviourBoldAndDaring,
        pABChangeBehaviourCareless:
            pABChangeBehaviourCareless ?? _pABChangeBehaviourCareless,
        pABPreferCompanyOf: pABPreferCompanyOf ?? _pABPreferCompanyOf,
        pABAnyOtherAbnormalFinding:
            pABAnyOtherAbnormalFinding ?? _pABAnyOtherAbnormalFinding,
        pABAnyOtherAbnormalFindingYes:
            pABAnyOtherAbnormalFindingYes ?? _pABAnyOtherAbnormalFindingYes,
        historyOfMedication: historyOfMedication ?? _historyOfMedication,
        historyOfMedicationYes:
            historyOfMedicationYes ?? _historyOfMedicationYes,
        nameOfMedication: nameOfMedication ?? _nameOfMedication,
        milestones: milestones ?? _milestones,
        otherObservations: otherObservations ?? _otherObservations,
        specialistReferralNeeded:
            specialistReferralNeeded ?? _specialistReferralNeeded,
        specialistReferralNeededType:
            specialistReferralNeededType ?? _specialistReferralNeededType,
        specialistReferralNeededFlag:
            specialistReferralNeededFlag ?? _specialistReferralNeededFlag,
        other: other ?? _other,
        completed: completed ?? _completed,
        reviewStatus: reviewStatus ?? _reviewStatus,
        reviewedBy: reviewedBy ?? _reviewedBy,
        reviewedOn: reviewedOn ?? _reviewedOn,
        comments: comments ?? _comments,
        endTime: endTime ?? _endTime,
      );
  num? get id => _id;
  num? get stationID => _stationID;
  num? get hcid => _hcid;
  num? get hcpid => _hcpid;
  num? get infoseekId => _infoseekId;
  String? get entryTime => _entryTime;
  String? get centralNervousSystemAlert => _centralNervousSystemAlert;
  String? get cNSOriented => _cNSOriented;
  String? get cNSListens => _cNSListens;
  String? get cNSUnderstands => _cNSUnderstands;
  String? get cNSResponds => _cNSResponds;
  String? get cNSSpeech => _cNSSpeech;
  dynamic get cNSSpeechAbnormal => _cNSSpeechAbnormal;
  dynamic get cNSSpeechAbnormalOther => _cNSSpeechAbnormalOther;
  String? get cNSHistoryOfHeadache => _cNSHistoryOfHeadache;
  dynamic get cNSHistoryOfHeadacheYesFrequency =>
      _cNSHistoryOfHeadacheYesFrequency;
  dynamic get cNSHistoryOfHeadacheYesFrequencyContinuous =>
      _cNSHistoryOfHeadacheYesFrequencyContinuous;
  dynamic get cNSHistoryOfHeadacheYesAssociatedWith =>
      _cNSHistoryOfHeadacheYesAssociatedWith;
  dynamic get cNSHistoryOfHeadacheYesAssociatedWithOccurrence =>
      _cNSHistoryOfHeadacheYesAssociatedWithOccurrence;
  dynamic get cNSHistoryOfHeadacheYesAssociatedWithOther =>
      _cNSHistoryOfHeadacheYesAssociatedWithOther;
  dynamic get cNSHistoryOfHeadacheYesFrom => _cNSHistoryOfHeadacheYesFrom;
  dynamic get cNSHistoryOfHeadacheYesDuration =>
      _cNSHistoryOfHeadacheYesDuration;
  String? get cNSHistoryOfDizziness => _cNSHistoryOfDizziness;
  dynamic get cNSHistoryOfDizzinessYesFrequency =>
      _cNSHistoryOfDizzinessYesFrequency;
  dynamic get cNSHistoryOfDizzinessYesFrequencyContinuous =>
      _cNSHistoryOfDizzinessYesFrequencyContinuous;
  dynamic get cNSHistoryOfDizzinessYesAssociatedWith =>
      _cNSHistoryOfDizzinessYesAssociatedWith;
  dynamic get cNSHistoryOfDizzinessYesAssociatedWithOccurrence =>
      _cNSHistoryOfDizzinessYesAssociatedWithOccurrence;
  dynamic get cNSHistoryOfDizzinessYesAssociatedWithOther =>
      _cNSHistoryOfDizzinessYesAssociatedWithOther;
  String? get respiratorySystemDoYouFeelBreathless =>
      _respiratorySystemDoYouFeelBreathless;
  String? get rSDoYouHaveACough => _rSDoYouHaveACough;
  String? get rSShapeOfChest => _rSShapeOfChest;
  dynamic get rSShapeOfChestAbnormal => _rSShapeOfChestAbnormal;
  dynamic get rSShapeOfChestAbnormalOther => _rSShapeOfChestAbnormalOther;
  String? get rSTypeOfRespiration => _rSTypeOfRespiration;
  String? get rSTypeOfRespirationAbdominal => _rSTypeOfRespirationAbdominal;
  String? get rSTypeOfRespirationAbdominalOther =>
      _rSTypeOfRespirationAbdominalOther;
  String? get rSTypeOfRespirationThoracic => _rSTypeOfRespirationThoracic;
  String? get rSTypeOfRespirationThoracicOther =>
      _rSTypeOfRespirationThoracicOther;
  String? get rSTypeOfRespirationAbdominoThoracic =>
      _rSTypeOfRespirationAbdominoThoracic;
  String? get rSTypeOfRespirationAbdominoThoracicOther =>
      _rSTypeOfRespirationAbdominoThoracicOther;
  String? get rSTrachea => _rSTrachea;
  String? get rSEvidenceOfTracheostomy => _rSEvidenceOfTracheostomy;
  String? get rightLungAirEntryNormal => _rightLungAirEntryNormal;
  String? get rLBreathSounds => _rLBreathSounds;
  dynamic get rLBreathSoundsAbnormal => _rLBreathSoundsAbnormal;
  dynamic get rLBreathSoundsAbnormalApical => _rLBreathSoundsAbnormalApical;
  dynamic get rLBreathSoundsAbnormalMidZone => _rLBreathSoundsAbnormalMidZone;
  dynamic get rLBreathSoundsAbnormalBasal => _rLBreathSoundsAbnormalBasal;
  dynamic get rLBreathSoundsAbnormalSubScapular =>
      _rLBreathSoundsAbnormalSubScapular;
  dynamic get rLBreathSoundsAbnormalDiffuse => _rLBreathSoundsAbnormalDiffuse;
  String? get rLRalesCrepts => _rLRalesCrepts;
  String? get rLRalesCreptsPresent => _rLRalesCreptsPresent;
  String? get rLRalesCreptsPresentApical => _rLRalesCreptsPresentApical;
  String? get rLRalesCreptsPresentApicalFine => _rLRalesCreptsPresentApicalFine;
  dynamic get rLRalesCreptsPresentApicalCoarse =>
      _rLRalesCreptsPresentApicalCoarse;
  dynamic get rLRalesCreptsPresentMidZone => _rLRalesCreptsPresentMidZone;
  dynamic get rLRalesCreptsPresentMidZoneFine =>
      _rLRalesCreptsPresentMidZoneFine;
  dynamic get rLRalesCreptsPresentMidZoneCoarse =>
      _rLRalesCreptsPresentMidZoneCoarse;
  dynamic get rLRalesCreptsPresentBasal => _rLRalesCreptsPresentBasal;
  dynamic get rLRalesCreptsPresentBasalFine => _rLRalesCreptsPresentBasalFine;
  dynamic get rLRalesCreptsPresentBasalCoarse =>
      _rLRalesCreptsPresentBasalCoarse;
  dynamic get rLRalesCreptsPresentSubScapular =>
      _rLRalesCreptsPresentSubScapular;
  dynamic get rLRalesCreptsPresentSubScapularFine =>
      _rLRalesCreptsPresentSubScapularFine;
  dynamic get rLRalesCreptsPresentSubScapularCoarse =>
      _rLRalesCreptsPresentSubScapularCoarse;
  dynamic get rLRalesCreptsPresentDiffuse => _rLRalesCreptsPresentDiffuse;
  dynamic get rLRalesCreptsPresentDiffuseFine =>
      _rLRalesCreptsPresentDiffuseFine;
  dynamic get rLRalesCreptsPresentDiffuseCoarse =>
      _rLRalesCreptsPresentDiffuseCoarse;
  String? get rLRhonchiWheezing => _rLRhonchiWheezing;
  dynamic get rLRhonchiWheezingPresent => _rLRhonchiWheezingPresent;
  String? get rLAddedSounds => _rLAddedSounds;
  String? get rLAddedZoneOfConcern => _rLAddedZoneOfConcern;
  dynamic get rLAddedZoneOfConcernAbnormal => _rLAddedZoneOfConcernAbnormal;
  dynamic get rLAddedSoundsPresent => _rLAddedSoundsPresent;
  String? get leftLungAirEntryNormal => _leftLungAirEntryNormal;
  String? get lLBreathSounds => _lLBreathSounds;
  dynamic get lLBreathSoundsAbnormal => _lLBreathSoundsAbnormal;
  dynamic get lLBreathSoundsAbnormalApical => _lLBreathSoundsAbnormalApical;
  dynamic get lLBreathSoundsAbnormalMidZone => _lLBreathSoundsAbnormalMidZone;
  dynamic get lLBreathSoundsAbnormalBasal => _lLBreathSoundsAbnormalBasal;
  dynamic get lLBreathSoundsAbnormalSubScapular =>
      _lLBreathSoundsAbnormalSubScapular;
  dynamic get lLBreathSoundsAbnormalDiffuse => _lLBreathSoundsAbnormalDiffuse;
  String? get lLRalesCrepts => _lLRalesCrepts;
  dynamic get lLRalesCreptsPresent => _lLRalesCreptsPresent;
  dynamic get lLRalesCreptsPresentApical => _lLRalesCreptsPresentApical;
  dynamic get lLRalesCreptsPresentApicalFine => _lLRalesCreptsPresentApicalFine;
  dynamic get lLRalesCreptsPresentApicalCoarse =>
      _lLRalesCreptsPresentApicalCoarse;
  dynamic get lLRalesCreptsPresentMidZone => _lLRalesCreptsPresentMidZone;
  dynamic get lLRalesCreptsPresentMidZoneFine =>
      _lLRalesCreptsPresentMidZoneFine;
  dynamic get lLRalesCreptsPresentMidZoneCoarse =>
      _lLRalesCreptsPresentMidZoneCoarse;
  dynamic get lLRalesCreptsPresentBasal => _lLRalesCreptsPresentBasal;
  dynamic get lLRalesCreptsPresentBasalFine => _lLRalesCreptsPresentBasalFine;
  dynamic get lLRalesCreptsPresentBasalCoarse =>
      _lLRalesCreptsPresentBasalCoarse;
  dynamic get lLRalesCreptsPresentSubScapular =>
      _lLRalesCreptsPresentSubScapular;
  dynamic get lLRalesCreptsPresentSubScapularFine =>
      _lLRalesCreptsPresentSubScapularFine;
  dynamic get lLRalesCreptsPresentSubScapularCoarse =>
      _lLRalesCreptsPresentSubScapularCoarse;
  dynamic get lLRalesCreptsPresentDiffuse => _lLRalesCreptsPresentDiffuse;
  dynamic get lLRalesCreptsPresentDiffuseFine =>
      _lLRalesCreptsPresentDiffuseFine;
  dynamic get lLRalesCreptsPresentDiffuseCoarse =>
      _lLRalesCreptsPresentDiffuseCoarse;
  String? get lLRhonchiWheezing => _lLRhonchiWheezing;
  dynamic get lLRhonchiWheezingPresent => _lLRhonchiWheezingPresent;
  String? get lLAddedSounds => _lLAddedSounds;
  String? get lLAddedZoneOfConcern => _lLAddedZoneOfConcern;
  dynamic get lLAddedZoneOfConcernAbnormal => _lLAddedZoneOfConcernAbnormal;
  dynamic get lLAddedSoundsPresent => _lLAddedSoundsPresent;
  String? get cardioVascularSystemsDoYouGetPalpitation =>
      _cardioVascularSystemsDoYouGetPalpitation;
  String? get cVSFaintedInHomeSchoolWorkplaceAtAnyTime =>
      _cVSFaintedInHomeSchoolWorkplaceAtAnyTime;
  String? get cVSJugularPulsations => _cVSJugularPulsations;
  String? get cVSJugularPulsationsVisible => _cVSJugularPulsationsVisible;
  dynamic get cVSJugularPulsationsVisibleAbnormal =>
      _cVSJugularPulsationsVisibleAbnormal;
  String? get cVSSuprasternalPulsations => _cVSSuprasternalPulsations;
  dynamic get cVSSuprasternalPulsationsPresent =>
      _cVSSuprasternalPulsationsPresent;
  String? get cVSPeripheralPulsationsRadial => _cVSPeripheralPulsationsRadial;
  String? get cVSPeripheralPulsationsRadialPresent =>
      _cVSPeripheralPulsationsRadialPresent;
  dynamic get cVSPeripheralPulsationsRadialPresentAbnormal =>
      _cVSPeripheralPulsationsRadialPresentAbnormal;
  String? get cVSPeripheralPulsationsDorsalisPedis =>
      _cVSPeripheralPulsationsDorsalisPedis;
  String? get cVSPeripheralPulsationsDorsalisPedisPresent =>
      _cVSPeripheralPulsationsDorsalisPedisPresent;
  dynamic get cVSPeripheralPulsationsDorsalisPedisAbnormal =>
      _cVSPeripheralPulsationsDorsalisPedisAbnormal;
  String? get cVSPeripheralPulsationsOtherAbnormality =>
      _cVSPeripheralPulsationsOtherAbnormality;
  String? get cvss1 => _cvss1;
  String? get cvss2 => _cvss2;
  String? get cvss3 => _cvss3;
  String? get cVSMurmur => _cVSMurmur;
  dynamic get cVSMurmurPresent => _cVSMurmurPresent;
  dynamic get cVSMurmurPresentOther => _cVSMurmurPresentOther;
  String? get cVSClick => _cVSClick;
  dynamic get cVSClickPresentPosition => _cVSClickPresentPosition;
  String? get cVSApexBeat => _cVSApexBeat;
  dynamic get cVSApexBeatPresentDisplaced => _cVSApexBeatPresentDisplaced;
  String? get alimentaryAndUrinarySystemDoYouHaveNauseaVomiting =>
      _alimentaryAndUrinarySystemDoYouHaveNauseaVomiting;
  String? get aUSDoYouHavePainInYourAbdomen => _aUSDoYouHavePainInYourAbdomen;
  String? get aUSDoYouFeelBurningWhenYouPassUrine =>
      _aUSDoYouFeelBurningWhenYouPassUrine;
  String? get aUSCleftLip => _aUSCleftLip;
  dynamic get aUSCleftLipPresent => _aUSCleftLipPresent;
  String? get aUSCleftPalate => _aUSCleftPalate;
  dynamic get aUSCleftPalatePresent => _aUSCleftPalatePresent;
  String? get aUSAbdominalDistension => _aUSAbdominalDistension;
  String? get aUSExaggerateBowelSounds => _aUSExaggerateBowelSounds;
  String? get aUSGuarding => _aUSGuarding;
  String? get aUSRigidity => _aUSRigidity;
  String? get aUSRightHypochondriumPain => _aUSRightHypochondriumPain;
  dynamic get aUSRHPainYesPainScore => _aUSRHPainYesPainScore;
  String? get aUSRHTenderness => _aUSRHTenderness;
  dynamic get aUSRHTendernessPresent => _aUSRHTendernessPresent;
  String? get aUSRHSwellingLumps => _aUSRHSwellingLumps;
  dynamic get aUSRHSwellingLumpsPresentDescription =>
      _aUSRHSwellingLumpsPresentDescription;
  dynamic get aUSRHSwellingLumpsPresentSize => _aUSRHSwellingLumpsPresentSize;
  dynamic get aUSRHSwellingLumpsPresentTexture =>
      _aUSRHSwellingLumpsPresentTexture;
  String? get aUSRHLiver => _aUSRHLiver;
  dynamic get aUSRHLiverPalpable => _aUSRHLiverPalpable;
  String? get aUSRHGallBladder => _aUSRHGallBladder;
  dynamic get aUSRHGallBladderTender => _aUSRHGallBladderTender;
  String? get aUSRightLumbarPain => _aUSRightLumbarPain;
  dynamic get aUSRLPainYesPainScore => _aUSRLPainYesPainScore;
  String? get aUSRLTenderness => _aUSRLTenderness;
  dynamic get aUSRLTendernessPresent => _aUSRLTendernessPresent;
  String? get aUSRLSwellingLumps => _aUSRLSwellingLumps;
  dynamic get aUSRLSwellingLumpsPresentDescription =>
      _aUSRLSwellingLumpsPresentDescription;
  dynamic get aUSRLSwellingLumpsPresentSize => _aUSRLSwellingLumpsPresentSize;
  dynamic get aUSRLSwellingLumpsPresentTexture =>
      _aUSRLSwellingLumpsPresentTexture;
  String? get aUSRLRightKidney => _aUSRLRightKidney;
  dynamic get aUSRLRightKidneyPalpable => _aUSRLRightKidneyPalpable;
  String? get aUSRightIliacPain => _aUSRightIliacPain;
  dynamic get aUSRIPainYesPainScore => _aUSRIPainYesPainScore;
  String? get ausrimbp => _ausrimbp;
  dynamic get aUSRIMBPPainScore => _aUSRIMBPPainScore;
  String? get aUSRITenderness => _aUSRITenderness;
  dynamic get aUSRITendernessPresent => _aUSRITendernessPresent;
  String? get aUSRISwellingLumps => _aUSRISwellingLumps;
  dynamic get aUSRISwellingLumpsPresentDescription =>
      _aUSRISwellingLumpsPresentDescription;
  dynamic get aUSRISwellingLumpsPresentSize => _aUSRISwellingLumpsPresentSize;
  dynamic get aUSRISwellingLumpsPresentTexture =>
      _aUSRISwellingLumpsPresentTexture;
  String? get aUSEpigastricPain => _aUSEpigastricPain;
  dynamic get aUSEPainYesPainScore => _aUSEPainYesPainScore;
  String? get aUSETenderness => _aUSETenderness;
  dynamic get aUSETendernessPresent => _aUSETendernessPresent;
  dynamic get aUSETendernessPresentRebound => _aUSETendernessPresentRebound;
  String? get aUSESwellingLumps => _aUSESwellingLumps;
  dynamic get aUSESwellingLumpsPresentDescription =>
      _aUSESwellingLumpsPresentDescription;
  dynamic get aUSESwellingLumpsPresentSize => _aUSESwellingLumpsPresentSize;
  dynamic get aUSESwellingLumpsPresentTexture =>
      _aUSESwellingLumpsPresentTexture;
  String? get aUSUmbilicalPain => _aUSUmbilicalPain;
  dynamic get aUSUPainYesPainScore => _aUSUPainYesPainScore;
  String? get aUSUTenderness => _aUSUTenderness;
  dynamic get aUSUTendernessPresent => _aUSUTendernessPresent;
  dynamic get aUSUTendernessPresentRebound => _aUSUTendernessPresentRebound;
  String? get aUSUSwellingLumps => _aUSUSwellingLumps;
  dynamic get aUSUSwellingLumpsPresentDescription =>
      _aUSUSwellingLumpsPresentDescription;
  dynamic get aUSUSwellingLumpsPresentSize => _aUSUSwellingLumpsPresentSize;
  dynamic get aUSUSwellingLumpsPresentTexture =>
      _aUSUSwellingLumpsPresentTexture;
  String? get aUSSuprapubicPain => _aUSSuprapubicPain;
  dynamic get aUSSPainYesPainScore => _aUSSPainYesPainScore;
  String? get aUSSTenderness => _aUSSTenderness;
  dynamic get aUSSTendernessPresent => _aUSSTendernessPresent;
  dynamic get aUSSTendernessPresentRebound => _aUSSTendernessPresentRebound;
  String? get aUSSSwellingLumps => _aUSSSwellingLumps;
  dynamic get aUSSSwellingLumpsPresentDescription =>
      _aUSSSwellingLumpsPresentDescription;
  dynamic get aUSSSwellingLumpsPresentSize => _aUSSSwellingLumpsPresentSize;
  dynamic get aUSSSwellingLumpsPresentTexture =>
      _aUSSSwellingLumpsPresentTexture;
  String? get aUSSUterus => _aUSSUterus;
  dynamic get aUSSUterusPalpable => _aUSSUterusPalpable;
  String? get aUSLeftHypochondriumPain => _aUSLeftHypochondriumPain;
  dynamic get aUSLHPainYesPainScore => _aUSLHPainYesPainScore;
  String? get aUSLHTenderness => _aUSLHTenderness;
  dynamic get aUSLHTendernessPresent => _aUSLHTendernessPresent;
  String? get aUSLHSwellingLumps => _aUSLHSwellingLumps;
  dynamic get aUSLHSwellingLumpsPresentDescription =>
      _aUSLHSwellingLumpsPresentDescription;
  dynamic get aUSLHSwellingLumpsPresentSize => _aUSLHSwellingLumpsPresentSize;
  dynamic get aUSLHSwellingLumpsPresentTexture =>
      _aUSLHSwellingLumpsPresentTexture;
  String? get aUSLHSpleen => _aUSLHSpleen;
  dynamic get aUSLHSpleenPalpable => _aUSLHSpleenPalpable;
  String? get aUSLeftLumbarPain => _aUSLeftLumbarPain;
  dynamic get aUSLLPainYesPainScore => _aUSLLPainYesPainScore;
  String? get aUSLLTenderness => _aUSLLTenderness;
  dynamic get aUSLLTendernessPresent => _aUSLLTendernessPresent;
  String? get aUSLLSwellingLumps => _aUSLLSwellingLumps;
  dynamic get aUSLLSwellingLumpsPresentDescription =>
      _aUSLLSwellingLumpsPresentDescription;
  dynamic get aUSLLSwellingLumpsPresentSize => _aUSLLSwellingLumpsPresentSize;
  dynamic get aUSLLSwellingLumpsPresentTexture =>
      _aUSLLSwellingLumpsPresentTexture;
  String? get aUSLLLeftKidney => _aUSLLLeftKidney;
  dynamic get aUSLLLeftKidneyPalpable => _aUSLLLeftKidneyPalpable;
  String? get aUSLeftIliacPain => _aUSLeftIliacPain;
  dynamic get aUSLIPainYesPainScore => _aUSLIPainYesPainScore;
  String? get aUSLITenderness => _aUSLITenderness;
  dynamic get aUSLITendernessPresent => _aUSLITendernessPresent;
  String? get aUSLISwellingLumps => _aUSLISwellingLumps;
  dynamic get aUSLISwellingLumpsPresentDescription =>
      _aUSLISwellingLumpsPresentDescription;
  dynamic get aUSLISwellingLumpsPresentSize => _aUSLISwellingLumpsPresentSize;
  dynamic get aUSLISwellingLumpsPresentTexture =>
      _aUSLISwellingLumpsPresentTexture;
  String? get aUSHernia => _aUSHernia;
  dynamic get aUSHerniaPresent => _aUSHerniaPresent;
  String? get aUSUrinaryBladder => _aUSUrinaryBladder;
  dynamic get aUSUrinaryBladderPalpable => _aUSUrinaryBladderPalpable;
  dynamic get pubertalAssessmentGirls => _pubertalAssessmentGirls;
  dynamic get pAGTannerScore => _pAGTannerScore;
  dynamic get pAGMenarcheAttained => _pAGMenarcheAttained;
  dynamic get pAGMAYesAgeOfMenarche => _pAGMAYesAgeOfMenarche;
  dynamic get pAGMAYesLMPDate => _pAGMAYesLMPDate;
  dynamic get pAGMAYesCharacterRegularity => _pAGMAYesCharacterRegularity;
  dynamic get pAGMAYesCharacterFrequencyInDays =>
      _pAGMAYesCharacterFrequencyInDays;
  dynamic get pAGMAYesDurationInDays => _pAGMAYesDurationInDays;
  dynamic get pAGMAYesFlow => _pAGMAYesFlow;
  dynamic get pAGMAYesComfort => _pAGMAYesComfort;
  dynamic get pAGMAYesPainInOtherPartsOfBodyDuringMenses =>
      _pAGMAYesPainInOtherPartsOfBodyDuringMenses;
  dynamic get pAGMAYesPainInOtherPartsOfBodyDuringMensesYes =>
      _pAGMAYesPainInOtherPartsOfBodyDuringMensesYes;
  dynamic get pAGMAYesPainInOtherPartsBodyDuringMensesYesOther =>
      _pAGMAYesPainInOtherPartsBodyDuringMensesYesOther;
  dynamic get pAGYesCrackingOfVoiceOrChnageInVoice =>
      _pAGYesCrackingOfVoiceOrChnageInVoice;
  dynamic get pAGHaveYouExperiencedAChangeInBehaviourRecently =>
      _pAGHaveYouExperiencedAChangeInBehaviourRecently;
  dynamic get pAGChangeBehaviourYes => _pAGChangeBehaviourYes;
  dynamic get pAGChangeBehaviourYesQuietWithdrawn =>
      _pAGChangeBehaviourYesQuietWithdrawn;
  dynamic get pAGChangeBehaviourOutgoing => _pAGChangeBehaviourOutgoing;
  dynamic get pAGChangeBehaviourAggressive => _pAGChangeBehaviourAggressive;
  dynamic get pAGChangeBehaviourBoldAndDaring =>
      _pAGChangeBehaviourBoldAndDaring;
  dynamic get pAGChangeBehaviourCareless => _pAGChangeBehaviourCareless;
  dynamic get pAGPreferCompanyOf => _pAGPreferCompanyOf;
  dynamic get pAGAnyOtherAbnormalFinding => _pAGAnyOtherAbnormalFinding;
  dynamic get pAGAnyOtherAbnormalFindingYes => _pAGAnyOtherAbnormalFindingYes;
  String? get pubertalAssessmentBoys => _pubertalAssessmentBoys;
  dynamic get pABTannerScore => _pABTannerScore;
  String? get pABYesCrackingOfVoiceOrChnageInVoice =>
      _pABYesCrackingOfVoiceOrChnageInVoice;
  String? get pABNightlyEmissions => _pABNightlyEmissions;
  String? get pABHaveYouExperiencedAChangeInBehaviourRecently =>
      _pABHaveYouExperiencedAChangeInBehaviourRecently;
  dynamic get pABChangeBehaviourYes => _pABChangeBehaviourYes;
  dynamic get pABChangeBehaviourYesQuietWithdrawn =>
      _pABChangeBehaviourYesQuietWithdrawn;
  dynamic get pABChangeBehaviourOutgoing => _pABChangeBehaviourOutgoing;
  dynamic get pABChangeBehaviourAggressive => _pABChangeBehaviourAggressive;
  dynamic get pABChangeBehaviourBoldAndDaring =>
      _pABChangeBehaviourBoldAndDaring;
  dynamic get pABChangeBehaviourCareless => _pABChangeBehaviourCareless;
  String? get pABPreferCompanyOf => _pABPreferCompanyOf;
  String? get pABAnyOtherAbnormalFinding => _pABAnyOtherAbnormalFinding;
  dynamic get pABAnyOtherAbnormalFindingYes => _pABAnyOtherAbnormalFindingYes;
  String? get historyOfMedication => _historyOfMedication;
  dynamic get historyOfMedicationYes => _historyOfMedicationYes;
  dynamic get nameOfMedication => _nameOfMedication;
  String? get milestones => _milestones;
  String? get otherObservations => _otherObservations;
  String? get specialistReferralNeeded => _specialistReferralNeeded;
  dynamic get specialistReferralNeededType => _specialistReferralNeededType;
  dynamic get specialistReferralNeededFlag => _specialistReferralNeededFlag;
  dynamic get other => _other;
  String? get completed => _completed;
  String? get reviewStatus => _reviewStatus;
  dynamic get reviewedBy => _reviewedBy;
  String? get reviewedOn => _reviewedOn;
  dynamic get comments => _comments;
  String? get endTime => _endTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['StationID'] = _stationID;
    map['HCID'] = _hcid;
    map['HCPID'] = _hcpid;
    map['InfoseekId'] = _infoseekId;
    map['EntryTime'] = _entryTime;
    map['Central_Nervous_System_Alert'] = _centralNervousSystemAlert;
    map['CNS_Oriented'] = _cNSOriented;
    map['CNS_Listens'] = _cNSListens;
    map['CNS_Understands'] = _cNSUnderstands;
    map['CNS_Responds'] = _cNSResponds;
    map['CNS_Speech'] = _cNSSpeech;
    map['CNS_Speech_Abnormal'] = _cNSSpeechAbnormal;
    map['CNS_Speech_Abnormal_Other'] = _cNSSpeechAbnormalOther;
    map['CNS_History_of_Headache'] = _cNSHistoryOfHeadache;
    map['CNS_History_of_Headache_yes_Frequency'] =
        _cNSHistoryOfHeadacheYesFrequency;
    map['CNS_History_of_Headache_yes_Frequency_Continuous'] =
        _cNSHistoryOfHeadacheYesFrequencyContinuous;
    map['CNS_History_of_Headache_yes_Associated_With'] =
        _cNSHistoryOfHeadacheYesAssociatedWith;
    map['CNS_History_of_Headache_yes_Associated_With_Occurrence'] =
        _cNSHistoryOfHeadacheYesAssociatedWithOccurrence;
    map['CNS_History_of_Headache_yes_Associated_With_Other'] =
        _cNSHistoryOfHeadacheYesAssociatedWithOther;
    map['CNS_History_of_Headache_yes_From'] = _cNSHistoryOfHeadacheYesFrom;
    map['CNS_History_of_Headache_yes_Duration'] =
        _cNSHistoryOfHeadacheYesDuration;
    map['CNS_History_of_Dizziness'] = _cNSHistoryOfDizziness;
    map['CNS_History_of_Dizziness_yes_Frequency'] =
        _cNSHistoryOfDizzinessYesFrequency;
    map['CNS_History_of_Dizziness_yes_Frequency_Continuous'] =
        _cNSHistoryOfDizzinessYesFrequencyContinuous;
    map['CNS_History_of_Dizziness_yes_Associated_With'] =
        _cNSHistoryOfDizzinessYesAssociatedWith;
    map['CNS_History_of_Dizziness_yes_Associated_With_Occurrence'] =
        _cNSHistoryOfDizzinessYesAssociatedWithOccurrence;
    map['CNS_History_of_Dizziness_yes_Associated_With_Other'] =
        _cNSHistoryOfDizzinessYesAssociatedWithOther;
    map['Respiratory_System_Do_you_Feel_Breathless'] =
        _respiratorySystemDoYouFeelBreathless;
    map['RS_Do_you_have_a_Cough'] = _rSDoYouHaveACough;
    map['RS_Shape_of_Chest'] = _rSShapeOfChest;
    map['RS_Shape_of_Chest_Abnormal'] = _rSShapeOfChestAbnormal;
    map['RS_Shape_of_Chest_Abnormal_Other'] = _rSShapeOfChestAbnormalOther;
    map['RS_Type_of_Respiration'] = _rSTypeOfRespiration;
    map['RS_Type_of_Respiration_Abdominal'] = _rSTypeOfRespirationAbdominal;
    map['RS_Type_of_Respiration_Abdominal_Other'] =
        _rSTypeOfRespirationAbdominalOther;
    map['RS_Type_of_Respiration_Thoracic'] = _rSTypeOfRespirationThoracic;
    map['RS_Type_of_Respiration_Thoracic_Other'] =
        _rSTypeOfRespirationThoracicOther;
    map['RS_Type_of_Respiration_Abdomino_Thoracic'] =
        _rSTypeOfRespirationAbdominoThoracic;
    map['RS_Type_of_Respiration_Abdomino_Thoracic_Other'] =
        _rSTypeOfRespirationAbdominoThoracicOther;
    map['RS_Trachea'] = _rSTrachea;
    map['RS_Evidence_of_Tracheostomy'] = _rSEvidenceOfTracheostomy;
    map['Right_Lung_Air_Entry_Normal'] = _rightLungAirEntryNormal;
    map['RL_Breath_Sounds'] = _rLBreathSounds;
    map['RL_Breath_Sounds_Abnormal'] = _rLBreathSoundsAbnormal;
    map['RL_Breath_Sounds_Abnormal_Apical'] = _rLBreathSoundsAbnormalApical;
    map['RL_Breath_Sounds_Abnormal_Mid_Zone'] = _rLBreathSoundsAbnormalMidZone;
    map['RL_Breath_Sounds_Abnormal_Basal'] = _rLBreathSoundsAbnormalBasal;
    map['RL_Breath_Sounds_Abnormal_Sub_Scapular'] =
        _rLBreathSoundsAbnormalSubScapular;
    map['RL_Breath_Sounds_Abnormal_Diffuse'] = _rLBreathSoundsAbnormalDiffuse;
    map['RL_Rales_Crepts'] = _rLRalesCrepts;
    map['RL_Rales_Crepts_Present'] = _rLRalesCreptsPresent;
    map['RL_Rales_Crepts_Present_Apical'] = _rLRalesCreptsPresentApical;
    map['RL_Rales_Crepts_Present_Apical_Fine'] =
        _rLRalesCreptsPresentApicalFine;
    map['RL_Rales_Crepts_Present_Apical_Coarse'] =
        _rLRalesCreptsPresentApicalCoarse;
    map['RL_Rales_Crepts_Present_Mid_Zone'] = _rLRalesCreptsPresentMidZone;
    map['RL_Rales_Crepts_Present_Mid_Zone_Fine'] =
        _rLRalesCreptsPresentMidZoneFine;
    map['RL_Rales_Crepts_Present_Mid_Zone_Coarse'] =
        _rLRalesCreptsPresentMidZoneCoarse;
    map['RL_Rales_Crepts_Present_Basal'] = _rLRalesCreptsPresentBasal;
    map['RL_Rales_Crepts_Present_Basal_Fine'] = _rLRalesCreptsPresentBasalFine;
    map['RL_Rales_Crepts_Present_Basal_Coarse'] =
        _rLRalesCreptsPresentBasalCoarse;
    map['RL_Rales_Crepts_Present_Sub_Scapular'] =
        _rLRalesCreptsPresentSubScapular;
    map['RL_Rales_Crepts_Present_Sub_Scapular_Fine'] =
        _rLRalesCreptsPresentSubScapularFine;
    map['RL_Rales_Crepts_Present_Sub_Scapular_Coarse'] =
        _rLRalesCreptsPresentSubScapularCoarse;
    map['RL_Rales_Crepts_Present_Diffuse'] = _rLRalesCreptsPresentDiffuse;
    map['RL_Rales_Crepts_Present_Diffuse_Fine'] =
        _rLRalesCreptsPresentDiffuseFine;
    map['RL_Rales_Crepts_Present_Diffuse_Coarse'] =
        _rLRalesCreptsPresentDiffuseCoarse;
    map['RL_Rhonchi_Wheezing'] = _rLRhonchiWheezing;
    map['RL_Rhonchi_Wheezing_Present'] = _rLRhonchiWheezingPresent;
    map['RL_Added_Sounds'] = _rLAddedSounds;
    map['RL_Added_Zone_of_Concern'] = _rLAddedZoneOfConcern;
    map['RL_Added_Zone_of_Concern_Abnormal'] = _rLAddedZoneOfConcernAbnormal;
    map['RL_Added_Sounds_Present'] = _rLAddedSoundsPresent;
    map['Left_Lung_Air_Entry_Normal'] = _leftLungAirEntryNormal;
    map['LL_Breath_Sounds'] = _lLBreathSounds;
    map['LL_Breath_Sounds_Abnormal'] = _lLBreathSoundsAbnormal;
    map['LL_Breath_Sounds_Abnormal_Apical'] = _lLBreathSoundsAbnormalApical;
    map['LL_Breath_Sounds_Abnormal_Mid_Zone'] = _lLBreathSoundsAbnormalMidZone;
    map['LL_Breath_Sounds_Abnormal_Basal'] = _lLBreathSoundsAbnormalBasal;
    map['LL_Breath_Sounds_Abnormal_Sub_Scapular'] =
        _lLBreathSoundsAbnormalSubScapular;
    map['LL_Breath_Sounds_Abnormal_Diffuse'] = _lLBreathSoundsAbnormalDiffuse;
    map['LL_Rales_Crepts'] = _lLRalesCrepts;
    map['LL_Rales_Crepts_Present'] = _lLRalesCreptsPresent;
    map['LL_Rales_Crepts_Present_Apical'] = _lLRalesCreptsPresentApical;
    map['LL_Rales_Crepts_Present_Apical_Fine'] =
        _lLRalesCreptsPresentApicalFine;
    map['LL_Rales_Crepts_Present_Apical_Coarse'] =
        _lLRalesCreptsPresentApicalCoarse;
    map['LL_Rales_Crepts_Present_Mid_Zone'] = _lLRalesCreptsPresentMidZone;
    map['LL_Rales_Crepts_Present_Mid_Zone_Fine'] =
        _lLRalesCreptsPresentMidZoneFine;
    map['LL_Rales_Crepts_Present_Mid_Zone_Coarse'] =
        _lLRalesCreptsPresentMidZoneCoarse;
    map['LL_Rales_Crepts_Present_Basal'] = _lLRalesCreptsPresentBasal;
    map['LL_Rales_Crepts_Present_Basal_Fine'] = _lLRalesCreptsPresentBasalFine;
    map['LL_Rales_Crepts_Present_Basal_Coarse'] =
        _lLRalesCreptsPresentBasalCoarse;
    map['LL_Rales_Crepts_Present_Sub_Scapular'] =
        _lLRalesCreptsPresentSubScapular;
    map['LL_Rales_Crepts_Present_Sub_Scapular_Fine'] =
        _lLRalesCreptsPresentSubScapularFine;
    map['LL_Rales_Crepts_Present_Sub_Scapular_Coarse'] =
        _lLRalesCreptsPresentSubScapularCoarse;
    map['LL_Rales_Crepts_Present_Diffuse'] = _lLRalesCreptsPresentDiffuse;
    map['LL_Rales_Crepts_Present_Diffuse_Fine'] =
        _lLRalesCreptsPresentDiffuseFine;
    map['LL_Rales_Crepts_Present_Diffuse_Coarse'] =
        _lLRalesCreptsPresentDiffuseCoarse;
    map['LL_Rhonchi_Wheezing'] = _lLRhonchiWheezing;
    map['LL_Rhonchi_Wheezing_Present'] = _lLRhonchiWheezingPresent;
    map['LL_Added_Sounds'] = _lLAddedSounds;
    map['LL_Added_Zone_of_Concern'] = _lLAddedZoneOfConcern;
    map['LL_Added_Zone_of_Concern_Abnormal'] = _lLAddedZoneOfConcernAbnormal;
    map['LL_Added_Sounds_Present'] = _lLAddedSoundsPresent;
    map['Cardio_Vascular_Systems_Do_you_get_Palpitation'] =
        _cardioVascularSystemsDoYouGetPalpitation;
    map['CVS_Fainted_in_Home_School_Workplace_at_any_time'] =
        _cVSFaintedInHomeSchoolWorkplaceAtAnyTime;
    map['CVS_Jugular_Pulsations'] = _cVSJugularPulsations;
    map['CVS_Jugular_Pulsations_Visible'] = _cVSJugularPulsationsVisible;
    map['CVS_Jugular_Pulsations_Visible_Abnormal'] =
        _cVSJugularPulsationsVisibleAbnormal;
    map['CVS_Suprasternal_Pulsations'] = _cVSSuprasternalPulsations;
    map['CVS_Suprasternal_Pulsations_Present'] =
        _cVSSuprasternalPulsationsPresent;
    map['CVS_Peripheral_Pulsations_Radial'] = _cVSPeripheralPulsationsRadial;
    map['CVS_Peripheral_Pulsations_Radial_Present'] =
        _cVSPeripheralPulsationsRadialPresent;
    map['CVS_Peripheral_Pulsations_Radial_Present_Abnormal'] =
        _cVSPeripheralPulsationsRadialPresentAbnormal;
    map['CVS_Peripheral_Pulsations_Dorsalis_Pedis'] =
        _cVSPeripheralPulsationsDorsalisPedis;
    map['CVS_Peripheral_Pulsations_Dorsalis_Pedis_Present'] =
        _cVSPeripheralPulsationsDorsalisPedisPresent;
    map['CVS_Peripheral_Pulsations_Dorsalis_Pedis_Abnormal'] =
        _cVSPeripheralPulsationsDorsalisPedisAbnormal;
    map['CVS_Peripheral_Pulsations_Other_abnormality'] =
        _cVSPeripheralPulsationsOtherAbnormality;
    map['CVS_S1'] = _cvss1;
    map['CVS_S2'] = _cvss2;
    map['CVS_S3'] = _cvss3;
    map['CVS_Murmur'] = _cVSMurmur;
    map['CVS_Murmur_Present'] = _cVSMurmurPresent;
    map['CVS_Murmur_Present_Other'] = _cVSMurmurPresentOther;
    map['CVS_Click'] = _cVSClick;
    map['CVS_Click_Present_Position'] = _cVSClickPresentPosition;
    map['CVS_Apex_Beat'] = _cVSApexBeat;
    map['CVS_Apex_Beat_Present_Displaced'] = _cVSApexBeatPresentDisplaced;
    map['Alimentary_and_Urinary_System_Do_you_have_Nausea_Vomiting'] =
        _alimentaryAndUrinarySystemDoYouHaveNauseaVomiting;
    map['AUS_Do_you_have_Pain_in_your_Abdomen'] =
        _aUSDoYouHavePainInYourAbdomen;
    map['AUS_Do_you_feel_Burning_when_you_pass_Urine'] =
        _aUSDoYouFeelBurningWhenYouPassUrine;
    map['AUS_Cleft_Lip'] = _aUSCleftLip;
    map['AUS_Cleft_Lip_Present'] = _aUSCleftLipPresent;
    map['AUS_Cleft_Palate'] = _aUSCleftPalate;
    map['AUS_Cleft_Palate_Present'] = _aUSCleftPalatePresent;
    map['AUS_Abdominal_Distension'] = _aUSAbdominalDistension;
    map['AUS_Exaggerate_Bowel_Sounds'] = _aUSExaggerateBowelSounds;
    map['AUS_Guarding'] = _aUSGuarding;
    map['AUS_Rigidity'] = _aUSRigidity;
    map['AUS_Right_Hypochondrium_Pain'] = _aUSRightHypochondriumPain;
    map['AUS_RH_Pain_Yes_Pain_Score'] = _aUSRHPainYesPainScore;
    map['AUS_RH_Tenderness'] = _aUSRHTenderness;
    map['AUS_RH_Tenderness_Present'] = _aUSRHTendernessPresent;
    map['AUS_RH_Swelling_Lumps'] = _aUSRHSwellingLumps;
    map['AUS_RH_Swelling_Lumps_Present_Description'] =
        _aUSRHSwellingLumpsPresentDescription;
    map['AUS_RH_Swelling_Lumps_Present_Size'] = _aUSRHSwellingLumpsPresentSize;
    map['AUS_RH_Swelling_Lumps_Present_Texture'] =
        _aUSRHSwellingLumpsPresentTexture;
    map['AUS_RH_Liver'] = _aUSRHLiver;
    map['AUS_RH_Liver_Palpable'] = _aUSRHLiverPalpable;
    map['AUS_RH_Gall_Bladder'] = _aUSRHGallBladder;
    map['AUS_RH_Gall_Bladder_Tender'] = _aUSRHGallBladderTender;
    map['AUS_Right_Lumbar_Pain'] = _aUSRightLumbarPain;
    map['AUS_RL_Pain_Yes_Pain_Score'] = _aUSRLPainYesPainScore;
    map['AUS_RL_Tenderness'] = _aUSRLTenderness;
    map['AUS_RL_Tenderness_Present'] = _aUSRLTendernessPresent;
    map['AUS_RL_Swelling_Lumps'] = _aUSRLSwellingLumps;
    map['AUS_RL_Swelling_Lumps_Present_Description'] =
        _aUSRLSwellingLumpsPresentDescription;
    map['AUS_RL_Swelling_Lumps_Present_Size'] = _aUSRLSwellingLumpsPresentSize;
    map['AUS_RL_Swelling_Lumps_Present_Texture'] =
        _aUSRLSwellingLumpsPresentTexture;
    map['AUS_RL_Right_Kidney'] = _aUSRLRightKidney;
    map['AUS_RL_Right_Kidney_Palpable'] = _aUSRLRightKidneyPalpable;
    map['AUS_Right_Iliac_Pain'] = _aUSRightIliacPain;
    map['AUS_RI_Pain_Yes_Pain_Score'] = _aUSRIPainYesPainScore;
    map['AUS_RI_MBP'] = _ausrimbp;
    map['AUS_RI_MBP_Pain_Score'] = _aUSRIMBPPainScore;
    map['AUS_RI_Tenderness'] = _aUSRITenderness;
    map['AUS_RI_Tenderness_Present'] = _aUSRITendernessPresent;
    map['AUS_RI_Swelling_Lumps'] = _aUSRISwellingLumps;
    map['AUS_RI_Swelling_Lumps_Present_Description'] =
        _aUSRISwellingLumpsPresentDescription;
    map['AUS_RI_Swelling_Lumps_Present_Size'] = _aUSRISwellingLumpsPresentSize;
    map['AUS_RI_Swelling_Lumps_Present_Texture'] =
        _aUSRISwellingLumpsPresentTexture;
    map['AUS_Epigastric_Pain'] = _aUSEpigastricPain;
    map['AUS_E_Pain_Yes_Pain_Score'] = _aUSEPainYesPainScore;
    map['AUS_E_Tenderness'] = _aUSETenderness;
    map['AUS_E_Tenderness_Present'] = _aUSETendernessPresent;
    map['AUS_E_Tenderness_Present_Rebound'] = _aUSETendernessPresentRebound;
    map['AUS_E_Swelling_Lumps'] = _aUSESwellingLumps;
    map['AUS_E_Swelling_Lumps_Present_Description'] =
        _aUSESwellingLumpsPresentDescription;
    map['AUS_E_Swelling_Lumps_Present_Size'] = _aUSESwellingLumpsPresentSize;
    map['AUS_E_Swelling_Lumps_Present_Texture'] =
        _aUSESwellingLumpsPresentTexture;
    map['AUS_Umbilical_Pain'] = _aUSUmbilicalPain;
    map['AUS_U_Pain_Yes_Pain_Score'] = _aUSUPainYesPainScore;
    map['AUS_U_Tenderness'] = _aUSUTenderness;
    map['AUS_U_Tenderness_Present'] = _aUSUTendernessPresent;
    map['AUS_U_Tenderness_Present_Rebound'] = _aUSUTendernessPresentRebound;
    map['AUS_U_Swelling_Lumps'] = _aUSUSwellingLumps;
    map['AUS_U_Swelling_Lumps_Present_Description'] =
        _aUSUSwellingLumpsPresentDescription;
    map['AUS_U_Swelling_Lumps_Present_Size'] = _aUSUSwellingLumpsPresentSize;
    map['AUS_U_Swelling_Lumps_Present_Texture'] =
        _aUSUSwellingLumpsPresentTexture;
    map['AUS_Suprapubic_Pain'] = _aUSSuprapubicPain;
    map['AUS_S_Pain_Yes_Pain_Score'] = _aUSSPainYesPainScore;
    map['AUS_S_Tenderness'] = _aUSSTenderness;
    map['AUS_S_Tenderness_Present'] = _aUSSTendernessPresent;
    map['AUS_S_Tenderness_Present_Rebound'] = _aUSSTendernessPresentRebound;
    map['AUS_S_Swelling_Lumps'] = _aUSSSwellingLumps;
    map['AUS_S_Swelling_Lumps_Present_Description'] =
        _aUSSSwellingLumpsPresentDescription;
    map['AUS_S_Swelling_Lumps_Present_Size'] = _aUSSSwellingLumpsPresentSize;
    map['AUS_S_Swelling_Lumps_Present_Texture'] =
        _aUSSSwellingLumpsPresentTexture;
    map['AUS_S_Uterus'] = _aUSSUterus;
    map['AUS_S_Uterus_Palpable'] = _aUSSUterusPalpable;
    map['AUS_Left_Hypochondrium_Pain'] = _aUSLeftHypochondriumPain;
    map['AUS_LH_Pain_Yes_Pain_Score'] = _aUSLHPainYesPainScore;
    map['AUS_LH_Tenderness'] = _aUSLHTenderness;
    map['AUS_LH_Tenderness_Present'] = _aUSLHTendernessPresent;
    map['AUS_LH_Swelling_Lumps'] = _aUSLHSwellingLumps;
    map['AUS_LH_Swelling_Lumps_Present_Description'] =
        _aUSLHSwellingLumpsPresentDescription;
    map['AUS_LH_Swelling_Lumps_Present_Size'] = _aUSLHSwellingLumpsPresentSize;
    map['AUS_LH_Swelling_Lumps_Present_Texture'] =
        _aUSLHSwellingLumpsPresentTexture;
    map['AUS_LH_Spleen'] = _aUSLHSpleen;
    map['AUS_LH_Spleen_Palpable'] = _aUSLHSpleenPalpable;
    map['AUS_Left_Lumbar_Pain'] = _aUSLeftLumbarPain;
    map['AUS_LL_Pain_Yes_Pain_Score'] = _aUSLLPainYesPainScore;
    map['AUS_LL_Tenderness'] = _aUSLLTenderness;
    map['AUS_LL_Tenderness_Present'] = _aUSLLTendernessPresent;
    map['AUS_LL_Swelling_Lumps'] = _aUSLLSwellingLumps;
    map['AUS_LL_Swelling_Lumps_Present_Description'] =
        _aUSLLSwellingLumpsPresentDescription;
    map['AUS_LL_Swelling_Lumps_Present_Size'] = _aUSLLSwellingLumpsPresentSize;
    map['AUS_LL_Swelling_Lumps_Present_Texture'] =
        _aUSLLSwellingLumpsPresentTexture;
    map['AUS_LL_Left_Kidney'] = _aUSLLLeftKidney;
    map['AUS_LL_Left_Kidney_Palpable'] = _aUSLLLeftKidneyPalpable;
    map['AUS_Left_Iliac_Pain'] = _aUSLeftIliacPain;
    map['AUS_LI_Pain_Yes_Pain_Score'] = _aUSLIPainYesPainScore;
    map['AUS_LI_Tenderness'] = _aUSLITenderness;
    map['AUS_LI_Tenderness_Present'] = _aUSLITendernessPresent;
    map['AUS_LI_Swelling_Lumps'] = _aUSLISwellingLumps;
    map['AUS_LI_Swelling_Lumps_Present_Description'] =
        _aUSLISwellingLumpsPresentDescription;
    map['AUS_LI_Swelling_Lumps_Present_Size'] = _aUSLISwellingLumpsPresentSize;
    map['AUS_LI_Swelling_Lumps_Present_Texture'] =
        _aUSLISwellingLumpsPresentTexture;
    map['AUS_Hernia'] = _aUSHernia;
    map['AUS_Hernia_Present'] = _aUSHerniaPresent;
    map['AUS_Urinary_Bladder'] = _aUSUrinaryBladder;
    map['AUS_Urinary_Bladder_Palpable'] = _aUSUrinaryBladderPalpable;
    map['Pubertal_Assessment_Girls'] = _pubertalAssessmentGirls;
    map['PAG_Tanner_Score'] = _pAGTannerScore;
    map['PAG_Menarche_Attained'] = _pAGMenarcheAttained;
    map['PAG_MA_Yes_Age_of_Menarche'] = _pAGMAYesAgeOfMenarche;
    map['PAG_MA_Yes_LMP_Date'] = _pAGMAYesLMPDate;
    map['PAG_MA_Yes_Character_Regularity'] = _pAGMAYesCharacterRegularity;
    map['PAG_MA_Yes_Character_Frequency_in_Days'] =
        _pAGMAYesCharacterFrequencyInDays;
    map['PAG_MA_Yes_Duration_in_days'] = _pAGMAYesDurationInDays;
    map['PAG_MA_Yes_Flow'] = _pAGMAYesFlow;
    map['PAG_MA_Yes_Comfort'] = _pAGMAYesComfort;
    map['PAG_MA_Yes_Pain_in_other_parts_of_body_during_menses'] =
        _pAGMAYesPainInOtherPartsOfBodyDuringMenses;
    map['PAG_MA_Yes_Pain_in_other_parts_of_body_during_menses_Yes'] =
        _pAGMAYesPainInOtherPartsOfBodyDuringMensesYes;
    map['PAG_MA_Yes_Pain_in_other_parts_body_during_menses_Yes_Other'] =
        _pAGMAYesPainInOtherPartsBodyDuringMensesYesOther;
    map['PAG_Yes_Cracking_of_Voice_or_chnage_in_voice'] =
        _pAGYesCrackingOfVoiceOrChnageInVoice;
    map['PAG_HaveYouExperienced_A_change_in_behaviour_recently'] =
        _pAGHaveYouExperiencedAChangeInBehaviourRecently;
    map['PAG_Change_behaviour_Yes'] = _pAGChangeBehaviourYes;
    map['PAG_Change_behaviour_Yes_Quiet_Withdrawn'] =
        _pAGChangeBehaviourYesQuietWithdrawn;
    map['PAG_Change_behaviour_Outgoing'] = _pAGChangeBehaviourOutgoing;
    map['PAG_Change_behaviour_Aggressive'] = _pAGChangeBehaviourAggressive;
    map['PAG_Change_behaviour_Bold_and_Daring'] =
        _pAGChangeBehaviourBoldAndDaring;
    map['PAG_Change_behaviour_Careless'] = _pAGChangeBehaviourCareless;
    map['PAG_Prefer_company_of'] = _pAGPreferCompanyOf;
    map['PAG_Any_other_abnormal_finding'] = _pAGAnyOtherAbnormalFinding;
    map['PAG_Any_other_abnormal_finding_Yes'] = _pAGAnyOtherAbnormalFindingYes;
    map['Pubertal_Assessment_Boys'] = _pubertalAssessmentBoys;
    map['PAB_Tanner_Score'] = _pABTannerScore;
    map['PAB_Yes_Cracking_of_Voice_or_chnage_in_voice'] =
        _pABYesCrackingOfVoiceOrChnageInVoice;
    map['PAB_Nightly_Emissions'] = _pABNightlyEmissions;
    map['PAB_HaveYouExperienced_A_change_in_behaviour_recently'] =
        _pABHaveYouExperiencedAChangeInBehaviourRecently;
    map['PAB_Change_behaviour_Yes'] = _pABChangeBehaviourYes;
    map['PAB_Change_behaviour_Yes_Quiet_Withdrawn'] =
        _pABChangeBehaviourYesQuietWithdrawn;
    map['PAB_Change_behaviour_Outgoing'] = _pABChangeBehaviourOutgoing;
    map['PAB_Change_behaviour_Aggressive'] = _pABChangeBehaviourAggressive;
    map['PAB_Change_behaviour_Bold_and_Daring'] =
        _pABChangeBehaviourBoldAndDaring;
    map['PAB_Change_behaviour_Careless'] = _pABChangeBehaviourCareless;
    map['PAB_Prefer_company_of'] = _pABPreferCompanyOf;
    map['PAB_Any_other_abnormal_finding'] = _pABAnyOtherAbnormalFinding;
    map['PAB_Any_other_abnormal_finding_Yes'] = _pABAnyOtherAbnormalFindingYes;
    map['History_of_Medication'] = _historyOfMedication;
    map['History_of_Medication_Yes'] = _historyOfMedicationYes;
    map['Name_of_Medication'] = _nameOfMedication;
    map['Milestones'] = _milestones;
    map['Other_Observations'] = _otherObservations;
    map['Specialist_Referral_Needed'] = _specialistReferralNeeded;
    map['Specialist_Referral_Needed_Type'] = _specialistReferralNeededType;
    map['Specialist_Referral_Needed_Flag'] = _specialistReferralNeededFlag;
    map['Other'] = _other;
    map['Completed'] = _completed;
    map['Review_Status'] = _reviewStatus;
    map['Reviewed_By'] = _reviewedBy;
    map['Reviewed_On'] = _reviewedOn;
    map['Comments'] = _comments;
    map['EndTime'] = _endTime;
    return map;
  }
}
