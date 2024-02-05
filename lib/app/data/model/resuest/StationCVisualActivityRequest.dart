class StationCVisualActivityRequest {
  StationCVisualActivityRequest({
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
      this.visualAcuityColorBlindnessYes,});

  StationCVisualActivityRequest.fromJson(dynamic json) {
    visualAcuity = json['Visual_Acuity'];
    visualAcuityWithLensesDistantVisionLeft = json['Visual_Acuity_With_Lenses_Distant_Vision_Left'];
    visualAcuityWithLensesDistantVisionRight = json['Visual_Acuity_With_Lenses_Distant_Vision_Right'];
    visualAcuityWithLensesNearVisionLeft = json['Visual_Acuity_With_Lenses_Near_Vision_Left'];
    visualAcuityWithLensesNearVisionRight = json['Visual_Acuity_With_Lenses_Near_Vision_Right'];
    visualAcuityWithoutLensesDistantVisionLeft = json['Visual_Acuity_without_Lenses_Distant_Vision_Left'];
    visualAcuityWithoutLensesDistantVisionRight = json['Visual_Acuity_without_Lenses_Distant_Vision_Right'];
    visualAcuityWithoutLensesNearVisionLeft = json['Visual_Acuity_without_Lenses_Near_Vision_Left'];
    visualAcuityWithoutLensesNearVisionRight = json['Visual_Acuity_without_Lenses_Near_Vision_Right'];
    visualAcuityColorBlindness = json['Visual_Acuity_Color_Blindness'];
    visualAcuityColorBlindnessYes = json['Visual_Acuity_Color_Blindness_Yes'];
  }
  String? visualAcuity;
  int? visualAcuityWithLensesDistantVisionLeft;
  int? visualAcuityWithLensesDistantVisionRight;
  int? visualAcuityWithLensesNearVisionLeft;
  int? visualAcuityWithLensesNearVisionRight;
  int? visualAcuityWithoutLensesDistantVisionLeft;
  int? visualAcuityWithoutLensesDistantVisionRight;
  int? visualAcuityWithoutLensesNearVisionLeft;
  int? visualAcuityWithoutLensesNearVisionRight;
  String? visualAcuityColorBlindness;
  String? visualAcuityColorBlindnessYes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Visual_Acuity'] = visualAcuity;
    map['Visual_Acuity_With_Lenses_Distant_Vision_Left'] = visualAcuityWithLensesDistantVisionLeft;
    map['Visual_Acuity_With_Lenses_Distant_Vision_Right'] = visualAcuityWithLensesDistantVisionRight;
    map['Visual_Acuity_With_Lenses_Near_Vision_Left'] = visualAcuityWithLensesNearVisionLeft;
    map['Visual_Acuity_With_Lenses_Near_Vision_Right'] = visualAcuityWithLensesNearVisionRight;
    map['Visual_Acuity_without_Lenses_Distant_Vision_Left'] = visualAcuityWithoutLensesDistantVisionLeft;
    map['Visual_Acuity_without_Lenses_Distant_Vision_Right'] = visualAcuityWithoutLensesDistantVisionRight;
    map['Visual_Acuity_without_Lenses_Near_Vision_Left'] = visualAcuityWithoutLensesNearVisionLeft;
    map['Visual_Acuity_without_Lenses_Near_Vision_Right'] = visualAcuityWithoutLensesNearVisionRight;
    map['Visual_Acuity_Color_Blindness'] = visualAcuityColorBlindness;
    map['Visual_Acuity_Color_Blindness_Yes'] = visualAcuityColorBlindnessYes;
    return map;
  }

}