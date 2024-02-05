import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/themes/app_styles.dart';
import '../../../../../widgets/Age_Gender_validations.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_colors.dart';
import '../../controllers/station_e_controller.dart';

class StationERangeOfMovementLowerLimbRightView
    extends GetView<StationEController> {
  const StationERangeOfMovementLowerLimbRightView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text("Range of Movement", style: AppStyles.tsBlackSemi20),
      const SizedBox(height: Dimens.gapX2),
      Row(
        children: [
          Obx(() => CommonCheckBox(
            name: "Normal",
            textStyle: AppStyles.tsBlackMedium20,
            isSelected:
            controller.rangeOfMovementNormalLowerLimbRight.value,
            onTap: () =>
                controller.onCheckedRangeOfMovementLowerLimbRight(),
          )),
          const SizedBox(width: Dimens.gapX3),
          Obx(() => CommonCheckBox(
            name: "Abnormal",
            textStyle: AppStyles.tsBlackMedium20,
            isSelected:
            !controller.rangeOfMovementNormalLowerLimbRight.value,
            onTap: () =>
                controller.onCheckedRangeOfMovementLowerLimbRight(),
          )),
        ],
      ),
      const SizedBox(height: Dimens.gapX2),
      if (StudentInfo.calculateAge() >= 5) strength(),
    ]);
  }
  Widget strength(){
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Strength",
          style: AppStyles.tsBlackSemi20,
        ),
        const SizedBox(
          height: Dimens.gapX2,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: StreamBuilder<double>(
              stream: controller.sliderStreamLowerLimbRight
                  .map((range) => range.start),
              initialData: controller.lowerAgeLowerLimbRight.value,
              builder: (context, snapshot) {
                double min = 0;
                double max = 5;
                int divisions = 5;

                double startFraction = (snapshot.data! - min) / (max - min);
                int startLabel = (startFraction * divisions).round();

                return Column(
                  children: [
                    Slider(
                      value: snapshot.data!,
                      min: min,
                      max: max,
                      divisions: divisions,
                      label: '$startLabel',
                      onChanged: (value) {
                        controller.updateAgeRangeLowerLimbRight(
                            RangeValues(value, value));

                        controller.updateSliderStreamLowerLimbRight(
                            RangeValues(value, value));
                      },
                      activeColor: AppColors.baseColor,
                      inactiveColor: AppColors.greyColor,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('0/5'),
                          Text('1/5'),
                          Text('2/5'),
                          Text('3/5'),
                          Text('4/5'),
                          Text('5/5'),
                        ],
                      ),
                    ),
                  ],
                );
              },
            )),
      ],);
  }
}