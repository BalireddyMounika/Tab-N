class SoftTissueRequest {
  SoftTissueRequest({
    this.softTissuePathology,
    this.softTissuePathologyYes,
    this.softTissuePathologyYesOther,
    this.treatmentNeeded,
    this.treatmentNeededYes,
    this.treatmentNeededYesOther,
    this.dentalFlorosis,
  });

  SoftTissueRequest.fromJson(dynamic json) {
    softTissuePathology = json['Soft_Tissue_Pathology'];
    softTissuePathologyYes = json['Soft_Tissue_Pathology_Yes'];
    softTissuePathologyYesOther = json['Soft_Tissue_Pathology_Yes_Other'];
    treatmentNeeded = json['Treatment_Needed'];
    treatmentNeededYes = json['Treatment_Needed_Yes'];
    treatmentNeededYesOther = json['Treatment_Needed_Yes_Other'];
    dentalFlorosis = json['Dental_Florosis'];
  }
  String? softTissuePathology;
  String? softTissuePathologyYes;
  String? softTissuePathologyYesOther;
  String? treatmentNeeded;
  String? treatmentNeededYes;
  String? treatmentNeededYesOther;
  String? dentalFlorosis;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Soft_Tissue_Pathology'] = softTissuePathology;
    map['Soft_Tissue_Pathology_Yes'] = softTissuePathologyYes;
    map['Soft_Tissue_Pathology_Yes_Other'] = softTissuePathologyYesOther;
    map['Treatment_Needed'] = treatmentNeeded;
    map['Treatment_Needed_Yes'] = treatmentNeededYes;
    map['Treatment_Needed_Yes_Other'] = treatmentNeededYesOther;
    map['Dental_Florosis'] = dentalFlorosis;
    return map;
  }
}
