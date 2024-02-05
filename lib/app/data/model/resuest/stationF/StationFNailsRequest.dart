class StationFNailsRequest {
  StationFNailsRequest({
      this.nailsColor, 
      this.nailsShape, 
      this.nailsShapeAbnormal, 
      this.nailsDeformity, 
      this.nailsDeformityYes, 
      this.nailsCuticles, 
      this.nailBedInfection,});

  StationFNailsRequest.fromJson(dynamic json) {
    nailsColor = json['Nails_Color'];
    nailsShape = json['Nails_Shape'];
    nailsShapeAbnormal = json['Nails_Shape_Abnormal'];
    nailsDeformity = json['Nails_Deformity'];
    nailsDeformityYes = json['Nails_Deformity_Yes'];
    nailsCuticles = json['Nails_Cuticles'];
    nailBedInfection = json['Nail_Bed_Infection'];
  }
  String? nailsColor;
  String? nailsShape;
  String? nailsShapeAbnormal;
  String? nailsDeformity;
  String? nailsDeformityYes;
  String? nailsCuticles;
  String? nailBedInfection;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Nails_Color'] = nailsColor;
    map['Nails_Shape'] = nailsShape;
    map['Nails_Shape_Abnormal'] = nailsShapeAbnormal;
    map['Nails_Deformity'] = nailsDeformity;
    map['Nails_Deformity_Yes'] = nailsDeformityYes;
    map['Nails_Cuticles'] = nailsCuticles;
    map['Nail_Bed_Infection'] = nailBedInfection;
    return map;
  }

}