import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nivish/app/themes/app_styles.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_colors.dart';
import '../../../../../widgets/Age_Gender_validations.dart';
import '../../controllers/station_e_controller.dart';

class StationERangeOfMovementLeftView extends GetView<StationEController> {
  const StationERangeOfMovementLeftView({Key? key}) : super(key: key);

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
              isSelected: controller.rangeOfMovementNormalUpperLimbLeft.value,
              onTap: () {
                controller.onCheckedRangeOfMovementUpperLimbLeft();
                controller.selectedHyperFlexibleUpperLimbLeft.clear();
              })),
          const SizedBox(width: Dimens.gapX3),
          Obx(() => CommonCheckBox(
            name: "Abnormal",
            textStyle: AppStyles.tsBlackMedium20,
            isSelected:
            !controller.rangeOfMovementNormalUpperLimbLeft.value,
            onTap: () => controller.onCheckedRangeOfMovementUpperLimbLeft(),
          )),
        ],
      ),
      const SizedBox(height: Dimens.gapX2),
      rangeOfMovements(),
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
            stream: controller.sliderStreamUpperLimbLeft
                .map((range) => range.start),
            initialData: controller.lowerAgeUpperLimbLeft.value,
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
                    onChanged: (values) {
                      controller.updateAgeRangeUpperLimbLeft(
                          RangeValues(values, values));
                      controller.updateSliderStreamUpperLimbLeft(
                          RangeValues(values, values));
                    },
                    activeColor: AppColors.baseColor,
                    inactiveColor: AppColors.greyColor,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
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
          ),
        )
      ],
    );
  }

  Widget rangeOfMovements() {
    return Obx(
          () => Visibility(
        visible: !controller.rangeOfMovementNormalUpperLimbLeft.value,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(left: Dimens.gapX2),
                child: Obx(() => CommonCheckBox(
                  isActive:
                  !controller.rangeOfMovementNormalUpperLimbLeft.value,
                  name: "Hyper Flexible",
                  textStyle: AppStyles.tsBlackSemi20,
                  isSelected: controller.hyperFlexibleUpperLimbLeft.value,
                  onTap: () =>
                      controller.onCheckedHyperFlexibleUpperLimbLeft(),
                ))),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Padding(
                padding: EdgeInsets.only(left: Dimens.gapX3),
                child: Obx(
                      () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.hyperFlexibleLeftList.length,
                          (i) => CommonCheckBox(
                          checkedIcon: Icons.check_box,
                          unCheckedIcon: Icons.check_box_outline_blank,
                          isActive:
                          controller.hyperFlexibleUpperLimbLeft.value &&
                              !controller
                                  .rangeOfMovementNormalUpperLimbLeft.value,
                          name: controller.hyperFlexibleLeftList.values
                              .elementAt(i),
                          isSelected: controller
                              .selectedHyperFlexibleUpperLimbLeft
                              .contains(controller.hyperFlexibleLeftList.keys
                              .elementAt(i)),
                          onTap: () {
                            controller.onSelectHyperFlexibleUpperLimbLeft(
                                idx: i);
                          }),
                    ),
                  ),
                )),
            const SizedBox(height: Dimens.gapX2),
            Padding(
                padding: EdgeInsets.only(left: Dimens.gapX2),
                child: Obx(() => CommonCheckBox(
                  isActive:
                  !controller.rangeOfMovementNormalUpperLimbLeft.value,
                  name: "Restricted",
                  textStyle: AppStyles.tsBlackSemi20,
                  isSelected: !controller.hyperFlexibleUpperLimbLeft.value,
                  onTap: () =>
                      controller.onCheckedHyperFlexibleUpperLimbLeft(),
                ))),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Padding(
                padding: EdgeInsets.only(left: Dimens.gapX4),
                child: Obx(
                      () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 3,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.restrictedLeftList.length,
                          (i) => CommonCheckBox(
                        isActive:
                        !controller.hyperFlexibleUpperLimbLeft.value &&
                            !controller
                                .rangeOfMovementNormalUpperLimbLeft.value,
                        name: controller.restrictedLeftList[i],
                        isSelected: controller.restrictedLeftList[i] ==
                            controller.selectedRestrictedUpperLimbLeft.value,
                        onTap: () => controller.onSelectRestrictedUpperLimbLeft(
                            name: controller.restrictedLeftList[i]),
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