/// Pubertal_Assessment_Girls : "Indicated"
/// PAG_Tanner_Score : "0"
/// PAG_Menarche_Attained : "No"
/// PAG_MA_Yes_Age_of_Menarche : "0"
/// PAG_MA_Yes_LMP_Date : "2023-12-16T10:54:44.417Z"
/// PAG_MA_Yes_Character_Regularity : "Girls"
/// PAG_MA_Yes_Character_Frequency_in_Days : "<16"
/// PAG_MA_Yes_Duration_in_days : "<1"
/// PAG_MA_Yes_Flow : "Scanty"
/// PAG_MA_Yes_Comfort : "Painless"
/// PAG_MA_Yes_Pain_in_other_parts_of_body_during_menses : "No"
/// PAG_MA_Yes_Pain_in_other_parts_of_body_during_menses_Yes : "string"
/// PAG_MA_Yes_Pain_in_other_parts_body_during_menses_Yes_Other : "string"
/// PAG_Yes_Cracking_of_Voice_or_chnage_in_voice : "No"
/// PAG_HaveYouExperienced_A_change_in_behaviour_recently : "No"
/// PAG_Change_behaviour_Yes : "string"
/// PAG_Change_behaviour_Yes_Quiet_Withdrawn : "More"
/// PAG_Change_behaviour_Outgoing : "More"
/// PAG_Change_behaviour_Aggressive : "More"
/// PAG_Change_behaviour_Bold_and_Daring : "More"
/// PAG_Prefer_company_of : "Girls"
/// PAG_Any_other_abnormal_finding : "No"
/// PAG_Any_other_abnormal_finding_Yes : "string"

class PubertalAssessmentGirls {
  PubertalAssessmentGirls({
      String? pubertalAssessmentGirls, 
      String? pAGTannerScore, 
      String? pAGMenarcheAttained, 
      String? pAGMAYesAgeOfMenarche, 
      String? pAGMAYesLMPDate, 
      String? pAGMAYesCharacterRegularity, 
      String? pAGMAYesCharacterFrequencyInDays, 
      String? pAGMAYesDurationInDays, 
      String? pAGMAYesFlow, 
      String? pAGMAYesComfort, 
      String? pAGMAYesPainInOtherPartsOfBodyDuringMenses, 
      String? pAGMAYesPainInOtherPartsOfBodyDuringMensesYes, 
      String? pAGMAYesPainInOtherPartsBodyDuringMensesYesOther, 
      String? pAGYesCrackingOfVoiceOrChnageInVoice, 
      String? pAGHaveYouExperiencedAChangeInBehaviourRecently, 
      String? pAGChangeBehaviourYes, 
      String? pAGChangeBehaviourYesQuietWithdrawn, 
      String? pAGChangeBehaviourOutgoing, 
      String? pAGChangeBehaviourAggressive, 
      String? pAGChangeBehaviourBoldAndDaring, 
      String? pAGChangeBehaviourCareless,
      String? pAGPreferCompanyOf,
      String? pAGAnyOtherAbnormalFinding, 
      String? pAGAnyOtherAbnormalFindingYes,}){
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
    _pAGMAYesPainInOtherPartsOfBodyDuringMenses = pAGMAYesPainInOtherPartsOfBodyDuringMenses;
    _pAGMAYesPainInOtherPartsOfBodyDuringMensesYes = pAGMAYesPainInOtherPartsOfBodyDuringMensesYes;
    _pAGMAYesPainInOtherPartsBodyDuringMensesYesOther = pAGMAYesPainInOtherPartsBodyDuringMensesYesOther;
    _pAGYesCrackingOfVoiceOrChnageInVoice = pAGYesCrackingOfVoiceOrChnageInVoice;
    _pAGHaveYouExperiencedAChangeInBehaviourRecently = pAGHaveYouExperiencedAChangeInBehaviourRecently;
    _pAGChangeBehaviourYes = pAGChangeBehaviourYes;
    _pAGChangeBehaviourYesQuietWithdrawn = pAGChangeBehaviourYesQuietWithdrawn;
    _pAGChangeBehaviourOutgoing = pAGChangeBehaviourOutgoing;
    _pAGChangeBehaviourAggressive = pAGChangeBehaviourAggressive;
    _pAGChangeBehaviourBoldAndDaring = pAGChangeBehaviourBoldAndDaring;
    _pAGChangeBehaviourCareless = pAGChangeBehaviourCareless;
    _pAGPreferCompanyOf = pAGPreferCompanyOf;
    _pAGAnyOtherAbnormalFinding = pAGAnyOtherAbnormalFinding;
    _pAGAnyOtherAbnormalFindingYes = pAGAnyOtherAbnormalFindingYes;
}

  PubertalAssessmentGirls.fromJson(dynamic json) {
    _pubertalAssessmentGirls = json['Pubertal_Assessment_Girls'];
    _pAGTannerScore = json['PAG_Tanner_Score'];
    _pAGMenarcheAttained = json['PAG_Menarche_Attained'];
    _pAGMAYesAgeOfMenarche = json['PAG_MA_Yes_Age_of_Menarche'];
    _pAGMAYesLMPDate = json['PAG_MA_Yes_LMP_Date'];
    _pAGMAYesCharacterRegularity = json['PAG_MA_Yes_Character_Regularity'];
    _pAGMAYesCharacterFrequencyInDays = json['PAG_MA_Yes_Character_Frequency_in_Days'];
    _pAGMAYesDurationInDays = json['PAG_MA_Yes_Duration_in_days'];
    _pAGMAYesFlow = json['PAG_MA_Yes_Flow'];
    _pAGMAYesComfort = json['PAG_MA_Yes_Comfort'];
    _pAGMAYesPainInOtherPartsOfBodyDuringMenses = json['PAG_MA_Yes_Pain_in_other_parts_of_body_during_menses'];
    _pAGMAYesPainInOtherPartsOfBodyDuringMensesYes = json['PAG_MA_Yes_Pain_in_other_parts_of_body_during_menses_Yes'];
    _pAGMAYesPainInOtherPartsBodyDuringMensesYesOther = json['PAG_MA_Yes_Pain_in_other_parts_body_during_menses_Yes_Other'];
    _pAGYesCrackingOfVoiceOrChnageInVoice = json['PAG_Yes_Cracking_of_Voice_or_chnage_in_voice'];
    _pAGHaveYouExperiencedAChangeInBehaviourRecently = json['PAG_HaveYouExperienced_A_change_in_behaviour_recently'];
    _pAGChangeBehaviourYes = json['PAG_Change_behaviour_Yes'];
    _pAGChangeBehaviourYesQuietWithdrawn = json['PAG_Change_behaviour_Yes_Quiet_Withdrawn'];
    _pAGChangeBehaviourOutgoing = json['PAG_Change_behaviour_Outgoing'];
    _pAGChangeBehaviourAggressive = json['PAG_Change_behaviour_Aggressive'];
    _pAGChangeBehaviourBoldAndDaring = json['PAG_Change_behaviour_Bold_and_Daring'];
    _pAGChangeBehaviourCareless= json['PAG_Change_behaviour_Careless'];
    _pAGPreferCompanyOf = json['PAG_Prefer_company_of'];
    _pAGAnyOtherAbnormalFinding = json['PAG_Any_other_abnormal_finding'];
    _pAGAnyOtherAbnormalFindingYes = json['PAG_Any_other_abnormal_finding_Yes'];
  }
  String? _pubertalAssessmentGirls;
  String? _pAGTannerScore;
  String? _pAGMenarcheAttained;
  String? _pAGMAYesAgeOfMenarche;
  String? _pAGMAYesLMPDate;
  String? _pAGMAYesCharacterRegularity;
  String? _pAGMAYesCharacterFrequencyInDays;
  String? _pAGMAYesDurationInDays;
  String? _pAGMAYesFlow;
  String? _pAGMAYesComfort;
  String? _pAGMAYesPainInOtherPartsOfBodyDuringMenses;
  String? _pAGMAYesPainInOtherPartsOfBodyDuringMensesYes;
  String? _pAGMAYesPainInOtherPartsBodyDuringMensesYesOther;
  String? _pAGYesCrackingOfVoiceOrChnageInVoice;
  String? _pAGHaveYouExperiencedAChangeInBehaviourRecently;
  String? _pAGChangeBehaviourYes;
  String? _pAGChangeBehaviourYesQuietWithdrawn;
  String? _pAGChangeBehaviourOutgoing;
  String? _pAGChangeBehaviourAggressive;
  String? _pAGChangeBehaviourBoldAndDaring;
  String? _pAGChangeBehaviourCareless;
  String? _pAGPreferCompanyOf;
  String? _pAGAnyOtherAbnormalFinding;
  String? _pAGAnyOtherAbnormalFindingYes;
PubertalAssessmentGirls copyWith({  String? pubertalAssessmentGirls,
  String? pAGTannerScore,
  String? pAGMenarcheAttained,
  String? pAGMAYesAgeOfMenarche,
  String? pAGMAYesLMPDate,
  String? pAGMAYesCharacterRegularity,
  String? pAGMAYesCharacterFrequencyInDays,
  String? pAGMAYesDurationInDays,
  String? pAGMAYesFlow,
  String? pAGMAYesComfort,
  String? pAGMAYesPainInOtherPartsOfBodyDuringMenses,
  String? pAGMAYesPainInOtherPartsOfBodyDuringMensesYes,
  String? pAGMAYesPainInOtherPartsBodyDuringMensesYesOther,
  String? pAGYesCrackingOfVoiceOrChnageInVoice,
  String? pAGHaveYouExperiencedAChangeInBehaviourRecently,
  String? pAGChangeBehaviourYes,
  String? pAGChangeBehaviourYesQuietWithdrawn,
  String? pAGChangeBehaviourOutgoing,
  String? pAGChangeBehaviourAggressive,
  String? pAGChangeBehaviourBoldAndDaring,
  String? pAGChangeBehaviourCareless,
  String? pAGPreferCompanyOf,
  String? pAGAnyOtherAbnormalFinding,
  String? pAGAnyOtherAbnormalFindingYes,
}) => PubertalAssessmentGirls(  pubertalAssessmentGirls: pubertalAssessmentGirls ?? _pubertalAssessmentGirls,
  pAGTannerScore: pAGTannerScore ?? _pAGTannerScore,
  pAGMenarcheAttained: pAGMenarcheAttained ?? _pAGMenarcheAttained,
  pAGMAYesAgeOfMenarche: pAGMAYesAgeOfMenarche ?? _pAGMAYesAgeOfMenarche,
  pAGMAYesLMPDate: pAGMAYesLMPDate ?? _pAGMAYesLMPDate,
  pAGMAYesCharacterRegularity: pAGMAYesCharacterRegularity ?? _pAGMAYesCharacterRegularity,
  pAGMAYesCharacterFrequencyInDays: pAGMAYesCharacterFrequencyInDays ?? _pAGMAYesCharacterFrequencyInDays,
  pAGMAYesDurationInDays: pAGMAYesDurationInDays ?? _pAGMAYesDurationInDays,
  pAGMAYesFlow: pAGMAYesFlow ?? _pAGMAYesFlow,
  pAGMAYesComfort: pAGMAYesComfort ?? _pAGMAYesComfort,
  pAGMAYesPainInOtherPartsOfBodyDuringMenses: pAGMAYesPainInOtherPartsOfBodyDuringMenses ?? _pAGMAYesPainInOtherPartsOfBodyDuringMenses,
  pAGMAYesPainInOtherPartsOfBodyDuringMensesYes: pAGMAYesPainInOtherPartsOfBodyDuringMensesYes ?? _pAGMAYesPainInOtherPartsOfBodyDuringMensesYes,
  pAGMAYesPainInOtherPartsBodyDuringMensesYesOther: pAGMAYesPainInOtherPartsBodyDuringMensesYesOther ?? _pAGMAYesPainInOtherPartsBodyDuringMensesYesOther,
  pAGYesCrackingOfVoiceOrChnageInVoice: pAGYesCrackingOfVoiceOrChnageInVoice ?? _pAGYesCrackingOfVoiceOrChnageInVoice,
  pAGHaveYouExperiencedAChangeInBehaviourRecently: pAGHaveYouExperiencedAChangeInBehaviourRecently ?? _pAGHaveYouExperiencedAChangeInBehaviourRecently,
  pAGChangeBehaviourYes: pAGChangeBehaviourYes ?? _pAGChangeBehaviourYes,
  pAGChangeBehaviourYesQuietWithdrawn: pAGChangeBehaviourYesQuietWithdrawn ?? _pAGChangeBehaviourYesQuietWithdrawn,
  pAGChangeBehaviourOutgoing: pAGChangeBehaviourOutgoing ?? _pAGChangeBehaviourOutgoing,
  pAGChangeBehaviourAggressive: pAGChangeBehaviourAggressive ?? _pAGChangeBehaviourAggressive,
  pAGChangeBehaviourBoldAndDaring: pAGChangeBehaviourBoldAndDaring ?? _pAGChangeBehaviourBoldAndDaring,
  pAGChangeBehaviourCareless: pAGChangeBehaviourCareless ?? _pAGChangeBehaviourCareless,
  pAGPreferCompanyOf: pAGPreferCompanyOf ?? _pAGPreferCompanyOf,
  pAGAnyOtherAbnormalFinding: pAGAnyOtherAbnormalFinding ?? _pAGAnyOtherAbnormalFinding,
  pAGAnyOtherAbnormalFindingYes: pAGAnyOtherAbnormalFindingYes ?? _pAGAnyOtherAbnormalFindingYes,
);
  String? get pubertalAssessmentGirls => _pubertalAssessmentGirls;
  String? get pAGTannerScore => _pAGTannerScore;
  String? get pAGMenarcheAttained => _pAGMenarcheAttained;
  String? get pAGMAYesAgeOfMenarche => _pAGMAYesAgeOfMenarche;
  String? get pAGMAYesLMPDate => _pAGMAYesLMPDate;
  String? get pAGMAYesCharacterRegularity => _pAGMAYesCharacterRegularity;
  String? get pAGMAYesCharacterFrequencyInDays => _pAGMAYesCharacterFrequencyInDays;
  String? get pAGMAYesDurationInDays => _pAGMAYesDurationInDays;
  String? get pAGMAYesFlow => _pAGMAYesFlow;
  String? get pAGMAYesComfort => _pAGMAYesComfort;
  String? get pAGMAYesPainInOtherPartsOfBodyDuringMenses => _pAGMAYesPainInOtherPartsOfBodyDuringMenses;
  String? get pAGMAYesPainInOtherPartsOfBodyDuringMensesYes => _pAGMAYesPainInOtherPartsOfBodyDuringMensesYes;
  String? get pAGMAYesPainInOtherPartsBodyDuringMensesYesOther => _pAGMAYesPainInOtherPartsBodyDuringMensesYesOther;
  String? get pAGYesCrackingOfVoiceOrChnageInVoice => _pAGYesCrackingOfVoiceOrChnageInVoice;
  String? get pAGHaveYouExperiencedAChangeInBehaviourRecently => _pAGHaveYouExperiencedAChangeInBehaviourRecently;
  String? get pAGChangeBehaviourYes => _pAGChangeBehaviourYes;
  String? get pAGChangeBehaviourYesQuietWithdrawn => _pAGChangeBehaviourYesQuietWithdrawn;
  String? get pAGChangeBehaviourOutgoing => _pAGChangeBehaviourOutgoing;
  String? get pAGChangeBehaviourAggressive => _pAGChangeBehaviourAggressive;
  String? get pAGChangeBehaviourBoldAndDaring => _pAGChangeBehaviourBoldAndDaring;
  String? get pAGChangeBehaviourCareless => _pAGChangeBehaviourCareless;
  String? get pAGPreferCompanyOf => _pAGPreferCompanyOf;
  String? get pAGAnyOtherAbnormalFinding => _pAGAnyOtherAbnormalFinding;
  String? get pAGAnyOtherAbnormalFindingYes => _pAGAnyOtherAbnormalFindingYes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Pubertal_Assessment_Girls'] = _pubertalAssessmentGirls;
    map['PAG_Tanner_Score'] = _pAGTannerScore;
    map['PAG_Menarche_Attained'] = _pAGMenarcheAttained;
    map['PAG_MA_Yes_Age_of_Menarche'] = _pAGMAYesAgeOfMenarche;
    map['PAG_MA_Yes_LMP_Date'] = _pAGMAYesLMPDate;
    map['PAG_MA_Yes_Character_Regularity'] = _pAGMAYesCharacterRegularity;
    map['PAG_MA_Yes_Character_Frequency_in_Days'] = _pAGMAYesCharacterFrequencyInDays;
    map['PAG_MA_Yes_Duration_in_days'] = _pAGMAYesDurationInDays;
    map['PAG_MA_Yes_Flow'] = _pAGMAYesFlow;
    map['PAG_MA_Yes_Comfort'] = _pAGMAYesComfort;
    map['PAG_MA_Yes_Pain_in_other_parts_of_body_during_menses'] = _pAGMAYesPainInOtherPartsOfBodyDuringMenses;
    map['PAG_MA_Yes_Pain_in_other_parts_of_body_during_menses_Yes'] = _pAGMAYesPainInOtherPartsOfBodyDuringMensesYes;
    map['PAG_MA_Yes_Pain_in_other_parts_body_during_menses_Yes_Other'] = _pAGMAYesPainInOtherPartsBodyDuringMensesYesOther;
    map['PAG_Yes_Cracking_of_Voice_or_chnage_in_voice'] = _pAGYesCrackingOfVoiceOrChnageInVoice;
    map['PAG_HaveYouExperienced_A_change_in_behaviour_recently'] = _pAGHaveYouExperiencedAChangeInBehaviourRecently;
    map['PAG_Change_behaviour_Yes'] = _pAGChangeBehaviourYes;
    map['PAG_Change_behaviour_Yes_Quiet_Withdrawn'] = _pAGChangeBehaviourYesQuietWithdrawn;
    map['PAG_Change_behaviour_Outgoing'] = _pAGChangeBehaviourOutgoing;
    map['PAG_Change_behaviour_Aggressive'] = _pAGChangeBehaviourAggressive;
    map['PAG_Change_behaviour_Bold_and_Daring'] = _pAGChangeBehaviourBoldAndDaring;
    map['PAG_Change_behaviour_Careless'] = _pAGChangeBehaviourCareless;
    map['PAG_Prefer_company_of'] = _pAGPreferCompanyOf;
    map['PAG_Any_other_abnormal_finding'] = _pAGAnyOtherAbnormalFinding;
    map['PAG_Any_other_abnormal_finding_Yes'] = _pAGAnyOtherAbnormalFindingYes;
    return map;
  }

}