class StationDGetModel {
  StationDGetModel({
    this.id,
    this.stationID,
    this.hcid,
    this.hcpid,
    this.infoseekId,
    this.doYouHaveProblemInhearingYourTeachersFriendsParents,
    this.doYouHaveProblemInhearingYourTeachersYes,
    this.doesAnyFluidComeOutOfYourEars,
    this.doesAnyFluidComeOutOfYourEarsYes,
    this.visualInspectionRightEarPinna,
    this.visualInspectionRightEarPinnaAbnormal,
    this.visualInspectionRightEarEarCanal,
    this.visualInspectionRightEarEarCanalAbnormal,
    this.visualInspectionLeftEarPinna,
    this.visualInspectionLeftEarPinnaAbnormal,
    this.visualInspectionLeftEarEarCanal,
    this.visualInspectionLeftEarEarCanalAbnormal,
    this.anyOtherRelatedFindings,
    this.pureToneAudiometryRightEar500Hz25dB,
    this.pureToneAudiometryRightEar500Hz25dBRefer,
    this.pureToneAudiometryRightEar1000Hz25dB,
    this.pureToneAudiometryRightEar1000Hz25dBRefer,
    this.pureToneAudiometryRightEar2000Hz25dB,
    this.pureToneAudiometryRightEar2000Hz25dBRefer,
    this.pureToneAudiometryRightEar4000Hz25dB,
    this.pureToneAudiometryRightEar4000Hz25dBRefer,
    this.pureToneAudiometryRightEar6000Hz25dB,
    this.pureToneAudiometryRightEar6000Hz25dBRefer,
    this.pureToneAudiometryRightEar8000Hz25dB,
    this.pureToneAudiometryRightEar8000Hz25dBRefer,
    this.pureToneAudiometryLeftEar500Hz25dB,
    this.pureToneAudiometryLeftEar500Hz25dBRefer,
    this.pureToneAudiometryLeftEar1000Hz25dB,
    this.pureToneAudiometryLeftEar1000Hz25dBRefer,
    this.pureToneAudiometryLeftEar2000Hz25dB,
    this.pureToneAudiometryLeftEar2000Hz25dBRefer,
    this.pureToneAudiometryLeftEar4000Hz25dB,
    this.pureToneAudiometryLeftEar4000Hz25dBRefer,
    this.pureToneAudiometryLeftEar6000Hz25dB,
    this.pureToneAudiometryLeftEar6000Hz25dBRefer,
    this.pureToneAudiometryLeftEar8000Hz25dB,
    this.pureToneAudiometryLeftEar8000Hz25dBRefer,
    this.uploadPureToneTestResults,
    this.otherObservations,
    this.specialistReferralNeeded,
    this.specialistReferralNeededType,
    this.specialistReferralNeededFlag,
    this.other,
    this.completed,
  });

  StationDGetModel.fromJson(dynamic json) {
    id = json['id'];
    stationID = json['StationID'];
    hcid = json['HCID'];
    hcpid = json['HCPID'];
    infoseekId = json['InfoseekId'];
    doYouHaveProblemInhearingYourTeachersFriendsParents =
        json['Do_you_have_problem_inhearing_your_Teachers_Friends_Parents'];
    doYouHaveProblemInhearingYourTeachersYes =
        json['Do_you_have_problem_inhearing_your_Teachers_Yes'];
    doesAnyFluidComeOutOfYourEars =
        json['Does_any_fluid_come_out_of_your_ears'];
    doesAnyFluidComeOutOfYourEarsYes =
        json['Does_any_fluid_come_out_of_your_ears_Yes'];
    visualInspectionRightEarPinna = json['Visual_inspection_Right_Ear_Pinna'];
    visualInspectionRightEarPinnaAbnormal =
        json['Visual_inspection_Right_Ear_Pinna_Abnormal'];
    visualInspectionRightEarEarCanal =
        json['Visual_inspection_Right_Ear_EarCanal'];
    visualInspectionRightEarEarCanalAbnormal =
        json['Visual_inspection_Right_Ear_EarCanal_Abnormal'];
    visualInspectionLeftEarPinna = json['Visual_inspection_Left_Ear_Pinna'];
    visualInspectionLeftEarPinnaAbnormal =
        json['Visual_inspection_Left_Ear_Pinna_Abnormal'];
    visualInspectionLeftEarEarCanal =
        json['Visual_inspection_Left_Ear_EarCanal'];
    visualInspectionLeftEarEarCanalAbnormal =
        json['Visual_inspection_Left_Ear_EarCanal_Abnormal'];
    anyOtherRelatedFindings = json['Any_other_related_findings'];
    pureToneAudiometryRightEar500Hz25dB =
        json['Pure_Tone_Audiometry_Right_Ear_500Hz_25dB'];
    pureToneAudiometryRightEar500Hz25dBRefer =
        json['Pure_Tone_Audiometry_Right_Ear_500Hz_25dB_Refer'];
    pureToneAudiometryRightEar1000Hz25dB =
        json['Pure_Tone_Audiometry_Right_Ear_1000Hz_25dB'];
    pureToneAudiometryRightEar1000Hz25dBRefer =
        json['Pure_Tone_Audiometry_Right_Ear_1000Hz_25dB_Refer'];
    pureToneAudiometryRightEar2000Hz25dB =
        json['Pure_Tone_Audiometry_Right_Ear_2000Hz_25dB'];
    pureToneAudiometryRightEar2000Hz25dBRefer =
        json['Pure_Tone_Audiometry_Right_Ear_2000Hz_25dB_Refer'];
    pureToneAudiometryRightEar4000Hz25dB =
        json['Pure_Tone_Audiometry_Right_Ear_4000Hz_25dB'];
    pureToneAudiometryRightEar4000Hz25dBRefer =
        json['Pure_Tone_Audiometry_Right_Ear_4000Hz_25dB_Refer'];
    pureToneAudiometryRightEar6000Hz25dB =
        json['Pure_Tone_Audiometry_Right_Ear_6000Hz_25dB'];
    pureToneAudiometryRightEar6000Hz25dBRefer =
        json['Pure_Tone_Audiometry_Right_Ear_6000Hz_25dB_Refer'];
    pureToneAudiometryRightEar8000Hz25dB =
        json['Pure_Tone_Audiometry_Right_Ear_8000Hz_25dB'];
    pureToneAudiometryRightEar8000Hz25dBRefer =
        json['Pure_Tone_Audiometry_Right_Ear_8000Hz_25dB_Refer'];
    pureToneAudiometryLeftEar500Hz25dB =
        json['Pure_Tone_Audiometry_Left_Ear_500Hz_25dB'];
    pureToneAudiometryLeftEar500Hz25dBRefer =
        json['Pure_Tone_Audiometry_Left_Ear_500Hz_25dB_Refer'];
    pureToneAudiometryLeftEar1000Hz25dB =
        json['Pure_Tone_Audiometry_Left_Ear_1000Hz_25dB'];
    pureToneAudiometryLeftEar1000Hz25dBRefer =
        json['Pure_Tone_Audiometry_Left_Ear_1000Hz_25dB_Refer'];
    pureToneAudiometryLeftEar2000Hz25dB =
        json['Pure_Tone_Audiometry_Left_Ear_2000Hz_25dB'];
    pureToneAudiometryLeftEar2000Hz25dBRefer =
        json['Pure_Tone_Audiometry_Left_Ear_2000Hz_25dB_Refer'];
    pureToneAudiometryLeftEar4000Hz25dB =
        json['Pure_Tone_Audiometry_Left_Ear_4000Hz_25dB'];
    pureToneAudiometryLeftEar4000Hz25dBRefer =
        json['Pure_Tone_Audiometry_Left_Ear_4000Hz_25dB_Refer'];
    pureToneAudiometryLeftEar6000Hz25dB =
        json['Pure_Tone_Audiometry_Left_Ear_6000Hz_25dB'];
    pureToneAudiometryLeftEar6000Hz25dBRefer =
        json['Pure_Tone_Audiometry_Left_Ear_6000Hz_25dB_Refer'];
    pureToneAudiometryLeftEar8000Hz25dB =
        json['Pure_Tone_Audiometry_Left_Ear_8000Hz_25dB'];
    pureToneAudiometryLeftEar8000Hz25dBRefer =
        json['Pure_Tone_Audiometry_Left_Ear_8000Hz_25dB_Refer'];
    uploadPureToneTestResults = json['Upload_Pure_Tone_Test_Results'];
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
  String? doYouHaveProblemInhearingYourTeachersFriendsParents;
  dynamic doYouHaveProblemInhearingYourTeachersYes;
  String? doesAnyFluidComeOutOfYourEars;
  dynamic doesAnyFluidComeOutOfYourEarsYes;
  String? visualInspectionRightEarPinna;
  dynamic visualInspectionRightEarPinnaAbnormal;
  String? visualInspectionRightEarEarCanal;
  dynamic visualInspectionRightEarEarCanalAbnormal;
  String? visualInspectionLeftEarPinna;
  dynamic visualInspectionLeftEarPinnaAbnormal;
  String? visualInspectionLeftEarEarCanal;
  dynamic visualInspectionLeftEarEarCanalAbnormal;
  String? anyOtherRelatedFindings;
  String? pureToneAudiometryRightEar500Hz25dB;
  dynamic pureToneAudiometryRightEar500Hz25dBRefer;
  String? pureToneAudiometryRightEar1000Hz25dB;
  dynamic pureToneAudiometryRightEar1000Hz25dBRefer;
  String? pureToneAudiometryRightEar2000Hz25dB;
  dynamic pureToneAudiometryRightEar2000Hz25dBRefer;
  String? pureToneAudiometryRightEar4000Hz25dB;
  dynamic pureToneAudiometryRightEar4000Hz25dBRefer;
  String? pureToneAudiometryRightEar6000Hz25dB;
  dynamic pureToneAudiometryRightEar6000Hz25dBRefer;
  String? pureToneAudiometryRightEar8000Hz25dB;
  dynamic pureToneAudiometryRightEar8000Hz25dBRefer;
  String? pureToneAudiometryLeftEar500Hz25dB;
  dynamic pureToneAudiometryLeftEar500Hz25dBRefer;
  String? pureToneAudiometryLeftEar1000Hz25dB;
  dynamic pureToneAudiometryLeftEar1000Hz25dBRefer;
  String? pureToneAudiometryLeftEar2000Hz25dB;
  dynamic pureToneAudiometryLeftEar2000Hz25dBRefer;
  String? pureToneAudiometryLeftEar4000Hz25dB;
  dynamic pureToneAudiometryLeftEar4000Hz25dBRefer;
  String? pureToneAudiometryLeftEar6000Hz25dB;
  dynamic pureToneAudiometryLeftEar6000Hz25dBRefer;
  String? pureToneAudiometryLeftEar8000Hz25dB;
  dynamic pureToneAudiometryLeftEar8000Hz25dBRefer;
  dynamic uploadPureToneTestResults;
  dynamic otherObservations;
  dynamic specialistReferralNeeded;
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
    map['Do_you_have_problem_inhearing_your_Teachers_Friends_Parents'] =
        doYouHaveProblemInhearingYourTeachersFriendsParents;
    map['Do_you_have_problem_inhearing_your_Teachers_Yes'] =
        doYouHaveProblemInhearingYourTeachersYes;
    map['Does_any_fluid_come_out_of_your_ears'] = doesAnyFluidComeOutOfYourEars;
    map['Does_any_fluid_come_out_of_your_ears_Yes'] =
        doesAnyFluidComeOutOfYourEarsYes;
    map['Visual_inspection_Right_Ear_Pinna'] = visualInspectionRightEarPinna;
    map['Visual_inspection_Right_Ear_Pinna_Abnormal'] =
        visualInspectionRightEarPinnaAbnormal;
    map['Visual_inspection_Right_Ear_EarCanal'] =
        visualInspectionRightEarEarCanal;
    map['Visual_inspection_Right_Ear_EarCanal_Abnormal'] =
        visualInspectionRightEarEarCanalAbnormal;
    map['Visual_inspection_Left_Ear_Pinna'] = visualInspectionLeftEarPinna;
    map['Visual_inspection_Left_Ear_Pinna_Abnormal'] =
        visualInspectionLeftEarPinnaAbnormal;
    map['Visual_inspection_Left_Ear_EarCanal'] =
        visualInspectionLeftEarEarCanal;
    map['Visual_inspection_Left_Ear_EarCanal_Abnormal'] =
        visualInspectionLeftEarEarCanalAbnormal;
    map['Any_other_related_findings'] = anyOtherRelatedFindings;
    map['Pure_Tone_Audiometry_Right_Ear_500Hz_25dB'] =
        pureToneAudiometryRightEar500Hz25dB;
    map['Pure_Tone_Audiometry_Right_Ear_500Hz_25dB_Refer'] =
        pureToneAudiometryRightEar500Hz25dBRefer;
    map['Pure_Tone_Audiometry_Right_Ear_1000Hz_25dB'] =
        pureToneAudiometryRightEar1000Hz25dB;
    map['Pure_Tone_Audiometry_Right_Ear_1000Hz_25dB_Refer'] =
        pureToneAudiometryRightEar1000Hz25dBRefer;
    map['Pure_Tone_Audiometry_Right_Ear_2000Hz_25dB'] =
        pureToneAudiometryRightEar2000Hz25dB;
    map['Pure_Tone_Audiometry_Right_Ear_2000Hz_25dB_Refer'] =
        pureToneAudiometryRightEar2000Hz25dBRefer;
    map['Pure_Tone_Audiometry_Right_Ear_4000Hz_25dB'] =
        pureToneAudiometryRightEar4000Hz25dB;
    map['Pure_Tone_Audiometry_Right_Ear_4000Hz_25dB_Refer'] =
        pureToneAudiometryRightEar4000Hz25dBRefer;
    map['Pure_Tone_Audiometry_Right_Ear_6000Hz_25dB'] =
        pureToneAudiometryRightEar6000Hz25dB;
    map['Pure_Tone_Audiometry_Right_Ear_6000Hz_25dB_Refer'] =
        pureToneAudiometryRightEar6000Hz25dBRefer;
    map['Pure_Tone_Audiometry_Right_Ear_8000Hz_25dB'] =
        pureToneAudiometryRightEar8000Hz25dB;
    map['Pure_Tone_Audiometry_Right_Ear_8000Hz_25dB_Refer'] =
        pureToneAudiometryRightEar8000Hz25dBRefer;
    map['Pure_Tone_Audiometry_Left_Ear_500Hz_25dB'] =
        pureToneAudiometryLeftEar500Hz25dB;
    map['Pure_Tone_Audiometry_Left_Ear_500Hz_25dB_Refer'] =
        pureToneAudiometryLeftEar500Hz25dBRefer;
    map['Pure_Tone_Audiometry_Left_Ear_1000Hz_25dB'] =
        pureToneAudiometryLeftEar1000Hz25dB;
    map['Pure_Tone_Audiometry_Left_Ear_1000Hz_25dB_Refer'] =
        pureToneAudiometryLeftEar1000Hz25dBRefer;
    map['Pure_Tone_Audiometry_Left_Ear_2000Hz_25dB'] =
        pureToneAudiometryLeftEar2000Hz25dB;
    map['Pure_Tone_Audiometry_Left_Ear_2000Hz_25dB_Refer'] =
        pureToneAudiometryLeftEar2000Hz25dBRefer;
    map['Pure_Tone_Audiometry_Left_Ear_4000Hz_25dB'] =
        pureToneAudiometryLeftEar4000Hz25dB;
    map['Pure_Tone_Audiometry_Left_Ear_4000Hz_25dB_Refer'] =
        pureToneAudiometryLeftEar4000Hz25dBRefer;
    map['Pure_Tone_Audiometry_Left_Ear_6000Hz_25dB'] =
        pureToneAudiometryLeftEar6000Hz25dB;
    map['Pure_Tone_Audiometry_Left_Ear_6000Hz_25dB_Refer'] =
        pureToneAudiometryLeftEar6000Hz25dBRefer;
    map['Pure_Tone_Audiometry_Left_Ear_8000Hz_25dB'] =
        pureToneAudiometryLeftEar8000Hz25dB;
    map['Pure_Tone_Audiometry_Left_Ear_8000Hz_25dB_Refer'] =
        pureToneAudiometryLeftEar8000Hz25dBRefer;
    map['Upload_Pure_Tone_Test_Results'] = uploadPureToneTestResults;
    map['Other_Observations'] = otherObservations;
    map['Specialist_Referral_Needed'] = specialistReferralNeeded;
    map['Specialist_Referral_Needed_Type'] = specialistReferralNeededType;
    map['Specialist_Referral_Needed_Flag'] = specialistReferralNeededFlag;
    map['Other'] = other;
    map['Completed'] = completed;
    return map;
  }
}
