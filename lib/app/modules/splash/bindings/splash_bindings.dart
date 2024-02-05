import 'package:get/get.dart';
import 'package:nivish/app/modules/splash/controllers/splash_controller.dart';

class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
