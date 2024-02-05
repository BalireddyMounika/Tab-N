class OptRequest {
  OptRequest({
    this.name,
    this.dateOfBirth,
    this.email,
    this.mobileNumber,
    this.otp,
  });

  OptRequest.fromJson(dynamic json) {
    name = json['Name'];
    dateOfBirth = json['Date_of_Birth'];
    email = json['Email'];
    mobileNumber = json['MobileNumber'];
    otp = json['Otp'];
  }
  String? name;
  String? dateOfBirth;
  String? email;
  String? mobileNumber;
  String? otp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Name'] = name;
    map['Date_of_Birth'] = dateOfBirth;
    map['Email'] = email;
    map['MobileNumber'] = mobileNumber;
    map['Otp'] = otp;
    return map;
  }
}
