class PubertalAssessmentBoys {
  PubertalAssessmentBoys({
    this.pubertalAssessmentBoys,
    this.pABTannerScore,
    this.pABYesCrackingOfVoiceOrChnageInVoice,
    this.pABNightlyEmissions,
    this.pABHaveYouExperiencedAChangeInBehaviourRecently,
    this.pABChangeBehaviourYes,
    this.pABChangeBehaviourYesQuietWithdrawn,
    this.pABChangeBehaviourOutgoing,
    this.pABChangeBehaviourAggressive,
    this.pABChangeBehaviourBoldAndDaring,
    this.pABChangeBehaviourCareless,
    this.pABPreferCompanyOf,
    this.pABAnyOtherAbnormalFinding,
    this.pABAnyOtherAbnormalFindingYes,});

  PubertalAssessmentBoys.fromJson(dynamic json) {
    pubertalAssessmentBoys = json['Pubertal_Assessment_Boys'];
    pABTannerScore = json['PAB_Tanner_Score'];
    pABYesCrackingOfVoiceOrChnageInVoice = json['PAB_Yes_Cracking_of_Voice_or_chnage_in_voice'];
    pABNightlyEmissions = json['PAB_Nightly_Emissions'];
    pABHaveYouExperiencedAChangeInBehaviourRecently = json['PAB_HaveYouExperienced_A_change_in_behaviour_recently'];
    pABChangeBehaviourYes = json['PAB_Change_behaviour_Yes'];
    pABChangeBehaviourYesQuietWithdrawn = json['PAB_Change_behaviour_Yes_Quiet_Withdrawn'];
    pABChangeBehaviourOutgoing = json['PAB_Change_behaviour_Outgoing'];
    pABChangeBehaviourAggressive = json['PAB_Change_behaviour_Aggressive'];
    pABChangeBehaviourBoldAndDaring = json['PAB_Change_behaviour_Bold_and_Daring'];
    pABChangeBehaviourCareless = json['PAB_Change_behaviour_Careless'];
    pABPreferCompanyOf = json['PAB_Prefer_company_of'];
    pABAnyOtherAbnormalFinding = json['PAB_Any_other_abnormal_finding'];
    pABAnyOtherAbnormalFindingYes = json['PAB_Any_other_abnormal_finding_Yes'];
  }
  String? pubertalAssessmentBoys;
  String? pABTannerScore;
  String? pABYesCrackingOfVoiceOrChnageInVoice;
  String? pABNightlyEmissions;
  String? pABHaveYouExperiencedAChangeInBehaviourRecently;
  String? pABChangeBehaviourYes;
  String? pABChangeBehaviourYesQuietWithdrawn;
  String? pABChangeBehaviourOutgoing;
  String? pABChangeBehaviourAggressive;
  String? pABChangeBehaviourBoldAndDaring;
  String? pABChangeBehaviourCareless;
  String? pABPreferCompanyOf;
  String? pABAnyOtherAbnormalFinding;
  String? pABAnyOtherAbnormalFindingYes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Pubertal_Assessment_Boys'] = pubertalAssessmentBoys;
    map['PAB_Tanner_Score'] = pABTannerScore;
    map['PAB_Yes_Cracking_of_Voice_or_chnage_in_voice'] = pABYesCrackingOfVoiceOrChnageInVoice;
    map['PAB_Nightly_Emissions'] = pABNightlyEmissions;
    map['PAB_HaveYouExperienced_A_change_in_behaviour_recently'] = pABHaveYouExperiencedAChangeInBehaviourRecently;
    map['PAB_Change_behaviour_Yes'] = pABChangeBehaviourYes;
    map['PAB_Change_behaviour_Yes_Quiet_Withdrawn'] = pABChangeBehaviourYesQuietWithdrawn;
    map['PAB_Change_behaviour_Outgoing'] = pABChangeBehaviourOutgoing;
    map['PAB_Change_behaviour_Aggressive'] = pABChangeBehaviourAggressive;
    map['PAB_Change_behaviour_Bold_and_Daring'] = pABChangeBehaviourBoldAndDaring;
    map['PAB_Change_behaviour_Careless'] = pABChangeBehaviourCareless;
    map['PAB_Prefer_company_of'] = pABPreferCompanyOf;
    map['PAB_Any_other_abnormal_finding'] = pABAnyOtherAbnormalFinding;
    map['PAB_Any_other_abnormal_finding_Yes'] = pABAnyOtherAbnormalFindingYes;
    return map;
  }

}