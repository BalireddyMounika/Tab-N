class StationDDetailsUpdate {
  StationDDetailsUpdate({
    this.hcid,
    this.hcpid,
    this.infoSeekId,
    this.doYouHaveProblemInhearingYourTeachersFriendsParents,
    this.doYouHaveProblemInhearingYourTeachersYes,
    this.doesAnyFluidComeOutOfYourEars,
    this.doesAnyFluidComeOutOfYourEarsYes,
  });

  StationDDetailsUpdate.fromJson(dynamic json) {
    hcid = json['HCID'];
    hcpid = json['HCPID'];
    infoSeekId = json['InfoseekId'];
    doYouHaveProblemInhearingYourTeachersFriendsParents =
        json['Do_you_have_problem_inhearing_your_Teachers_Friends_Parents'];
    doYouHaveProblemInhearingYourTeachersYes =
        json['Do_you_have_problem_inhearing_your_Teachers_Yes'];
    doesAnyFluidComeOutOfYourEars =
        json['Does_any_fluid_come_out_of_your_ears'];
    doesAnyFluidComeOutOfYourEarsYes =
        json['Does_any_fluid_come_out_of_your_ears_Yes'];
  }
  int? hcid;
  int? hcpid;
  int? infoSeekId;
  String? doYouHaveProblemInhearingYourTeachersFriendsParents;
  String? doYouHaveProblemInhearingYourTeachersYes;
  String? doesAnyFluidComeOutOfYourEars;
  String? doesAnyFluidComeOutOfYourEarsYes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['HCID'] = hcid;
    map['HCPID'] = hcpid;
    map['InfoseekId'] = infoSeekId;
    map['Do_you_have_problem_inhearing_your_Teachers_Friends_Parents'] =
        doYouHaveProblemInhearingYourTeachersFriendsParents;
    map['Do_you_have_problem_inhearing_your_Teachers_Yes'] =
        doYouHaveProblemInhearingYourTeachersYes;
    map['Does_any_fluid_come_out_of_your_ears'] = doesAnyFluidComeOutOfYourEars;
    map['Does_any_fluid_come_out_of_your_ears_Yes'] =
        doesAnyFluidComeOutOfYourEarsYes;
    return map;
  }
}
