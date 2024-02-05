class StationDVisualInspectionRequest {
  StationDVisualInspectionRequest({
    this.id,
    this.visualInspectionRightEarPinna,
    this.visualInspectionRightEarPinnaAbnormal,
    this.visualInspectionRightEarEarCanal,
    this.visualInspectionRightEarEarCanalAbnormal,
    this.visualInspectionLeftEarPinna,
    this.visualInspectionLeftEarPinnaAbnormal,
    this.visualInspectionLeftEarEarCanal,
    this.visualInspectionLeftEarEarCanalAbnormal,
    this.anyOtherRelatedFindings,
  });

  StationDVisualInspectionRequest.fromJson(dynamic json) {
    id = json['id'];
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
  }
  int? id;
  String? visualInspectionRightEarPinna;
  dynamic visualInspectionRightEarPinnaAbnormal;
  String? visualInspectionRightEarEarCanal;
  dynamic visualInspectionRightEarEarCanalAbnormal;
  String? visualInspectionLeftEarPinna;
  dynamic visualInspectionLeftEarPinnaAbnormal;
  String? visualInspectionLeftEarEarCanal;
  dynamic visualInspectionLeftEarEarCanalAbnormal;
  String? anyOtherRelatedFindings;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
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
    return map;
  }
}
