import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/modules/station_D/controllers/station_d_controller.dart';
import 'package:nivish/widgets/common_bottom_navigation_bar.dart';

class StationDBottomNavigation extends GetView<StationDController> {
  const StationDBottomNavigation({Key? key}) : super(key: key);

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
