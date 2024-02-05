/// Respiratory_System_Do_you_Feel_Breathless : "No"
/// RS_Do_you_have_a_Cough : "No"
/// RS_Shape_of_Chest : "Normal"
/// RS_Shape_of_Chest_Abnormal : "Concave"
/// RS_Shape_of_Chest_Abnormal_Other : "string"
/// RS_Type_of_Respiration : "Abdominal"
/// RS_Type_of_Respiration_Abdominal : "Indrawing of intercostal spaces"
/// RS_Type_of_Respiration_Abdominal_Other : "string"
/// RS_Type_of_Respiration_Thoracic : "Indrawing of intercostal spaces"
/// RS_Type_of_Respiration_Thoracic_Other : "string"
/// RS_Type_of_Respiration_Abdomino_Thoracic : "Indrawing of intercostal spaces"
/// RS_Type_of_Respiration_Abdomino_Thoracic_Other : "string"
/// RS_Trachea : "Central"
/// RS_Evidence_of_Tracheostomy : "Absent"

class RespiratorySystem {
  RespiratorySystem({
      String? respiratorySystemDoYouFeelBreathless, 
      String? rSDoYouHaveACough, 
      String? rSShapeOfChest, 
      String? rSShapeOfChestAbnormal, 
      String? rSShapeOfChestAbnormalOther, 
      String? rSTypeOfRespiration, 
      String? rSTypeOfRespirationAbdominal, 
      String? rSTypeOfRespirationAbdominalOther, 
      String? rSTypeOfRespirationThoracic, 
      String? rSTypeOfRespirationThoracicOther, 
      String? rSTypeOfRespirationAbdominoThoracic, 
      String? rSTypeOfRespirationAbdominoThoracicOther, 
      String? rSTrachea, 
      String? rSEvidenceOfTracheostomy,}){
    _respiratorySystemDoYouFeelBreathless = respiratorySystemDoYouFeelBreathless;
    _rSDoYouHaveACough = rSDoYouHaveACough;
    _rSShapeOfChest = rSShapeOfChest;
    _rSShapeOfChestAbnormal = rSShapeOfChestAbnormal;
    _rSShapeOfChestAbnormalOther = rSShapeOfChestAbnormalOther;
    _rSTypeOfRespiration = rSTypeOfRespiration;
    _rSTypeOfRespirationAbdominal = rSTypeOfRespirationAbdominal;
    _rSTypeOfRespirationAbdominalOther = rSTypeOfRespirationAbdominalOther;
    _rSTypeOfRespirationThoracic = rSTypeOfRespirationThoracic;
    _rSTypeOfRespirationThoracicOther = rSTypeOfRespirationThoracicOther;
    _rSTypeOfRespirationAbdominoThoracic = rSTypeOfRespirationAbdominoThoracic;
    _rSTypeOfRespirationAbdominoThoracicOther = rSTypeOfRespirationAbdominoThoracicOther;
    _rSTrachea = rSTrachea;
    _rSEvidenceOfTracheostomy = rSEvidenceOfTracheostomy;
}

  RespiratorySystem.fromJson(dynamic json) {
    _respiratorySystemDoYouFeelBreathless = json['Respiratory_System_Do_you_Feel_Breathless'];
    _rSDoYouHaveACough = json['RS_Do_you_have_a_Cough'];
    _rSShapeOfChest = json['RS_Shape_of_Chest'];
    _rSShapeOfChestAbnormal = json['RS_Shape_of_Chest_Abnormal'];
    _rSShapeOfChestAbnormalOther = json['RS_Shape_of_Chest_Abnormal_Other'];
    _rSTypeOfRespiration = json['RS_Type_of_Respiration'];
    _rSTypeOfRespirationAbdominal = json['RS_Type_of_Respiration_Abdominal'];
    _rSTypeOfRespirationAbdominalOther = json['RS_Type_of_Respiration_Abdominal_Other'];
    _rSTypeOfRespirationThoracic = json['RS_Type_of_Respiration_Thoracic'];
    _rSTypeOfRespirationThoracicOther = json['RS_Type_of_Respiration_Thoracic_Other'];
    _rSTypeOfRespirationAbdominoThoracic = json['RS_Type_of_Respiration_Abdomino_Thoracic'];
    _rSTypeOfRespirationAbdominoThoracicOther = json['RS_Type_of_Respiration_Abdomino_Thoracic_Other'];
    _rSTrachea = json['RS_Trachea'];
    _rSEvidenceOfTracheostomy = json['RS_Evidence_of_Tracheostomy'];
  }
  String? _respiratorySystemDoYouFeelBreathless;
  String? _rSDoYouHaveACough;
  String? _rSShapeOfChest;
  String? _rSShapeOfChestAbnormal;
  String? _rSShapeOfChestAbnormalOther;
  String? _rSTypeOfRespiration;
  String? _rSTypeOfRespirationAbdominal;
  String? _rSTypeOfRespirationAbdominalOther;
  String? _rSTypeOfRespirationThoracic;
  String? _rSTypeOfRespirationThoracicOther;
  String? _rSTypeOfRespirationAbdominoThoracic;
  String? _rSTypeOfRespirationAbdominoThoracicOther;
  String? _rSTrachea;
  String? _rSEvidenceOfTracheostomy;
RespiratorySystem copyWith({  String? respiratorySystemDoYouFeelBreathless,
  String? rSDoYouHaveACough,
  String? rSShapeOfChest,
  String? rSShapeOfChestAbnormal,
  String? rSShapeOfChestAbnormalOther,
  String? rSTypeOfRespiration,
  String? rSTypeOfRespirationAbdominal,
  String? rSTypeOfRespirationAbdominalOther,
  String? rSTypeOfRespirationThoracic,
  String? rSTypeOfRespirationThoracicOther,
  String? rSTypeOfRespirationAbdominoThoracic,
  String? rSTypeOfRespirationAbdominoThoracicOther,
  String? rSTrachea,
  String? rSEvidenceOfTracheostomy,
}) => RespiratorySystem(  respiratorySystemDoYouFeelBreathless: respiratorySystemDoYouFeelBreathless ?? _respiratorySystemDoYouFeelBreathless,
  rSDoYouHaveACough: rSDoYouHaveACough ?? _rSDoYouHaveACough,
  rSShapeOfChest: rSShapeOfChest ?? _rSShapeOfChest,
  rSShapeOfChestAbnormal: rSShapeOfChestAbnormal ?? _rSShapeOfChestAbnormal,
  rSShapeOfChestAbnormalOther: rSShapeOfChestAbnormalOther ?? _rSShapeOfChestAbnormalOther,
  rSTypeOfRespiration: rSTypeOfRespiration ?? _rSTypeOfRespiration,
  rSTypeOfRespirationAbdominal: rSTypeOfRespirationAbdominal ?? _rSTypeOfRespirationAbdominal,
  rSTypeOfRespirationAbdominalOther: rSTypeOfRespirationAbdominalOther ?? _rSTypeOfRespirationAbdominalOther,
  rSTypeOfRespirationThoracic: rSTypeOfRespirationThoracic ?? _rSTypeOfRespirationThoracic,
  rSTypeOfRespirationThoracicOther: rSTypeOfRespirationThoracicOther ?? _rSTypeOfRespirationThoracicOther,
  rSTypeOfRespirationAbdominoThoracic: rSTypeOfRespirationAbdominoThoracic ?? _rSTypeOfRespirationAbdominoThoracic,
  rSTypeOfRespirationAbdominoThoracicOther: rSTypeOfRespirationAbdominoThoracicOther ?? _rSTypeOfRespirationAbdominoThoracicOther,
  rSTrachea: rSTrachea ?? _rSTrachea,
  rSEvidenceOfTracheostomy: rSEvidenceOfTracheostomy ?? _rSEvidenceOfTracheostomy,
);
  String? get respiratorySystemDoYouFeelBreathless => _respiratorySystemDoYouFeelBreathless;
  String? get rSDoYouHaveACough => _rSDoYouHaveACough;
  String? get rSShapeOfChest => _rSShapeOfChest;
  String? get rSShapeOfChestAbnormal => _rSShapeOfChestAbnormal;
  String? get rSShapeOfChestAbnormalOther => _rSShapeOfChestAbnormalOther;
  String? get rSTypeOfRespiration => _rSTypeOfRespiration;
  String? get rSTypeOfRespirationAbdominal => _rSTypeOfRespirationAbdominal;
  String? get rSTypeOfRespirationAbdominalOther => _rSTypeOfRespirationAbdominalOther;
  String? get rSTypeOfRespirationThoracic => _rSTypeOfRespirationThoracic;
  String? get rSTypeOfRespirationThoracicOther => _rSTypeOfRespirationThoracicOther;
  String? get rSTypeOfRespirationAbdominoThoracic => _rSTypeOfRespirationAbdominoThoracic;
  String? get rSTypeOfRespirationAbdominoThoracicOther => _rSTypeOfRespirationAbdominoThoracicOther;
  String? get rSTrachea => _rSTrachea;
  String? get rSEvidenceOfTracheostomy => _rSEvidenceOfTracheostomy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Respiratory_System_Do_you_Feel_Breathless'] = _respiratorySystemDoYouFeelBreathless;
    map['RS_Do_you_have_a_Cough'] = _rSDoYouHaveACough;
    map['RS_Shape_of_Chest'] = _rSShapeOfChest;
    map['RS_Shape_of_Chest_Abnormal'] = _rSShapeOfChestAbnormal;
    map['RS_Shape_of_Chest_Abnormal_Other'] = _rSShapeOfChestAbnormalOther;
    map['RS_Type_of_Respiration'] = _rSTypeOfRespiration;
    map['RS_Type_of_Respiration_Abdominal'] = _rSTypeOfRespirationAbdominal;
    map['RS_Type_of_Respiration_Abdominal_Other'] = _rSTypeOfRespirationAbdominalOther;
    map['RS_Type_of_Respiration_Thoracic'] = _rSTypeOfRespirationThoracic;
    map['RS_Type_of_Respiration_Thoracic_Other'] = _rSTypeOfRespirationThoracicOther;
    map['RS_Type_of_Respiration_Abdomino_Thoracic'] = _rSTypeOfRespirationAbdominoThoracic;
    map['RS_Type_of_Respiration_Abdomino_Thoracic_Other'] = _rSTypeOfRespirationAbdominoThoracicOther;
    map['RS_Trachea'] = _rSTrachea;
    map['RS_Evidence_of_Tracheostomy'] = _rSEvidenceOfTracheostomy;
    return map;
  }

}