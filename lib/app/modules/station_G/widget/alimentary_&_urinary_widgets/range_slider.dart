import 'package:flutter/material.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'dart:async';
import 'package:get/get.dart';

class CustomRangeSlider extends StatelessWidget {
  final RxDouble lowerValueController;
  final RxDouble upperValueController;
  final StreamController<RangeValues> sliderStreamController;

  CustomRangeSlider({
    required this.lowerValueController,
    required this.upperValueController,
    required this.sliderStreamController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Pain Score")
            .paddingOnly(left: Dimens.gapX2, top: Dimens.gapX1),
        StreamBuilder<double>(
          stream: sliderStreamController.stream.map((range) => range.start),
          initialData: lowerValueController.value,
          builder: (context, snapshot) {
            double min = 0;
            double max = 9;
            int divisions = 9;

            double startFraction = (snapshot.data! - min) / (max - min);
            int startLabel = (startFraction * divisions).round();

            return Column(
              children: [
                Slider(
                  value: snapshot.data!,
                  min: min,
                  max: max,
                  divisions: divisions,
                  label: (startLabel + 1 == 10)
                      ? '${startLabel + 1}'
                      : '0${startLabel + 1}',
                  onChanged: (value) {
                    updateValues(value);
                  },
                  activeColor: AppColors.baseColor,
                  inactiveColor: AppColors.greyColor,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('01'),
                      Text('02'),
                      Text('03'),
                      Text('04'),
                      Text('05'),
                      Text('06'),
                      Text('07'),
                      Text('08'),
                      Text('09'),
                      Text('10'),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  void updateValues(double value) {
    lowerValueController.value = value;
    upperValueController.value = value;
    sliderStreamController.add(RangeValues(value, value));
  }
}
