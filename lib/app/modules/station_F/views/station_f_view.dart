import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import '../controllers/station_f_controller.dart';
import '../tabs/ears/ears_view.dart';
import '../tabs/eyes/eyes_view.dart';
import '../tabs/head/skull_view.dart';
import '../tabs/hygiene.dart';
import '../tabs/mouth_throat/mouth_view.dart';
import '../tabs/nails/nails_color_view.dart';
import '../tabs/nose/nose_view.dart';
import '../tabs/other_observation.dart';
import '../tabs/skin/skin_color_texture.dart';
import '../tabs/thyroid_glands/thyroid_glands_view.dart';

class StationFView extends GetView<StationFController> {
  const StationFView({Key? key}) : super(key: key);

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
    0: const StationFSkinColorTextureView(),
    1: const StationFNailsView(),
    2: const StationFSkullView(),
    3: const StationFThyroidGlandsView(),
    4: const StationFEyesView(),
    5: const StationFEarsView(),
    6: const StationFNoseDischargeView(),
    7: const StationFMouthView(),
    8: const StationFHygieneView(),
    9: const StationFOtherObservationsView(),
  };
}
