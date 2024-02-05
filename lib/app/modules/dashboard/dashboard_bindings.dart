import 'package:get/get.dart';
import 'package:nivish/app/modules/dashboard/dashboard_controller.dart';

class DashboardBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController());
  }
}
