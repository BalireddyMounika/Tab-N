import 'package:flutter/material.dart';
import 'package:nivish/app/modules/station_A/tabs/station_A_height_view.dart';
import 'package:nivish/app/modules/station_A/tabs/station_A_length_view.dart';
import 'package:nivish/widgets/Age_Gender_validations.dart';

class StationAHeight extends StatelessWidget {
  const StationAHeight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StudentInfo.calculateAge() >= 2
        ? StationAHeightView()
        : StationALength();
  }
}
