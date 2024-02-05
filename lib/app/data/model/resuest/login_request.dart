class LoginRequest {
  LoginRequest({this.registeredEmail, this.password, this.reviewDoctor});

  LoginRequest.fromJson(dynamic json) {
    registeredEmail = json['Registered_Email'];
    password = json['Password'];
    reviewDoctor = json['Review_Doctor'];
  }
  String? registeredEmail;
  String? password;
  bool? reviewDoctor;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Registered_Email'] = registeredEmail;
    map['Password'] = password;
    map['Review_Doctor'] = reviewDoctor;
    return map;
  }
}
