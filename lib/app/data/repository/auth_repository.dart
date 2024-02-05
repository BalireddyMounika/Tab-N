import 'package:nivish/app/data/model/dto/response.dart';
import 'package:nivish/app/data/model/response/generic_response.dart';
import 'package:nivish/app/data/model/resuest/login_request.dart';
import 'package:nivish/app/data/model/resuest/otp_request.dart';
import 'package:nivish/app/data/values/urls.dart';
import 'package:nivish/base/base_repository.dart';
import 'package:nivish/utils/helper/exception_handler.dart';

class AuthRepository extends BaseRepository {
  Future<RepoResponse<GenericResponse>> login({
    required LoginRequest loginRequest,
  }) async {
    final response =
        await controller.post(path: URLs.login, data: loginRequest.toJson());
    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> sendOtp({
    required OptRequest otpRequest,
  }) async {
    final response = await controller.post(
        path: URLs.hcpOtpGeneration, data: otpRequest.toJson());
    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> verifyOtp({
    required OptRequest otpRequest,
  }) async {
    final response = await controller.post(
        path: URLs.hcpOtpVerification, data: otpRequest.toJson());
    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> getStudentDetails({
    required String uin,
  }) async {
    final response = await controller.get(
      path: '${URLs.infoseekUINInfoseekGet}$uin',
    );
    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }

  Future<RepoResponse<GenericResponse>> getStationDetails({
    required String uin,
    required String hcId,
  }) async {
    final response = await controller.get(path: ''
        // path: '${URLs.hcpExitDeskGet}$hcId/$uin',
        );
    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: GenericResponse.fromJson(response));
  }
}
