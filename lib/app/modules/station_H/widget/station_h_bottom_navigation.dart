import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/modules/station_H/controllers/station_h_controller.dart';
import 'package:nivish/widgets/common_bottom_navigation_bar.dart';

class StationHBottomNavigation extends GetView<StationHController> {
  const StationHBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => CommonBottomNavigationBar(
        isPreviewActive: controller.selectedTabIdx.value > 0,
        isNextActive: true,
        onPrevious: () => controller.onPrevious(),
        onNext: () => controller.onSaveAndNext()));
  }
}
