import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_D/tabs/upload_file.dart';
import '../controllers/station_d_controller.dart';
import '../tabs/first_screen_visual_inspection_view.dart';
import '../tabs/station_d_other_observation_view.dart';
import '../tabs/station_d_pure_tone_right_ear.dart';
import '../tabs/station_d_visual_inspection_view.dart';

class StationDView extends GetView<StationDController> {
  const StationDView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Obx(() => tabs[controller.selectedTabIdx]!),
      ],
    ).paddingSymmetric(vertical: Dimens.gapX1);
  }

  static final Map<int, Widget> tabs = {
    0: const StationDFirstScreenView(),
    1: const StationDVisualInspectionView(),
    2: const StationDPureToneRightEarView(),
    3: const StationDUploadFile(),
    4: const StationDOtherObservationsView()
  };
}
