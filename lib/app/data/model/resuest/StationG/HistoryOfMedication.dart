class HistoryOfMedication {
  HistoryOfMedication({
      String? historyOfMedication,
      String? historyOfMedicationYes,
      String? nameOfMedication,}){
    _historyOfMedication = historyOfMedication!;
    _historyOfMedicationYes = historyOfMedicationYes!;
    _nameOfMedication = nameOfMedication!;
}

  HistoryOfMedication.fromJson(dynamic json) {
    _historyOfMedication = json['History_of_Medication'];
    _historyOfMedicationYes = json['History_of_Medication_Yes'];
    _nameOfMedication = json['Name_of_Medication'];
  }
  String? _historyOfMedication;
  String? _historyOfMedicationYes;
  String? _nameOfMedication;
HistoryOfMedication copyWith({  String? historyOfMedication,
  String? historyOfMedicationYes,
  String? nameOfMedication,
}) => HistoryOfMedication(  historyOfMedication: historyOfMedication ?? _historyOfMedication,
  historyOfMedicationYes: historyOfMedicationYes ?? _historyOfMedicationYes,
  nameOfMedication: nameOfMedication ?? _nameOfMedication,
);
  String? get historyOfMedication => _historyOfMedication;
  String? get historyOfMedicationYes => _historyOfMedicationYes;
  String? get nameOfMedication => _nameOfMedication;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['History_of_Medication'] = _historyOfMedication;
    map['History_of_Medication_Yes'] = _historyOfMedicationYes;
    map['Name_of_Medication'] = _nameOfMedication;
    return map;
  }

}