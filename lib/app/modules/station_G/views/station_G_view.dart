import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_G/controllers/station_g_controller.dart';
import 'package:nivish/app/modules/station_G/tabs/alimentary_&_urinary_system/alimentary_&_urinary_first_view.dart';
import 'package:nivish/app/modules/station_G/tabs/cardio_vascular_systems.dart';
import 'package:nivish/app/modules/station_G/tabs/nervous_system_tab.dart';
import 'package:nivish/app/modules/station_G/tabs/pubertal_assessment_boys_tab.dart';
import 'package:nivish/app/modules/station_G/tabs/pubertal_assessment_girls_tab.dart';
import 'package:nivish/app/modules/station_G/tabs/respiratory_system_tab.dart';
import '../tabs/history_of_medication.dart';
import '../tabs/other_observation_tab.dart';
import '../tabs/right_lung_tab.dart';

class StationGView extends GetView<StationGController> {
  const StationGView({Key? key}) : super(key: key);
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
    0: const NervesSystemTab(),
    1: const RespiratorySystemTab(),
    2: const RightLungTab(),
    3: const CardioVascularSystemsTab(),
    4: const AlimentaryAndUrinaryTab(),
    5: const PubertalAssessmentGirlsTab(),
    6: const PubertalAssessmentBoysTab(),
    7: const HistoryOfMedicationTab(),
    8: const OtherObservationsTab(),
  };
}
