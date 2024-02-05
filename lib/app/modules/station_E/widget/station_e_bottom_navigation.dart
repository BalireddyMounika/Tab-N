import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/modules/station_E/controllers/station_e_controller.dart';
import 'package:nivish/widgets/common_bottom_navigation_bar.dart';

class StationEBottomNavigation extends GetView<StationEController> {
  const StationEBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CommonBottomNavigationBar(
          isPreviewActive: controller.selectedTabIdx.value > 0,
          isNextActive: true,
          onPrevious: () => controller.onPrevious(),
          onNext: () => controller.onSaveAndNext()),
    );
  }
}
