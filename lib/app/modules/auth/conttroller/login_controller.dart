import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/model/dto/User.dart';
import 'package:nivish/app/data/model/dto/response.dart';
import 'package:nivish/app/data/model/response/generic_response.dart';
import 'package:nivish/app/data/model/resuest/login_request.dart';
import 'package:nivish/app/data/model/resuest/otp_request.dart';
import 'package:nivish/app/data/repository/auth_repository.dart';
import 'package:nivish/app/routes/app_routes.dart';
import 'package:nivish/base/base_controller.dart';
import 'package:nivish/utils/app_utils.dart';
import 'package:nivish/utils/helper/text_field_wrapper.dart';
import 'package:nivish/utils/loading/loading_utils.dart';
import 'package:nivish/utils/storage/storage_utils.dart';

class LoginController extends BaseController<AuthRepository> {
  RxBool isLoginWithOtp = RxBool(false);
  RxBool isObscurePassword = RxBool(true);

  TextFieldWrapper emailWrapper = TextFieldWrapper();
  TextFieldWrapper passwordWrapper = TextFieldWrapper();

  TextEditingController otpController = TextEditingController();

  final loginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
  }

  handelObscurePassword() {
    isObscurePassword.toggle();
  }

  onCheckLoginWithOtp() {
    isLoginWithOtp.toggle();
    passwordWrapper.controller.clear();
  }

  handleLogin() {
    if (isLoginWithOtp.value) {
      if (loginFormKey.currentState!.validate()) {
        sendOtp();
      }
    } else {
      if (loginFormKey.currentState!.validate()) {
        if (passwordWrapper.controller.text.isNotEmpty) {
          login();
        } else {
          AppUtils.showSnackBar('Password is required');
        }
      }
    }
  }

  Future<void> login() async {
    try {
      LoadingUtils.showLoader();
      LoginRequest requestData = LoginRequest(
        registeredEmail: emailWrapper.controller.text,
        password: passwordWrapper.controller.text,
        reviewDoctor: false,
      );

      RepoResponse<GenericResponse> response =
          await repository.login(loginRequest: requestData);
      LoadingUtils.hideLoader();
      handelResponse(response);

      /// for Stations in response
      //   List<Map<String, dynamic>>? stations =
      //       (response.data?.result?['Stations'] as List<dynamic>?)
      //           ?.cast<Map<String, dynamic>>();
      //   if (stations != null) {
      //     print("stationId : $stations");
      //   } else {
      //     print("Stations data is null or missing");
      //   }
      /// for Stations - StationID in response
      //   List<int> stationIDs = (response.data?.result?['Stations'] as List<dynamic>?)
      //       ?.map<int>((station) => station['StationID'] as int)
      //       .toList() ?? [];
      //
      //   if (stationIDs.isNotEmpty) {
      //     print(stationIDs);
      //   } else {
      //     print("Station IDs are null or missing");
      //   }
      ///
    } catch (e) {
      if (LoadingUtils.isLoaderShowing) LoadingUtils.hideLoader();
      print(e);
    }
  }

  Future<void> sendOtp() async {
    OptRequest requestData = OptRequest(
      email: emailWrapper.controller.text,
    );
    RepoResponse<GenericResponse> response =
        await repository.sendOtp(otpRequest: requestData);
    if (response.data?.status == 200 || response.data?.status == 201) {
      Get.toNamed(Routes.OTP_SCREEN);
    } else {
      AppUtils.showSnackBar(
          response.error?.message ?? response.data?.message ?? '');
    }
  }

  verifyOtp({required String otp}) async {
    try {
      OptRequest requestData = OptRequest(
        email: emailWrapper.controller.text,
        otp: otp,
      );
      RepoResponse<GenericResponse> response =
          await repository.verifyOtp(otpRequest: requestData);
      handelResponse(response);
    } catch (e) {
      print(e);
    }
  }

  void handelResponse(RepoResponse<GenericResponse> response) {
    if (response.data?.status == 200 || response.data?.status == 201) {
      User user = User.fromJson(response.data?.result);
      AppStorage.setUser(user);
      Get.offAndToNamed(Routes.DASHBOARD);
    } else {
      AppUtils.showErrorMessage(response);
    }
  }
}
