import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_C/tabs/right_eye_visually_challenged_view.dart';
import '../controllers/station_c_controller.dart';
import '../tabs/left_eye_visually_challenged_view.dart';
import '../tabs/other_observations_view.dart';
import '../tabs/problems_extra_ocular_view.dart';
import '../tabs/station_C_extra_ocular_view.dart';
import '../tabs/visual_acuity.dart';

class StationCView extends GetView<StationCController> {
  const StationCView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => tabs[controller.selectedTabIdx]!),
          ],
        ).paddingSymmetric(vertical: Dimens.gapX1),
      ],
    );
  }

  static final Map<int, Widget> tabs = {
    0: const StationCProblemsView(),
    1: const StationCExtraOcularView(),
    2: const StationCRightEyeVisuallyChallengedView(),
    3: const StationCLeftEyeVisuallyChallengedView(),
    4: const StationCVisualAcuityView(),
    5: const StationCOtherObservationsView(),
  };
}
