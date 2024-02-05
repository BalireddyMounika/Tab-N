import 'package:get/get.dart';
import 'package:nivish/app/modules/home/controllers/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
