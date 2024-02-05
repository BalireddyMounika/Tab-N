import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import '../controllers/station_b_controller.dart';
import '../tabs/station_B_BP_view.dart';
import '../tabs/station_B_other_observation_view.dart';
import '../tabs/station_B_oxygen_saturation_view.dart';
import '../tabs/station_B_respiration_view.dart';
import '../tabs/station_B_temperature_view.dart';

class StationBView extends GetView<StationBController> {
  const StationBView({Key? key}) : super(key: key);

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
    0: const StationBBloodPressureView(),
    1: const StationBRespirationView(),
    2: const StationBTemperatureView(),
    3: const StationBOxygenSaturationView(),
    4: const StationBOtherObservationsView(),
  };
}
