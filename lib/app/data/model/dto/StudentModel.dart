class Student {
  Student({
    this.infoseekId,
    this.studentFirstName,
    this.uin,
    this.className,
    this.sectionName,
    this.gender,
    this.studentDOB,
    this.uploadPhoto,
    this.qrcode,
  });
  Student.fromJson(dynamic json) {
    infoseekId = json['InfoseekId'];
    studentFirstName = json['Student_FirstName'];
    uin = json['UIN'];
    className = json['class_name'];
    sectionName = json['section_name'];
    gender = json['Gender'];
    studentDOB = json['Student_DOB'];
    uploadPhoto = json['upload_photo'];
    qrcode = json['qrcode_image'];
  }
  int? infoseekId;
  String? studentFirstName;
  String? uin;
  String? className;
  String? sectionName;
  String? gender;
  String? studentDOB;
  String? uploadPhoto;
  String? qrcode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['InfoseekId'] = infoseekId;
    map['Student_FirstName'] = studentFirstName;
    map['UIN'] = uin;
    map['class_name'] = className;
    map['section_name'] = sectionName;
    map['Gender'] = gender;
    map['Student_DOB'] = studentDOB;
    map['upload_photo'] = uploadPhoto;
    map['qrcode_image'] = qrcode;

    return map;
  }
}
