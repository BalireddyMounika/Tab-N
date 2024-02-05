import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';

import '../controllers/station_e_controller.dart';
import '../tabs/lower_limb_left/station_E_lower_limb_left.dart';
import '../tabs/lower_limb_right/station_E_lower_limb_right.dart';
import '../tabs/station_E_mobility_view.dart';
import '../tabs/station_E_other_observations_view.dart';
import '../tabs/station_E_spine_appearance_view.dart';
import '../tabs/station_E_spine_mobility_view.dart';
import '../tabs/station_E_wear_view.dart';
import '../tabs/upper_limb_left/station_E_upper_limb_left_right.dart';
import '../tabs/upper_limb_right/station_E_upper_limb_right.dart';

class StationEView extends GetView<StationEController> {
  const StationEView({Key? key}) : super(key: key);

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
    0: const StationEMobilityView(),
    1: const StationEWear(),
    2: const StationESpineAppearanceView(),
    3: const StationESpineMobilityView(),
    4: const StationEUpperLimbRightView(),
    5: const StationEUpperLimbLeftView(),
    6: const StationELowerLimbRightView(),
    7: const StationELowerLimbLeftView(),
    8: const StationEOtherObservationsView(),
  };
}
