class StationDRequest {
  StationDRequest({
    // this.id,
    this.hcid,
    this.hcpid,
    this.infoseekId,
    this.doYouHaveProblemInhearingYourTeachersFriendsParents,
    this.doYouHaveProblemInhearingYourTeachersYes,
    this.doesAnyFluidComeOutOfYourEars,
    this.doesAnyFluidComeOutOfYourEarsYes,
    this.entryTime,
  });

  StationDRequest.fromJson(dynamic json) {
    // id = json['id'];
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
    entryTime = json['EntryTime'];
  }
  // int? id;
  int? hcid;
  int? hcpid;
  int? infoseekId;
  String? doYouHaveProblemInhearingYourTeachersFriendsParents;
  String? doYouHaveProblemInhearingYourTeachersYes;
  String? doesAnyFluidComeOutOfYourEars;
  String? doesAnyFluidComeOutOfYourEarsYes;
  String? entryTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    // map['id'] = id;
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
    map['EntryTime'] = entryTime;

    return map;
  }
}
