import 'package:flutter/material.dart';
import 'package:nivish/app/modules/station_D/tabs/station_d_first_screen_view.dart';
import 'package:nivish/app/modules/station_D/tabs/station_d_visual_inspection_view.dart';
import 'package:nivish/widgets/Age_Gender_validations.dart';

class StationDFirstScreenView extends StatelessWidget {
  const StationDFirstScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StudentInfo.calculateAge() >= 2
        ? const StationDFirstScreen()
        : const StationDVisualInspectionView();
  }
}