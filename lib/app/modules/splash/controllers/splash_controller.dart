import 'package:get/get.dart';
import 'package:nivish/app/routes/app_routes.dart';
import 'package:nivish/utils/storage/storage_utils.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    _startOnBoarding();
    super.onInit();
  }

  _startOnBoarding() async {
    await Future.delayed(const Duration(seconds: 2));
    if (AppStorage.isUserExists()) {
      Get.offAllNamed(Routes.DASHBOARD);
    } else {
      Get.offAllNamed(Routes.LOGIN);
    }
  }
}
