class StationCGetModel {
  StationCGetModel({
    this.id,
    this.stationID,
    this.hcid,
    this.hcpid,
    this.infoseekId,
    this.problemReadingBooks,
    this.problemReadingBlackboard,
    this.nightVision,
    this.visionCorrected,
    this.visionCorrectedYes,
    this.extraOcularRightNormalEyeMovement,
    this.extraOcularRightStrabismus,
    this.extraOcularRightDroopingLid,
    this.extraOcularRightRestrictedMobility,
    this.extraOcularRightNystagmus,
    this.extraOcularRightBulging,
    this.extraOcularLeftNormalEyeMovement,
    this.extraOcularLeftStrabismus,
    this.extraOcularLeftDroopingLid,
    this.extraOcularLeftRestrictedMobility,
    this.extraOcularLeftNystagmus,
    this.extraOcularLeftBulging,
    this.visuallyChallengedRightEye,
    this.visuallyChallengedRightEyeEnucleation,
    this.visuallyChallengedRightEyeEnucleationWhenRemoved,
    this.visuallyChallengedRightEyeEnucleationWhyRemoved,
    this.visuallyChallengedRightEyeEnucleationWhyRemovedOther,
    this.vCRightEyeEnucleationArtificialEyeUsed,
    this.visuallyChallengedRightEyeEnucleationCataract,
    this.visuallyChallengedRightEyeEnucleationCornealOpacity,
    this.visuallyChallengedRightEyeEnucleationGlaucoma,
    this.visuallyChallengedRightEyeEnucleationPhthisisBulbi,
    this.visuallyChallengedLeftEye,
    this.visuallyChallengedLeftEyeEnucleation,
    this.visuallyChallengedLeftEyeEnucleationWhenRemoved,
    this.visuallyChallengedLeftEyeEnucleationWhyRemoved,
    this.visuallyChallengedLeftEyeEnucleationWhyRemovedOther,
    this.vCLeftEyeEnucleationArtificialEyeUsed,
    this.visuallyChallengedLeftEyeEnucleationCataract,
    this.visuallyChallengedLeftEyeEnucleationCornealOpacity,
    this.visuallyChallengedLeftEyeEnucleationGlaucoma,
    this.visuallyChallengedLeftEyeEnucleationPhthisisBulbi,
    this.visualAcuity,
    this.visualAcuityWithLensesDistantVisionLeft,
    this.visualAcuityWithLensesDistantVisionRight,
    this.visualAcuityWithLensesNearVisionLeft,
    this.visualAcuityWithLensesNearVisionRight,
    this.visualAcuityWithoutLensesDistantVisionLeft,
    this.visualAcuityWithoutLensesDistantVisionRight,
    this.visualAcuityWithoutLensesNearVisionLeft,
    this.visualAcuityWithoutLensesNearVisionRight,
    this.visualAcuityColorBlindness,
    this.visualAcuityColorBlindnessYes,
    this.otherObservations,
    this.specialistReferralNeeded,
    this.specialistReferralNeededType,
    this.specialistReferralNeededFlag,
    this.other,
    this.completed,
  });

  StationCGetModel.fromJson(dynamic json) {
    id = json['id'];
    stationID = json['StationID'];
    hcid = json['HCID'];
    hcpid = json['HCPID'];
    infoseekId = json['InfoseekId'];
    problemReadingBooks = json['Problem_reading_books'];
    problemReadingBlackboard = json['Problem_reading_Blackboard'];
    nightVision = json['Night_Vision'];
    visionCorrected = json['Vision_Corrected'];
    visionCorrectedYes = json['Vision_Corrected_Yes'];
    extraOcularRightNormalEyeMovement =
        json['Extra_Ocular_Right_Normal_Eye_Movement'];
    extraOcularRightStrabismus = json['Extra_Ocular_Right_Strabismus'];
    extraOcularRightDroopingLid = json['Extra_Ocular_Right_Drooping_Lid'];
    extraOcularRightRestrictedMobility =
        json['Extra_Ocular_Right_Restricted_Mobility'];
    extraOcularRightNystagmus = json['Extra_Ocular_Right_Nystagmus'];
    extraOcularRightBulging = json['Extra_Ocular_Right_Bulging'];
    extraOcularLeftNormalEyeMovement =
        json['Extra_Ocular_Left_Normal_Eye_Movement'];
    extraOcularLeftStrabismus = json['Extra_Ocular_Left_Strabismus'];
    extraOcularLeftDroopingLid = json['Extra_Ocular_Left_Drooping_Lid'];
    extraOcularLeftRestrictedMobility =
        json['Extra_Ocular_Left_Restricted_Mobility'];
    extraOcularLeftNystagmus = json['Extra_Ocular_Left_Nystagmus'];
    extraOcularLeftBulging = json['Extra_Ocular_Left_Bulging'];
    visuallyChallengedRightEye = json['Visually_Challenged_Right_Eye'];
    visuallyChallengedRightEyeEnucleation =
        json['Visually_Challenged_Right_Eye_Enucleation'];
    visuallyChallengedRightEyeEnucleationWhenRemoved =
        json['Visually_Challenged_Right_Eye_Enucleation_When_removed'];
    visuallyChallengedRightEyeEnucleationWhyRemoved =
        json['Visually_Challenged_Right_Eye_Enucleation_Why_removed'];
    visuallyChallengedRightEyeEnucleationWhyRemovedOther =
        json['Visually_Challenged_Right_Eye_Enucleation_Why_removed_Other'];
    vCRightEyeEnucleationArtificialEyeUsed =
        json['VC_Right_Eye_Enucleation_Artificial_Eye_Used'];
    visuallyChallengedRightEyeEnucleationCataract =
        json['Visually_Challenged_Right_Eye_Enucleation_Cataract'];
    visuallyChallengedRightEyeEnucleationCornealOpacity =
        json['Visually_Challenged_Right_Eye_Enucleation_Corneal_opacity'];
    visuallyChallengedRightEyeEnucleationGlaucoma =
        json['Visually_Challenged_Right_Eye_Enucleation_Glaucoma'];
    visuallyChallengedRightEyeEnucleationPhthisisBulbi =
        json['Visually_Challenged_Right_Eye_Enucleation_Phthisis_bulbi'];
    visuallyChallengedLeftEye = json['Visually_Challenged_Left_Eye'];
    visuallyChallengedLeftEyeEnucleation =
        json['Visually_Challenged_Left_Eye_Enucleation'];
    visuallyChallengedLeftEyeEnucleationWhenRemoved =
        json['Visually_Challenged_Left_Eye_Enucleation_When_removed'];
    visuallyChallengedLeftEyeEnucleationWhyRemoved =
        json['Visually_Challenged_Left_Eye_Enucleation_Why_removed'];
    visuallyChallengedLeftEyeEnucleationWhyRemovedOther =
        json['Visually_Challenged_Left_Eye_Enucleation_Why_removed_Other'];
    vCLeftEyeEnucleationArtificialEyeUsed =
        json['VC_Left_Eye_Enucleation_Artificial_Eye_Used'];
    visuallyChallengedLeftEyeEnucleationCataract =
        json['Visually_Challenged_Left_Eye_Enucleation_Cataract'];
    visuallyChallengedLeftEyeEnucleationCornealOpacity =
        json['Visually_Challenged_Left_Eye_Enucleation_Corneal_opacity'];
    visuallyChallengedLeftEyeEnucleationGlaucoma =
        json['Visually_Challenged_Left_Eye_Enucleation_Glaucoma'];
    visuallyChallengedLeftEyeEnucleationPhthisisBulbi =
        json['Visually_Challenged_Left_Eye_Enucleation_Phthisis_bulbi'];
    visualAcuity = json['Visual_Acuity'];
    visualAcuityWithLensesDistantVisionLeft =
        json['Visual_Acuity_With_Lenses_Distant_Vision_Left'];
    visualAcuityWithLensesDistantVisionRight =
        json['Visual_Acuity_With_Lenses_Distant_Vision_Right'];
    visualAcuityWithLensesNearVisionLeft =
        json['Visual_Acuity_With_Lenses_Near_Vision_Left'];
    visualAcuityWithLensesNearVisionRight =
        json['Visual_Acuity_With_Lenses_Near_Vision_Right'];
    visualAcuityWithoutLensesDistantVisionLeft =
        json['Visual_Acuity_without_Lenses_Distant_Vision_Left'];
    visualAcuityWithoutLensesDistantVisionRight =
        json['Visual_Acuity_without_Lenses_Distant_Vision_Right'];
    visualAcuityWithoutLensesNearVisionLeft =
        json['Visual_Acuity_without_Lenses_Near_Vision_Left'];
    visualAcuityWithoutLensesNearVisionRight =
        json['Visual_Acuity_without_Lenses_Near_Vision_Right'];
    visualAcuityColorBlindness = json['Visual_Acuity_Color_Blindness'];
    visualAcuityColorBlindnessYes = json['Visual_Acuity_Color_Blindness_Yes'];
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
  String? problemReadingBooks;
  String? problemReadingBlackboard;
  String? nightVision;
  String? visionCorrected;
  dynamic visionCorrectedYes;
  String? extraOcularRightNormalEyeMovement;
  String? extraOcularRightStrabismus;
  String? extraOcularRightDroopingLid;
  String? extraOcularRightRestrictedMobility;
  String? extraOcularRightNystagmus;
  String? extraOcularRightBulging;
  String? extraOcularLeftNormalEyeMovement;
  String? extraOcularLeftStrabismus;
  String? extraOcularLeftDroopingLid;
  String? extraOcularLeftRestrictedMobility;
  String? extraOcularLeftNystagmus;
  String? extraOcularLeftBulging;
  String? visuallyChallengedRightEye;
  dynamic visuallyChallengedRightEyeEnucleation;
  dynamic visuallyChallengedRightEyeEnucleationWhenRemoved;
  dynamic visuallyChallengedRightEyeEnucleationWhyRemoved;
  dynamic visuallyChallengedRightEyeEnucleationWhyRemovedOther;
  dynamic vCRightEyeEnucleationArtificialEyeUsed;
  dynamic visuallyChallengedRightEyeEnucleationCataract;
  dynamic visuallyChallengedRightEyeEnucleationCornealOpacity;
  dynamic visuallyChallengedRightEyeEnucleationGlaucoma;
  dynamic visuallyChallengedRightEyeEnucleationPhthisisBulbi;
  String? visuallyChallengedLeftEye;
  dynamic visuallyChallengedLeftEyeEnucleation;
  dynamic visuallyChallengedLeftEyeEnucleationWhenRemoved;
  dynamic visuallyChallengedLeftEyeEnucleationWhyRemoved;
  dynamic visuallyChallengedLeftEyeEnucleationWhyRemovedOther;
  dynamic vCLeftEyeEnucleationArtificialEyeUsed;
  dynamic visuallyChallengedLeftEyeEnucleationCataract;
  dynamic visuallyChallengedLeftEyeEnucleationCornealOpacity;
  dynamic visuallyChallengedLeftEyeEnucleationGlaucoma;
  dynamic visuallyChallengedLeftEyeEnucleationPhthisisBulbi;
  String? visualAcuity;
  int? visualAcuityWithLensesDistantVisionLeft;
  int? visualAcuityWithLensesDistantVisionRight;
  int? visualAcuityWithLensesNearVisionLeft;
  int? visualAcuityWithLensesNearVisionRight;
  dynamic visualAcuityWithoutLensesDistantVisionLeft;
  dynamic visualAcuityWithoutLensesDistantVisionRight;
  dynamic visualAcuityWithoutLensesNearVisionLeft;
  dynamic visualAcuityWithoutLensesNearVisionRight;
  String? visualAcuityColorBlindness;
  dynamic visualAcuityColorBlindnessYes;
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
    map['Problem_reading_books'] = problemReadingBooks;
    map['Problem_reading_Blackboard'] = problemReadingBlackboard;
    map['Night_Vision'] = nightVision;
    map['Vision_Corrected'] = visionCorrected;
    map['Vision_Corrected_Yes'] = visionCorrectedYes;
    map['Extra_Ocular_Right_Normal_Eye_Movement'] =
        extraOcularRightNormalEyeMovement;
    map['Extra_Ocular_Right_Strabismus'] = extraOcularRightStrabismus;
    map['Extra_Ocular_Right_Drooping_Lid'] = extraOcularRightDroopingLid;
    map['Extra_Ocular_Right_Restricted_Mobility'] =
        extraOcularRightRestrictedMobility;
    map['Extra_Ocular_Right_Nystagmus'] = extraOcularRightNystagmus;
    map['Extra_Ocular_Right_Bulging'] = extraOcularRightBulging;
    map['Extra_Ocular_Left_Normal_Eye_Movement'] =
        extraOcularLeftNormalEyeMovement;
    map['Extra_Ocular_Left_Strabismus'] = extraOcularLeftStrabismus;
    map['Extra_Ocular_Left_Drooping_Lid'] = extraOcularLeftDroopingLid;
    map['Extra_Ocular_Left_Restricted_Mobility'] =
        extraOcularLeftRestrictedMobility;
    map['Extra_Ocular_Left_Nystagmus'] = extraOcularLeftNystagmus;
    map['Extra_Ocular_Left_Bulging'] = extraOcularLeftBulging;
    map['Visually_Challenged_Right_Eye'] = visuallyChallengedRightEye;
    map['Visually_Challenged_Right_Eye_Enucleation'] =
        visuallyChallengedRightEyeEnucleation;
    map['Visually_Challenged_Right_Eye_Enucleation_When_removed'] =
        visuallyChallengedRightEyeEnucleationWhenRemoved;
    map['Visually_Challenged_Right_Eye_Enucleation_Why_removed'] =
        visuallyChallengedRightEyeEnucleationWhyRemoved;
    map['Visually_Challenged_Right_Eye_Enucleation_Why_removed_Other'] =
        visuallyChallengedRightEyeEnucleationWhyRemovedOther;
    map['VC_Right_Eye_Enucleation_Artificial_Eye_Used'] =
        vCRightEyeEnucleationArtificialEyeUsed;
    map['Visually_Challenged_Right_Eye_Enucleation_Cataract'] =
        visuallyChallengedRightEyeEnucleationCataract;
    map['Visually_Challenged_Right_Eye_Enucleation_Corneal_opacity'] =
        visuallyChallengedRightEyeEnucleationCornealOpacity;
    map['Visually_Challenged_Right_Eye_Enucleation_Glaucoma'] =
        visuallyChallengedRightEyeEnucleationGlaucoma;
    map['Visually_Challenged_Right_Eye_Enucleation_Phthisis_bulbi'] =
        visuallyChallengedRightEyeEnucleationPhthisisBulbi;
    map['Visually_Challenged_Left_Eye'] = visuallyChallengedLeftEye;
    map['Visually_Challenged_Left_Eye_Enucleation'] =
        visuallyChallengedLeftEyeEnucleation;
    map['Visually_Challenged_Left_Eye_Enucleation_When_removed'] =
        visuallyChallengedLeftEyeEnucleationWhenRemoved;
    map['Visually_Challenged_Left_Eye_Enucleation_Why_removed'] =
        visuallyChallengedLeftEyeEnucleationWhyRemoved;
    map['Visually_Challenged_Left_Eye_Enucleation_Why_removed_Other'] =
        visuallyChallengedLeftEyeEnucleationWhyRemovedOther;
    map['VC_Left_Eye_Enucleation_Artificial_Eye_Used'] =
        vCLeftEyeEnucleationArtificialEyeUsed;
    map['Visually_Challenged_Left_Eye_Enucleation_Cataract'] =
        visuallyChallengedLeftEyeEnucleationCataract;
    map['Visually_Challenged_Left_Eye_Enucleation_Corneal_opacity'] =
        visuallyChallengedLeftEyeEnucleationCornealOpacity;
    map['Visually_Challenged_Left_Eye_Enucleation_Glaucoma'] =
        visuallyChallengedLeftEyeEnucleationGlaucoma;
    map['Visually_Challenged_Left_Eye_Enucleation_Phthisis_bulbi'] =
        visuallyChallengedLeftEyeEnucleationPhthisisBulbi;
    map['Visual_Acuity'] = visualAcuity;
    map['Visual_Acuity_With_Lenses_Distant_Vision_Left'] =
        visualAcuityWithLensesDistantVisionLeft;
    map['Visual_Acuity_With_Lenses_Distant_Vision_Right'] =
        visualAcuityWithLensesDistantVisionRight;
    map['Visual_Acuity_With_Lenses_Near_Vision_Left'] =
        visualAcuityWithLensesNearVisionLeft;
    map['Visual_Acuity_With_Lenses_Near_Vision_Right'] =
        visualAcuityWithLensesNearVisionRight;
    map['Visual_Acuity_without_Lenses_Distant_Vision_Left'] =
        visualAcuityWithoutLensesDistantVisionLeft;
    map['Visual_Acuity_without_Lenses_Distant_Vision_Right'] =
        visualAcuityWithoutLensesDistantVisionRight;
    map['Visual_Acuity_without_Lenses_Near_Vision_Left'] =
        visualAcuityWithoutLensesNearVisionLeft;
    map['Visual_Acuity_without_Lenses_Near_Vision_Right'] =
        visualAcuityWithoutLensesNearVisionRight;
    map['Visual_Acuity_Color_Blindness'] = visualAcuityColorBlindness;
    map['Visual_Acuity_Color_Blindness_Yes'] = visualAcuityColorBlindnessYes;
    map['Other_Observations'] = otherObservations;
    map['Specialist_Referral_Needed'] = specialistReferralNeeded;
    map['Specialist_Referral_Needed_Type'] = specialistReferralNeededType;
    map['Specialist_Referral_Needed_Flag'] = specialistReferralNeededFlag;
    map['Other'] = other;
    map['Completed'] = completed;
    return map;
  }
}
