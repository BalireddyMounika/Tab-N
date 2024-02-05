class StationCRequest {
  StationCRequest({
    this.hcid,
    this.hcpid,
    this.infoseekId,
    this.problemReadingBooks,
    this.problemReadingBlackboard,
    this.nightVision,
    this.visionCorrected,
    this.visionCorrectedYes,
    this.entryTime,
  });

  StationCRequest.fromJson(dynamic json) {
    hcid = json['HCID'];
    hcpid = json['HCPID'];
    infoseekId = json['InfoseekId'];
    problemReadingBooks = json['Problem_reading_books'];
    problemReadingBlackboard = json['Problem_reading_Blackboard'];
    nightVision = json['Night_Vision'];
    visionCorrected = json['Vision_Corrected'];
    visionCorrectedYes = json['Vision_Corrected_Yes'];
    entryTime = json['EntryTime'];
  }
  int? hcid;
  int? hcpid;
  int? infoseekId;
  String? problemReadingBooks;
  String? problemReadingBlackboard;
  String? nightVision;
  String? visionCorrected;
  String? visionCorrectedYes;
  String? entryTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['HCID'] = hcid;
    map['HCPID'] = hcpid;
    map['InfoseekId'] = infoseekId;
    map['Problem_reading_books'] = problemReadingBooks;
    map['Problem_reading_Blackboard'] = problemReadingBlackboard;
    map['Night_Vision'] = nightVision;
    map['Vision_Corrected'] = visionCorrected;
    map['Vision_Corrected_Yes'] = visionCorrectedYes;
    map['EntryTime'] = entryTime;

    return map;
  }
}