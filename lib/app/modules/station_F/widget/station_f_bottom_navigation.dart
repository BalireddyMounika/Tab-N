import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/modules/station_F/controllers/station_f_controller.dart';
import 'package:nivish/widgets/common_bottom_navigation_bar.dart';

class StationFBottomNavigation extends GetView<StationFController> {
  const StationFBottomNavigation({Key? key}) : super(key: key);

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
