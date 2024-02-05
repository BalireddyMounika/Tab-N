class StationFThyroid {
  StationFThyroid({
      this.thyroidLymphThyroidGland, 
      this.thyroidLymphThyroidGlandEnlarged, 
      this.thyroidLymphCervicalLN, 
      this.thyroidLymphCervicalLNPalpable, 
      this.thyroidLymphSupraclavicularLN, 
      this.thyroidLymphSupraclavicularLNPalpable, 
      this.thyroidLymphAxillaryLN, 
      this.thyroidLymphAxillaryLNPalpable, 
      this.thyroidLymphSupratrochlearLN, 
      this.thyroidLymphSupratrochlearLNPalpable, 
      this.thyroidLymphInguinalLN, 
      this.thyroidLymphInguinalLNPalpable,});

  StationFThyroid.fromJson(dynamic json) {
    thyroidLymphThyroidGland = json['Thyroid_Lymph_Thyroid_Gland'];
    thyroidLymphThyroidGlandEnlarged = json['Thyroid_Lymph_Thyroid_Gland_Enlarged'];
    thyroidLymphCervicalLN = json['Thyroid_Lymph_Cervical_LN'];
    thyroidLymphCervicalLNPalpable = json['Thyroid_Lymph_Cervical_LN_Palpable'];
    thyroidLymphSupraclavicularLN = json['Thyroid_Lymph_Supraclavicular_LN'];
    thyroidLymphSupraclavicularLNPalpable = json['Thyroid_Lymph_Supraclavicular_LN_Palpable'];
    thyroidLymphAxillaryLN = json['Thyroid_Lymph_Axillary_LN'];
    thyroidLymphAxillaryLNPalpable = json['Thyroid_Lymph_Axillary_LN_Palpable'];
    thyroidLymphSupratrochlearLN = json['Thyroid_Lymph_Supratrochlear_LN'];
    thyroidLymphSupratrochlearLNPalpable = json['Thyroid_Lymph_Supratrochlear_LN_Palpable'];
    thyroidLymphInguinalLN = json['Thyroid_Lymph_Inguinal_LN'];
    thyroidLymphInguinalLNPalpable = json['Thyroid_Lymph_Inguinal_LN_Palpable'];
  }
  String? thyroidLymphThyroidGland;
  String? thyroidLymphThyroidGlandEnlarged;
  String? thyroidLymphCervicalLN;
  String? thyroidLymphCervicalLNPalpable;
  String? thyroidLymphSupraclavicularLN;
  String? thyroidLymphSupraclavicularLNPalpable;
  String? thyroidLymphAxillaryLN;
  String? thyroidLymphAxillaryLNPalpable;
  String? thyroidLymphSupratrochlearLN;
  String? thyroidLymphSupratrochlearLNPalpable;
  String? thyroidLymphInguinalLN;
  String? thyroidLymphInguinalLNPalpable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Thyroid_Lymph_Thyroid_Gland'] = thyroidLymphThyroidGland;
    map['Thyroid_Lymph_Thyroid_Gland_Enlarged'] = thyroidLymphThyroidGlandEnlarged;
    map['Thyroid_Lymph_Cervical_LN'] = thyroidLymphCervicalLN;
    map['Thyroid_Lymph_Cervical_LN_Palpable'] = thyroidLymphCervicalLNPalpable;
    map['Thyroid_Lymph_Supraclavicular_LN'] = thyroidLymphSupraclavicularLN;
    map['Thyroid_Lymph_Supraclavicular_LN_Palpable'] = thyroidLymphSupraclavicularLNPalpable;
    map['Thyroid_Lymph_Axillary_LN'] = thyroidLymphAxillaryLN;
    map['Thyroid_Lymph_Axillary_LN_Palpable'] = thyroidLymphAxillaryLNPalpable;
    map['Thyroid_Lymph_Supratrochlear_LN'] = thyroidLymphSupratrochlearLN;
    map['Thyroid_Lymph_Supratrochlear_LN_Palpable'] = thyroidLymphSupratrochlearLNPalpable;
    map['Thyroid_Lymph_Inguinal_LN'] = thyroidLymphInguinalLN;
    map['Thyroid_Lymph_Inguinal_LN_Palpable'] = thyroidLymphInguinalLNPalpable;
    return map;
  }

}