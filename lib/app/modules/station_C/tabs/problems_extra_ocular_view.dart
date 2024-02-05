import 'package:flutter/material.dart';
import 'package:nivish/app/modules/station_C/tabs/station_C_extra_ocular_view.dart';
import 'package:nivish/app/modules/station_C/tabs/station_C_problems_view.dart';
import 'package:nivish/widgets/Age_Gender_validations.dart';

class StationCProblemsView extends StatelessWidget {
  const StationCProblemsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StudentInfo.calculateAge() >= 2
        ? const StationCProblems()
        : const StationCExtraOcularView();
  }
}