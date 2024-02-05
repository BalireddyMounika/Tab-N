import 'package:nivish/app/data/values/env.dart';

class URLs {
  URLs._privateConstructor();

  static const login = '${Env.baseURL}Hcp/HCPLogin/';
  static const hcpOtpGeneration = '${Env.baseURL}Hcp/HcpOtpGeneration/';
  static const hcpOtpVerification = '${Env.baseURL}Hcp/HcpOtpVerfication/';
  static const infoseekUINInfoseekGet =
      '${Env.baseURL}Infoseek/UINInfoseekGet/';

  /// Station A
  static const stationADetailsCreate =
      '${Env.baseURL}StationA/StationADetailsCreate/';
  static const stationADetailsUpdate =
      '${Env.baseURL}StationA/StationADetailsUpdate/';
  static const stationAGetDetails = '${Env.baseURL}StationA/StationADetails/';

  /// Station B
  static const stationBDetailsCreate =
      '${Env.baseURL}StationB/StationBDetailsCreate/';
  static const stationBGetDetails = '${Env.baseURL}StationB/StationBDetails/';

  /// Station C
  static const stationCDetailsCreate =
      '${Env.baseURL}StationC/StationCDetailsCreate/';
  static const stationCUpdateExtraOcular =
      '${Env.baseURL}StationC/StationCDetailsS2';
  static const stationCVisuallyChallenged =
      '${Env.baseURL}StationC/StationCDetailsS3';
  static const stationCVisualActivity =
      '${Env.baseURL}StationC/StationCDetailsS4';
  static const stationCOtherObservation =
      '${Env.baseURL}StationC/StationCDetailsS5';
  static const stationCDetailsUpdate =
      '${Env.baseURL}StationC/StationCDetailsUpdate';
  static const stationCGetDetails = '${Env.baseURL}StationC/StationCDetails/';

  /// Station D
  static const StationDDetailsCreate =
      Env.baseURL + 'StationD/StationDDetailsCreate/';
  static const StationDUpdateVisualInspection =
      Env.baseURL + 'StationD/StationDDetailsS2';
  static const StationDPure = Env.baseURL + 'StationD/StationDDetailsS3';
  static const StationDOther = Env.baseURL + 'StationD/StationDDetailsS4';
  static const StationDDetailsUpdate =
      Env.baseURL + 'StationD/StationDDetailsUpdate/';
  static const StationDDetailsUploadDocs =
      Env.baseURL + 'StationD/StationDDetailsUploadDocs/';
  static const stationDGetDetails = '${Env.baseURL}StationD/StationDDetails/';
  static const stationDDetailsUpdateDetails = '${Env.baseURL}StationD/StationDDetailsUpdate/';


  /// station E
  static const stationEDetailsCreate =
      Env.baseURL + 'StationE/StationEDetailsCreate/';
  static const StationEWear = Env.baseURL + 'StationE/StationEDetailsS2';
  static const StationEULRight = Env.baseURL + 'StationE/StationEDetailsS3';
  static const StationELLRight = Env.baseURL + 'StationE/StationEDetailsS4';
  static const StationEUpdateOther = Env.baseURL + 'StationE/StationEDetailsS5';
  static const stationEGetDetails = '${Env.baseURL}StationE/StationEDetails/';

  /// Station F
  static const StationFDetailsCreate =
      Env.baseURL + 'StationF/StationFDetailsCreate/';
  static const StationFUpdateNails = Env.baseURL + 'StationF/StationFDetailsS2';
  static const StationFUpdateHead = Env.baseURL + 'StationF/StationFDetailsS3';
  static const StationFUpdateThyroid =
      Env.baseURL + 'StationF/StationFDetailsS4';
  static const StationFUpdateEyes = Env.baseURL + 'StationF/StationFDetailsS5';
  static const StationFUpdateEars = Env.baseURL + 'StationF/StationFDetailsS6';
  static const StationFUpdateNose = Env.baseURL + 'StationF/StationFDetailsS7';
  static const StationFUpdateMouth = Env.baseURL + 'StationF/StationFDetailsS8';
  static const StationFUpdateHygiene =
      Env.baseURL + 'StationF/StationFDetailsS9';
  static const StationFUpdateOther =
      Env.baseURL + 'StationF/StationFDetailsS10';
  static const stationFGetDetails = '${Env.baseURL}StationF/StationFDetails/';


  /// Station G
  static const StationGDetailsCreate =
      Env.baseURL + 'StationG/StationGDetailsCreate/';
  static const StationGUpdateRespiratory =
      Env.baseURL + 'StationG/StationGDetailsS2';
  static const StationGUpdateVascular =
      Env.baseURL + 'StationG/StationGDetailsS4';
  static const StationGUpdateAlimentary =
      Env.baseURL + 'StationG/StationGDetailsS5';
  static const StationGUpdateGirls =
      Env.baseURL + 'StationG/StationGDetailsS6A';
  static const StationGUpdateBoys = Env.baseURL + 'StationG/StationGDetailsS6B';
  static const StationGUpdateRightLung =
      Env.baseURL + 'StationG/StationGDetailsS3';
  static const StationGUpdateHistoryOfMedication =
      Env.baseURL + 'StationG/StationGDetailsS7';
  static const StationGUpdateOtherObservations =
      Env.baseURL + 'StationG/StationGDetailsS9';
  static const getStationGDetails = '${Env.baseURL}StationG/StationGDetails/';
  /// Station H
  static const stationHDetailsCreate =
      '${Env.baseURL}StationH/StationHDetailsCreate/';
  static const updateOralHygiene = '${Env.baseURL}StationH/StationHDetailsS2/';
  static const updateSensitivity = '${Env.baseURL}StationH/StationHDetailsS3/';
  static const updateSoftTissue = '${Env.baseURL}StationH/StationHDetailsS4/';
  static const updateDentalOtherObservation =
      '${Env.baseURL}StationH/StationHDetailsS5/';
  static const updateAdditionalOtherObservation =
      '${Env.baseURL}StationH/StationHDetailsS6/';
  static const getStationHDetails = '${Env.baseURL}StationH/StationHDetails/';

  // static const token =
  //     'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjk1NzkxODUyLCJpYXQiOjE2ODgwMTU4NTIsImp0aSI6IjEwZjg1NWMyMjkwYjQ3MTg5MmU3NDAwZGNhZWQxZTA0IiwidXNlcl9pZCI6M30.HTtK2OX8_u9ul3-6jlswZjMZYwAAdtsoGT8-yXRdcGw';
}
