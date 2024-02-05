import 'package:get/get.dart';
import 'package:nivish/app/modules/auth/conttroller/login_controller.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}
