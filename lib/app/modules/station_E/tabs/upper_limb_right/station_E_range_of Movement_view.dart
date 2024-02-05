import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nivish/app/themes/app_styles.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_colors.dart';
import '../../../../../widgets/Age_Gender_validations.dart';
import '../../controllers/station_e_controller.dart';

class StationERangeOfMovementView extends GetView<StationEController> {
  const StationERangeOfMovementView({Key? key}) : super(key: key);

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
              isSelected: controller.rangeOfMovementNormalUpperLimbRight.value,
              onTap: () {
                controller.onCheckedRangeOfMovementUpperLimbRight();
                controller.selectedHyperFlexibleUpperLimbRight.clear();
              })),
          const SizedBox(width: Dimens.gapX3),
          Obx(() => CommonCheckBox(
            name: "Abnormal",
            textStyle: AppStyles.tsBlackMedium20,
            isSelected:
            !controller.rangeOfMovementNormalUpperLimbRight.value,
            onTap: () =>
                controller.onCheckedRangeOfMovementUpperLimbRight(),
          )),
        ],
      ),
      const SizedBox(height: Dimens.gapX2),
      rangeOfMovement(),
      if (StudentInfo.calculateAge() >= 2) strength(),
    ]);
  }

  Widget strength() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
              stream: controller.sliderStreamUpperLimbRight
                  .map((range) => range.start),
              initialData: controller.lowerAgeUpperLimbRight.value,
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
                        controller.updateAgeRangeUpperLimbRight(
                            RangeValues(value, value));
                        controller.updateSliderStreamUpperLimbRight(
                            RangeValues(value, value));
                      },
                      activeColor: AppColors.baseColor,
                      inactiveColor: AppColors.greyColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('0/$divisions'),
                          Text('1/$divisions'),
                          Text('2/$divisions'),
                          Text('3/$divisions'),
                          Text('4/$divisions'),
                          Text('$divisions/$divisions'),
                        ],
                      ),
                    ),
                  ],
                );
              },
            )),
      ],
    );
  }

  Widget rangeOfMovement() {
    return Obx(
          () => Visibility(
        visible: !controller.rangeOfMovementNormalUpperLimbRight.value,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: Dimens.gapX2),
                child: Obx(() => CommonCheckBox(
                    isActive:
                    !controller.rangeOfMovementNormalUpperLimbRight.value,
                    name: "Hyper Flexible",
                    textStyle: AppStyles.tsBlackSemi20,
                    isSelected: controller.hyperFlexibleUpperLimbRight.value,
                    onTap: () {
                      controller.onCheckedHyperFlexibleUpperLimbRight();
                    }))),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Padding(
                padding: const EdgeInsets.only(left: Dimens.gapX3),
                child: Obx(
                      () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.hyperFlexibleRightList.length,
                          (i) => CommonCheckBox(
                          checkedIcon: Icons.check_box,
                          unCheckedIcon: Icons.check_box_outline_blank,
                          isActive:
                          controller.hyperFlexibleUpperLimbRight.value &&
                              !controller
                                  .rangeOfMovementNormalUpperLimbRight
                                  .value,
                          name: controller.hyperFlexibleRightList.values
                              .elementAt(i),
                          isSelected: controller
                              .selectedHyperFlexibleUpperLimbRight
                              .contains(controller.hyperFlexibleRightList.keys
                              .elementAt(i)),
                          onTap: () {
                            controller.onSelectHyperFlexibleUpperLimbRight(
                                idx: i);
                          }),
                    ),
                  ),
                )),
            const SizedBox(height: Dimens.gapX2),
            Padding(
                padding: const EdgeInsets.only(left: Dimens.gapX2),
                child: Obx(() => CommonCheckBox(
                    isActive:
                    !controller.rangeOfMovementNormalUpperLimbRight.value,
                    name: "Restricted",
                    textStyle: AppStyles.tsBlackSemi20,
                    isSelected: !controller.hyperFlexibleUpperLimbRight.value,
                    onTap: () {
                      controller.onCheckedHyperFlexibleUpperLimbRight();
                    }))),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Padding(
                padding: const EdgeInsets.only(left: Dimens.gapX4),
                child: Obx(
                      () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 3,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.restrictedRightList.length,
                          (i) => CommonCheckBox(
                        isActive:
                        !controller.hyperFlexibleUpperLimbRight.value &&
                            !controller
                                .rangeOfMovementNormalUpperLimbRight.value,
                        name: controller.restrictedRightList[i],
                        isSelected: controller.restrictedRightList[i] ==
                            controller.selectedRestrictedUpperLimbRight.value,
                        onTap: () =>
                            controller.onSelectRestrictedUpperLimbRight(
                                name: controller.restrictedRightList[i]),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}