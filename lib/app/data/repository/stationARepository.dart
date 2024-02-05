import 'package:nivish/app/data/model/dto/response.dart';
import 'package:nivish/app/data/model/response/generic_response.dart';
import 'package:nivish/app/data/model/resuest/StationATequest.dart';
import 'package:nivish/app/data/model/resuest/StationBRequest.dart';
import 'package:nivish/app/data/model/resuest/StationCExtraOcularRequest.dart';
import 'package:nivish/app/data/model/resuest/StationCRequest.dart';
import 'package:nivish/app/data/model/resuest/StationDOtherRequest.dart';
import 'package:nivish/app/data/model/resuest/StationDPureRequest.dart';
import 'package:nivish/app/data/model/resuest/StationDVisualInsepctionRequest.dart';
import 'package:nivish/app/data/model/resuest/StationCOtherObservationRequest.dart';
import 'package:nivish/app/data/model/resuest/StationCVisualActivityRequest.dart';
import 'package:nivish/app/data/model/resuest/StationCVisualChallengeRequest.dart';
import 'package:nivish/app/data/model/resuest/stationE/LowerLimbRequest.dart';
import 'package:nivish/app/data/model/resuest/stationE/StationECreateRequest.dart';
import 'package:nivish/app/data/model/resuest/stationF/StationFEarsRequest.dart';
import 'package:nivish/app/data/model/resuest/stationF/StationFEyesRequest.dart';
import 'package:nivish/app/data/model/resuest/stationF/StationFHygiene.dart';
import 'package:nivish/app/data/model/resuest/stationF/StationFMouthRequest.dart';
import 'package:nivish/app/data/model/resuest/stationF/StationFNoseRequest.dart';
import 'package:nivish/app/data/model/resuest/stationF/StationFOtherRequest.dart';
import 'package:nivish/app/data/model/resuest/stationF/StationFRequestModel.dart';
import 'package:nivish/app/data/model/resuest/stationF/StationFThyroid.dart';
import 'package:nivish/app/data/model/resuest/stationG/CardioVascularSystem.dart';
import 'package:nivish/app/data/model/resuest/stationG/Pubertal_Assessment_Girls.dart';
import 'package:nivish/app/data/model/resuest/stationG/RespiratorySystem.dart';
import 'package:nivish/app/data/model/resuest/stationH/OralHygieneRequest.dart';
import 'package:nivish/app/data/model/resuest/stationH/DentalOtherObservationRequest.dart';
import 'package:nivish/app/data/model/resuest/stationH/SensitivityRequest.dart';
import 'package:nivish/app/data/model/resuest/stationH/SoftTissueRequest.dart';
import 'package:nivish/app/data/model/resuest/stationH/StationHOtherObservationRequest.dart';
import 'package:nivish/app/data/model/resuest/stationH/SubmitStationHDetails.dart';
import 'package:nivish/app/data/values/urls.dart';
import 'package:nivish/base/base_repository.dart';
import 'package:nivish/utils/helper/exception_handler.dart';
import '../model/resuest/StationAUpdateModel.dart';
import '../model/resuest/StationDDetailsUpdate.dart';
import '../model/resuest/StationDrequest.dart';
import '../model/resuest/StationG/CentralNervousSystemRequestModel.dart';
import '../model/resuest/StationG/GOtherObservations.dart';
import '../model/resuest/StationG/HistoryOfMedication.dart';
import '../model/resuest/StationG/Pubertal_Assessment_Boys.dart';
import '../model/resuest/StationG/RightLung.dart';
import '../model/resuest/stationE/OtherObservationsStationERequest.dart';
import '../model/resuest/stationE/StationEWearUpdateModel.dart';
import '../model/resuest/stationE/UpperLimbRightRequest.dart';
import '../model/resuest/stationF/StationFHeadRequest.dart';
import '../model/resuest/stationF/StationFNailsRequest.dart';
import '../model/resuest/stationG/AlimentaryAndUrinarySystem.dart';

class AllStationRepository extends BaseRepository {
  /// station A
  Future<RepoResponse<GenericResponse>> submitStationAData(
      {required StationARequest requestData}) async {
    final response = await controller.post(
        path: URLs.stationADetailsCreate, data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateStationA(
      {required StationAUpdateModel requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.stationADetailsUpdate}/$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> getStationADetails(
      {required int id}) async {
    final response = await controller.get(
      path: '${URLs.stationAGetDetails}$id',
    );
    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  /// station B

  Future<RepoResponse<GenericResponse>> submitStationBData(
      {required StationBRequest requestData}) async {
    final response = await controller.post(
        path: URLs.stationBDetailsCreate, data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }
  Future<RepoResponse<GenericResponse>> updateStationB(
      {required StationAUpdateModel requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.stationADetailsUpdate}/$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }
  Future<RepoResponse<GenericResponse>> getStationBDetails(
      {required int id}) async {
    final response = await controller.get(
      path: '${URLs.stationBGetDetails}$id',
    );
    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  /// station C
  Future<RepoResponse<GenericResponse>> submitStationCData(
      {required StationCRequest requestData}) async {
    final response = await controller.post(
        path: URLs.stationCDetailsCreate, data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateExtraOcular(
      {required StationCExtraOcularRequest requestData,
      required int id}) async {
    final response = await controller.put(
        path: '${URLs.stationCUpdateExtraOcular}/$id',
        data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateVisuallyChallenged(
      {required StationCVisuallyChallengedRequest requestData,
      required int id}) async {
    final response = await controller.put(
        path: '${URLs.stationCVisuallyChallenged}/$id',
        data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateVisuallyActivity(
      {required StationCVisualActivityRequest requestData,
      required int id}) async {
    final response = await controller.put(
        path: '${URLs.stationCVisualActivity}/$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateOtherObservation(
      {required StationCOtherObservationRequest requestData,
      required int id}) async {
    final response = await controller.put(
        path: '${URLs.stationCOtherObservation}/$id',
        data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }
  Future<RepoResponse<GenericResponse>> updateSubmitCDetails(
      {required StationCRequest requestData,
      required int id}) async {
    final response = await controller.put(
        path: '${URLs.stationCDetailsUpdate}/$id',
        data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> getStationCDetails(
      {required int id}) async {
    final response = await controller.get(
      path: '${URLs.stationCGetDetails}$id',
    );
    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  /// station D

  Future<RepoResponse<GenericResponse>> submitStationDData(
      {required StationDRequest requestData}) async {
    final response = await controller.post(
        path: URLs.StationDDetailsCreate, data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }


  Future<RepoResponse<GenericResponse>> updateDStationDData(
      {required StationDRequest requestData,
        required int id}) async {
    final response = await controller.put(
        path: '${URLs.stationDDetailsUpdateDetails}/$id',
        data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateVisualInspection(
      {required StationDVisualInspectionRequest requestData,
      required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationDUpdateVisualInspection}/$id',
        data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updatePure(
      {required StationDPureRequest requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationDPure}/$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateOther(
      {required StationDOtherRequest requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationDOther}/$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateDetails(
      {required StationDDetailsUpdate requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationDDetailsUpdate}/$id', data: requestData.toJson());
    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> uploadPureToneTestResult({
    required int id,
  }) async {
    final response = await controller.postFormData(
        path: '${URLs.StationDDetailsUploadDocs}/$id');

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> getStationDDetails(
      {required int id}) async {
    final response = await controller.get(
      path: '${URLs.stationDGetDetails}$id',
    );
    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  /// station E

  Future<RepoResponse<GenericResponse>> submitStationEData(
      {required StationECreateRequest requestData}) async {
    final response = await controller.post(
        path: URLs.stationEDetailsCreate, data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }
  Future<RepoResponse<GenericResponse>> updateEWearSpineAppearanceSpineMobility(
      {required StationEWearUpdateModel requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationEWear}/$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }
  Future<RepoResponse<GenericResponse>> updateEUpperLimb(
      {required UpperLimbRightRequest requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationEULRight}/$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateELowerLimb(
      {required LowerLimbRequest requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationELLRight}/$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateEOther(
      {required OtherObservationsStationERequest requestData,
      required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationEUpdateOther}/$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> getStationEDetails(
      {required int id}) async {
    final response = await controller.get(
      path: '${URLs.stationEGetDetails}$id',
    );
    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  /// Station F

  Future<RepoResponse<GenericResponse>> submitStationFData(
      {required StationFRequestModel requestData}) async {
    final response = await controller.post(
        path: URLs.StationFDetailsCreate, data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateFNails(
      {required StationFNailsRequest requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationFUpdateNails}/$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateFHead(
      {required StationFHeadRequest requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationFUpdateHead}/$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateFThyroidGlands(
      {required StationFThyroid requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationFUpdateThyroid}/$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateFEyes(
      {required StationFEyesRequest requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationFUpdateEyes}/$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateFEars(
      {required StationFEarsRequest requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationFUpdateEars}/$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateFNose(
      {required StationFNoseRequest requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationFUpdateNose}/$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateFMouth(
      {required StationFMouthRequest requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationFUpdateMouth}/$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateFHygiene(
      {required StationFHygiene requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationFUpdateHygiene}/$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateFOther(
      {required StationFOtherRequest requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationFUpdateOther}/$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> getStationFDetails(
      {required int id}) async {
    final response = await controller.get(
      path: '${URLs.stationFGetDetails}$id',
    );
    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  /// Station G

  Future<RepoResponse<GenericResponse>> SubmitStationGData(
      {required NervousSystem requestData}) async {
    final response = await controller.post(
        path: URLs.StationGDetailsCreate, data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> StationGUpdateRespiratory(
      {required RespiratorySystem requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationGUpdateRespiratory}/$id',
        data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> StationGUpdateVascularSystem(
      {required CardioVascularSystem requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationGUpdateVascular}/$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> StationGUpdateAlimentary(
      {required AlimentaryAndUrinarySystem requestData,
      required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationGUpdateAlimentary}/$id',
        data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> StationGUpdateGirls(
      {required PubertalAssessmentGirls requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationGUpdateGirls}/$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> StationGUpdateBoys(
      {required PubertalAssessmentBoys requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationGUpdateBoys}/$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> getStationGDetails(
      {required int id}) async {
    final response = await controller.get(
      path: '${URLs.getStationGDetails}$id',
    );
    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  /// station h

  Future<RepoResponse<GenericResponse>> submitStationHData(
      {required StationHRequest requestData}) async {
    final response = await controller.post(
        path: URLs.stationHDetailsCreate, data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateOralHygiene(
      {required OralHygieneRequest requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.updateOralHygiene}$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateSensitivity(
      {required SensitivityRequest requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.updateSensitivity}$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateSoftTissue(
      {required SoftTissueRequest requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.updateSoftTissue}$id', data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateDentalOtherObservation(
      {required DentalOtherObservationRequest requestData,
      required int id}) async {
    final response = await controller.put(
        path: '${URLs.updateDentalOtherObservation}$id',
        data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>>
      stationHUpdateAdditionalOtherObservation(
          {required StationHAdditionalOtherObservationRequest requestData,
          required int id}) async {
    final response = await controller.put(
        path: '${URLs.updateAdditionalOtherObservation}$id',
        data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> getStationHDetails(
      {required int id}) async {
    final response = await controller.get(
      path: '${URLs.getStationHDetails}$id',
    );
    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  ///STATION G

  Future<RepoResponse<GenericResponse>> updateRightLung(
      {required RightLung requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationGUpdateRightLung}/$id',
        data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateHistoryOfMedication(
      {required HistoryOfMedication requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationGUpdateHistoryOfMedication}/$id',
        data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> updateOtherObservations(
      {required OtherObservations requestData, required int id}) async {
    final response = await controller.put(
        path: '${URLs.StationGUpdateOtherObservations}/$id',
        data: requestData.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }
}
