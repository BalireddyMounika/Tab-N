/// Cardio_Vascular_Systems_Do_you_get_Palpitation : "No"
/// CVS_Fainted_in_Home_School_Workplace_at_any_time : "No"
/// CVS_Jugular_Pulsations : "Not visible"
/// CVS_Jugular_Pulsations_Visible : "Normal"
/// CVS_Jugular_Pulsations_Visible_Abnormal : "string"
/// CVS_Suprasternal_Pulsations : "Absent"
/// CVS_Suprasternal_Pulsations_Present : "string"
/// CVS_Peripheral_Pulsations_Radial : "Absent"
/// CVS_Peripheral_Pulsations_Radial_Present : "Normal"
/// CVS_Peripheral_Pulsations_Radial_Present_Abnormal : "string"
/// CVS_Peripheral_Pulsations_Dorsalis_Pedis : "Absent"
/// CVS_Peripheral_Pulsations_Dorsalis_Pedis_Present : "Normal"
/// CVS_Peripheral_Pulsations_Dorsalis_Pedis_Abnormal : "string"
/// CVS_Peripheral_Pulsations_Other_abnormality : "string"
/// CVS_S1 : "Normal"
/// CVS_S2 : "Normal"
/// CVS_S3 : "Absent"
/// CVS_Murmur : "Absent"
/// CVS_Murmur_Present : "string"
/// CVS_Murmur_Present_Other : "string"
/// CVS_Click : "Absent"
/// CVS_Click_Present_Position : "string"
/// CVS_Apex_Beat : "Normal"
/// CVS_Apex_Beat_Present_Displaced : "string"

class CardioVascularSystem {
  CardioVascularSystem({
      String? cardioVascularSystemsDoYouGetPalpitation, 
      String? cVSFaintedInHomeSchoolWorkplaceAtAnyTime, 
      String? cVSJugularPulsations, 
      String? cVSJugularPulsationsVisible, 
      String? cVSJugularPulsationsVisibleAbnormal, 
      String? cVSSuprasternalPulsations, 
      String? cVSSuprasternalPulsationsPresent, 
      String? cVSPeripheralPulsationsRadial, 
      String? cVSPeripheralPulsationsRadialPresent, 
      String? cVSPeripheralPulsationsRadialPresentAbnormal, 
      String? cVSPeripheralPulsationsDorsalisPedis, 
      String? cVSPeripheralPulsationsDorsalisPedisPresent, 
      String? cVSPeripheralPulsationsDorsalisPedisAbnormal, 
      String? cVSPeripheralPulsationsOtherAbnormality, 
      String? cvss1, 
      String? cvss2, 
      String? cvss3, 
      String? cVSMurmur, 
      String? cVSMurmurPresent, 
      String? cVSMurmurPresentOther, 
      String? cVSClick, 
      String? cVSClickPresentPosition, 
      String? cVSApexBeat, 
      String? cVSApexBeatPresentDisplaced,}){
    _cardioVascularSystemsDoYouGetPalpitation = cardioVascularSystemsDoYouGetPalpitation;
    _cVSFaintedInHomeSchoolWorkplaceAtAnyTime = cVSFaintedInHomeSchoolWorkplaceAtAnyTime;
    _cVSJugularPulsations = cVSJugularPulsations;
    _cVSJugularPulsationsVisible = cVSJugularPulsationsVisible;
    _cVSJugularPulsationsVisibleAbnormal = cVSJugularPulsationsVisibleAbnormal;
    _cVSSuprasternalPulsations = cVSSuprasternalPulsations;
    _cVSSuprasternalPulsationsPresent = cVSSuprasternalPulsationsPresent;
    _cVSPeripheralPulsationsRadial = cVSPeripheralPulsationsRadial;
    _cVSPeripheralPulsationsRadialPresent = cVSPeripheralPulsationsRadialPresent;
    _cVSPeripheralPulsationsRadialPresentAbnormal = cVSPeripheralPulsationsRadialPresentAbnormal;
    _cVSPeripheralPulsationsDorsalisPedis = cVSPeripheralPulsationsDorsalisPedis;
    _cVSPeripheralPulsationsDorsalisPedisPresent = cVSPeripheralPulsationsDorsalisPedisPresent;
    _cVSPeripheralPulsationsDorsalisPedisAbnormal = cVSPeripheralPulsationsDorsalisPedisAbnormal;
    _cVSPeripheralPulsationsOtherAbnormality = cVSPeripheralPulsationsOtherAbnormality;
    _cvss1 = cvss1;
    _cvss2 = cvss2;
    _cvss3 = cvss3;
    _cVSMurmur = cVSMurmur;
    _cVSMurmurPresent = cVSMurmurPresent;
    _cVSMurmurPresentOther = cVSMurmurPresentOther;
    _cVSClick = cVSClick;
    _cVSClickPresentPosition = cVSClickPresentPosition;
    _cVSApexBeat = cVSApexBeat;
    _cVSApexBeatPresentDisplaced = cVSApexBeatPresentDisplaced;
}

  CardioVascularSystem.fromJson(dynamic json) {
    _cardioVascularSystemsDoYouGetPalpitation = json['Cardio_Vascular_Systems_Do_you_get_Palpitation'];
    _cVSFaintedInHomeSchoolWorkplaceAtAnyTime = json['CVS_Fainted_in_Home_School_Workplace_at_any_time'];
    _cVSJugularPulsations = json['CVS_Jugular_Pulsations'];
    _cVSJugularPulsationsVisible = json['CVS_Jugular_Pulsations_Visible'];
    _cVSJugularPulsationsVisibleAbnormal = json['CVS_Jugular_Pulsations_Visible_Abnormal'];
    _cVSSuprasternalPulsations = json['CVS_Suprasternal_Pulsations'];
    _cVSSuprasternalPulsationsPresent = json['CVS_Suprasternal_Pulsations_Present'];
    _cVSPeripheralPulsationsRadial = json['CVS_Peripheral_Pulsations_Radial'];
    _cVSPeripheralPulsationsRadialPresent = json['CVS_Peripheral_Pulsations_Radial_Present'];
    _cVSPeripheralPulsationsRadialPresentAbnormal = json['CVS_Peripheral_Pulsations_Radial_Present_Abnormal'];
    _cVSPeripheralPulsationsDorsalisPedis = json['CVS_Peripheral_Pulsations_Dorsalis_Pedis'];
    _cVSPeripheralPulsationsDorsalisPedisPresent = json['CVS_Peripheral_Pulsations_Dorsalis_Pedis_Present'];
    _cVSPeripheralPulsationsDorsalisPedisAbnormal = json['CVS_Peripheral_Pulsations_Dorsalis_Pedis_Abnormal'];
    _cVSPeripheralPulsationsOtherAbnormality = json['CVS_Peripheral_Pulsations_Other_abnormality'];
    _cvss1 = json['CVS_S1'];
    _cvss2 = json['CVS_S2'];
    _cvss3 = json['CVS_S3'];
    _cVSMurmur = json['CVS_Murmur'];
    _cVSMurmurPresent = json['CVS_Murmur_Present'];
    _cVSMurmurPresentOther = json['CVS_Murmur_Present_Other'];
    _cVSClick = json['CVS_Click'];
    _cVSClickPresentPosition = json['CVS_Click_Present_Position'];
    _cVSApexBeat = json['CVS_Apex_Beat'];
    _cVSApexBeatPresentDisplaced = json['CVS_Apex_Beat_Present_Displaced'];
  }
  String? _cardioVascularSystemsDoYouGetPalpitation;
  String? _cVSFaintedInHomeSchoolWorkplaceAtAnyTime;
  String? _cVSJugularPulsations;
  String? _cVSJugularPulsationsVisible;
  String? _cVSJugularPulsationsVisibleAbnormal;
  String? _cVSSuprasternalPulsations;
  String? _cVSSuprasternalPulsationsPresent;
  String? _cVSPeripheralPulsationsRadial;
  String? _cVSPeripheralPulsationsRadialPresent;
  String? _cVSPeripheralPulsationsRadialPresentAbnormal;
  String? _cVSPeripheralPulsationsDorsalisPedis;
  String? _cVSPeripheralPulsationsDorsalisPedisPresent;
  String? _cVSPeripheralPulsationsDorsalisPedisAbnormal;
  String? _cVSPeripheralPulsationsOtherAbnormality;
  String? _cvss1;
  String? _cvss2;
  String? _cvss3;
  String? _cVSMurmur;
  String? _cVSMurmurPresent;
  String? _cVSMurmurPresentOther;
  String? _cVSClick;
  String? _cVSClickPresentPosition;
  String? _cVSApexBeat;
  String? _cVSApexBeatPresentDisplaced;
CardioVascularSystem copyWith({  String? cardioVascularSystemsDoYouGetPalpitation,
  String? cVSFaintedInHomeSchoolWorkplaceAtAnyTime,
  String? cVSJugularPulsations,
  String? cVSJugularPulsationsVisible,
  String? cVSJugularPulsationsVisibleAbnormal,
  String? cVSSuprasternalPulsations,
  String? cVSSuprasternalPulsationsPresent,
  String? cVSPeripheralPulsationsRadial,
  String? cVSPeripheralPulsationsRadialPresent,
  String? cVSPeripheralPulsationsRadialPresentAbnormal,
  String? cVSPeripheralPulsationsDorsalisPedis,
  String? cVSPeripheralPulsationsDorsalisPedisPresent,
  String? cVSPeripheralPulsationsDorsalisPedisAbnormal,
  String? cVSPeripheralPulsationsOtherAbnormality,
  String? cvss1,
  String? cvss2,
  String? cvss3,
  String? cVSMurmur,
  String? cVSMurmurPresent,
  String? cVSMurmurPresentOther,
  String? cVSClick,
  String? cVSClickPresentPosition,
  String? cVSApexBeat,
  String? cVSApexBeatPresentDisplaced,
}) => CardioVascularSystem(  cardioVascularSystemsDoYouGetPalpitation: cardioVascularSystemsDoYouGetPalpitation ?? _cardioVascularSystemsDoYouGetPalpitation,
  cVSFaintedInHomeSchoolWorkplaceAtAnyTime: cVSFaintedInHomeSchoolWorkplaceAtAnyTime ?? _cVSFaintedInHomeSchoolWorkplaceAtAnyTime,
  cVSJugularPulsations: cVSJugularPulsations ?? _cVSJugularPulsations,
  cVSJugularPulsationsVisible: cVSJugularPulsationsVisible ?? _cVSJugularPulsationsVisible,
  cVSJugularPulsationsVisibleAbnormal: cVSJugularPulsationsVisibleAbnormal ?? _cVSJugularPulsationsVisibleAbnormal,
  cVSSuprasternalPulsations: cVSSuprasternalPulsations ?? _cVSSuprasternalPulsations,
  cVSSuprasternalPulsationsPresent: cVSSuprasternalPulsationsPresent ?? _cVSSuprasternalPulsationsPresent,
  cVSPeripheralPulsationsRadial: cVSPeripheralPulsationsRadial ?? _cVSPeripheralPulsationsRadial,
  cVSPeripheralPulsationsRadialPresent: cVSPeripheralPulsationsRadialPresent ?? _cVSPeripheralPulsationsRadialPresent,
  cVSPeripheralPulsationsRadialPresentAbnormal: cVSPeripheralPulsationsRadialPresentAbnormal ?? _cVSPeripheralPulsationsRadialPresentAbnormal,
  cVSPeripheralPulsationsDorsalisPedis: cVSPeripheralPulsationsDorsalisPedis ?? _cVSPeripheralPulsationsDorsalisPedis,
  cVSPeripheralPulsationsDorsalisPedisPresent: cVSPeripheralPulsationsDorsalisPedisPresent ?? _cVSPeripheralPulsationsDorsalisPedisPresent,
  cVSPeripheralPulsationsDorsalisPedisAbnormal: cVSPeripheralPulsationsDorsalisPedisAbnormal ?? _cVSPeripheralPulsationsDorsalisPedisAbnormal,
  cVSPeripheralPulsationsOtherAbnormality: cVSPeripheralPulsationsOtherAbnormality ?? _cVSPeripheralPulsationsOtherAbnormality,
  cvss1: cvss1 ?? _cvss1,
  cvss2: cvss2 ?? _cvss2,
  cvss3: cvss3 ?? _cvss3,
  cVSMurmur: cVSMurmur ?? _cVSMurmur,
  cVSMurmurPresent: cVSMurmurPresent ?? _cVSMurmurPresent,
  cVSMurmurPresentOther: cVSMurmurPresentOther ?? _cVSMurmurPresentOther,
  cVSClick: cVSClick ?? _cVSClick,
  cVSClickPresentPosition: cVSClickPresentPosition ?? _cVSClickPresentPosition,
  cVSApexBeat: cVSApexBeat ?? _cVSApexBeat,
  cVSApexBeatPresentDisplaced: cVSApexBeatPresentDisplaced ?? _cVSApexBeatPresentDisplaced,
);
  String? get cardioVascularSystemsDoYouGetPalpitation => _cardioVascularSystemsDoYouGetPalpitation;
  String? get cVSFaintedInHomeSchoolWorkplaceAtAnyTime => _cVSFaintedInHomeSchoolWorkplaceAtAnyTime;
  String? get cVSJugularPulsations => _cVSJugularPulsations;
  String? get cVSJugularPulsationsVisible => _cVSJugularPulsationsVisible;
  String? get cVSJugularPulsationsVisibleAbnormal => _cVSJugularPulsationsVisibleAbnormal;
  String? get cVSSuprasternalPulsations => _cVSSuprasternalPulsations;
  String? get cVSSuprasternalPulsationsPresent => _cVSSuprasternalPulsationsPresent;
  String? get cVSPeripheralPulsationsRadial => _cVSPeripheralPulsationsRadial;
  String? get cVSPeripheralPulsationsRadialPresent => _cVSPeripheralPulsationsRadialPresent;
  String? get cVSPeripheralPulsationsRadialPresentAbnormal => _cVSPeripheralPulsationsRadialPresentAbnormal;
  String? get cVSPeripheralPulsationsDorsalisPedis => _cVSPeripheralPulsationsDorsalisPedis;
  String? get cVSPeripheralPulsationsDorsalisPedisPresent => _cVSPeripheralPulsationsDorsalisPedisPresent;
  String? get cVSPeripheralPulsationsDorsalisPedisAbnormal => _cVSPeripheralPulsationsDorsalisPedisAbnormal;
  String? get cVSPeripheralPulsationsOtherAbnormality => _cVSPeripheralPulsationsOtherAbnormality;
  String? get cvss1 => _cvss1;
  String? get cvss2 => _cvss2;
  String? get cvss3 => _cvss3;
  String? get cVSMurmur => _cVSMurmur;
  String? get cVSMurmurPresent => _cVSMurmurPresent;
  String? get cVSMurmurPresentOther => _cVSMurmurPresentOther;
  String? get cVSClick => _cVSClick;
  String? get cVSClickPresentPosition => _cVSClickPresentPosition;
  String? get cVSApexBeat => _cVSApexBeat;
  String? get cVSApexBeatPresentDisplaced => _cVSApexBeatPresentDisplaced;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Cardio_Vascular_Systems_Do_you_get_Palpitation'] = _cardioVascularSystemsDoYouGetPalpitation;
    map['CVS_Fainted_in_Home_School_Workplace_at_any_time'] = _cVSFaintedInHomeSchoolWorkplaceAtAnyTime;
    map['CVS_Jugular_Pulsations'] = _cVSJugularPulsations;
    map['CVS_Jugular_Pulsations_Visible'] = _cVSJugularPulsationsVisible;
    map['CVS_Jugular_Pulsations_Visible_Abnormal'] = _cVSJugularPulsationsVisibleAbnormal;
    map['CVS_Suprasternal_Pulsations'] = _cVSSuprasternalPulsations;
    map['CVS_Suprasternal_Pulsations_Present'] = _cVSSuprasternalPulsationsPresent;
    map['CVS_Peripheral_Pulsations_Radial'] = _cVSPeripheralPulsationsRadial;
    map['CVS_Peripheral_Pulsations_Radial_Present'] = _cVSPeripheralPulsationsRadialPresent;
    map['CVS_Peripheral_Pulsations_Radial_Present_Abnormal'] = _cVSPeripheralPulsationsRadialPresentAbnormal;
    map['CVS_Peripheral_Pulsations_Dorsalis_Pedis'] = _cVSPeripheralPulsationsDorsalisPedis;
    map['CVS_Peripheral_Pulsations_Dorsalis_Pedis_Present'] = _cVSPeripheralPulsationsDorsalisPedisPresent;
    map['CVS_Peripheral_Pulsations_Dorsalis_Pedis_Abnormal'] = _cVSPeripheralPulsationsDorsalisPedisAbnormal;
    map['CVS_Peripheral_Pulsations_Other_abnormality'] = _cVSPeripheralPulsationsOtherAbnormality;
    map['CVS_S1'] = _cvss1;
    map['CVS_S2'] = _cvss2;
    map['CVS_S3'] = _cvss3;
    map['CVS_Murmur'] = _cVSMurmur;
    map['CVS_Murmur_Present'] = _cVSMurmurPresent;
    map['CVS_Murmur_Present_Other'] = _cVSMurmurPresentOther;
    map['CVS_Click'] = _cVSClick;
    map['CVS_Click_Present_Position'] = _cVSClickPresentPosition;
    map['CVS_Apex_Beat'] = _cVSApexBeat;
    map['CVS_Apex_Beat_Present_Displaced'] = _cVSApexBeatPresentDisplaced;
    return map;
  }

}