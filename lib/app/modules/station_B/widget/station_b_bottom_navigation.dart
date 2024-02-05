import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/modules/station_B/controllers/station_b_controller.dart';
import 'package:nivish/widgets/common_bottom_navigation_bar.dart';

class StationBBottomNavigation extends GetView<StationBController> {
  const StationBBottomNavigation({Key? key}) : super(key: key);

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
