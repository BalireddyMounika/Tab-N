import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_H/controllers/station_h_controller.dart';
import 'package:nivish/app/modules/station_H/tabs/additional_specialist_ref_needed.dart';
import 'package:nivish/app/modules/station_H/tabs/other_observation_tab.dart';
import 'package:nivish/app/modules/station_H/tabs/tab_four.dart';
import 'package:nivish/app/modules/station_H/tabs/tab_one.dart';
import 'package:nivish/app/modules/station_H/tabs/tab_three.dart';
import 'package:nivish/app/modules/station_H/tabs/tab_two.dart';

class StationHView extends GetView<StationHController> {
  const StationHView({Key? key}) : super(key: key);

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
    0: const TabOne(),
    1: const TabTwo(),
    2: const TabThree(),
    3: const TabFour(),
    4: const OtherObservation(),
    5: const AdditionalSpecialistReferralNeeded(),
  };
}
