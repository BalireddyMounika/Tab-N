import 'Stations.dart';

class User {
  User({
    this.id,
    this.provider,
    this.fullName,
    this.dateOfBirth,
    this.registeredEmail,
    this.gender,
    this.registeredMobileNumber,
    this.type,
    this.stations,
    this.token,
    this.uploadYourPhoto,
    this.niv,
  });

  User.fromJson(dynamic json) {
    id = json['id'];
    provider = json['Provider'];
    fullName = json['FullName'];
    dateOfBirth = json['Date_of_Birth'];
    registeredEmail = json['Registered_Email'];
    gender = json['Gender'];
    registeredMobileNumber = json['Registered_MobileNumber'];
    type = json['Type'];
    if (json['Stations'] != null) {
      stations = [];
      json['Stations'].forEach((v) {
        stations?.add(Stations.fromJson(v));
      });
    }
    token = json['Token'];
    uploadYourPhoto = json['Upload_Your_Photo'];
    niv = json['NIV'];
  }
  int? id;
  dynamic provider;
  String? fullName;
  String? dateOfBirth;
  String? registeredEmail;
  dynamic gender;
  String? registeredMobileNumber;
  dynamic type;
  List<Stations>? stations;
  String? token;
  String? uploadYourPhoto;
  String? niv;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['Provider'] = provider;
    map['FullName'] = fullName;
    map['Date_of_Birth'] = dateOfBirth;
    map['Registered_Email'] = registeredEmail;
    map['Gender'] = gender;
    map['Registered_MobileNumber'] = registeredMobileNumber;
    map['Type'] = type;
    if (stations != null) {
      map['Stations'] = stations?.map((v) => v.toJson()).toList();
    }
    map['Token'] = token;
    map['Upload_Your_Photo'] = uploadYourPhoto;
    map['NIV'] = niv;
    return map;
  }
}
