import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_A/controllers/section_a_controller.dart';
import 'package:nivish/app/modules/station_A/tabs/station_A_length_view.dart';
import 'package:nivish/app/modules/station_A/tabs/station_A_weight_view.dart';
import '../tabs/height_length_view.dart';
import '../tabs/station_A_abdominal_girth_view.dart';
import '../tabs/station_A_arm.dart';
import '../tabs/station_A_bmi.dart';
import '../tabs/station_A_head_view.dart';
import '../tabs/station_A_other_observation.dart';
import '../tabs/station_A_subscapula_skinfold_view.dart';
import '../tabs/station_A_triceps_skinfold_view.dart';

class StationAView extends GetView<StationAController> {
  const StationAView({Key? key}) : super(key: key);

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
    0: const StationAHeight(),
    1: const StationAWeightView(),
    2: const StationATricepsSkinFoldView(),
    3: const StationASubScapulaSkinFoldView(),
    4: const StationAArmView(),
    5: const StationAHeadView(),
    6: const StationAAbdominalGirthView(),
    7: const StationABmiView(),
    8: const StationAOtherObservationsView(),
  };
}
