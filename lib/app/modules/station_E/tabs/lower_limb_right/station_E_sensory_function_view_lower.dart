import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/common_text.dart';

import '../../../../../widgets/common_check_box.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_colors.dart';
import '../../controllers/station_e_controller.dart';

class StationESensoryFunctionLowerLimbRightView
    extends GetView<StationEController> {
  const StationESensoryFunctionLowerLimbRightView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Get.width < 600
        ? Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("Deep Tendon Reflexes", style: AppStyles.tsBlackSemi20),
            const SizedBox(height: Dimens.gapX1),
            const Text("Sensory Function", style: AppStyles.tsBlackSemi20),
            const SizedBox(
              height: Dimens.gapX3,
            ),
            Obx(() => CommonCheckBox(
                name: "All Normal",
                textStyle: AppStyles.tsBlackMedium20,
                isSelected:
                    controller.sensoryFunctionAllNormalLowerLimbRight.value,
                onTap: () {
                  controller.onCheckedSensoryFunctionAllNormalLowerLimbRight();
                  controller.selectedSensoryFunctionLowerRight.clear();
                  controller.selectedTouchAbnormalLowerLimbRight.value =
                      'Hot object';
                  controller.updateFirstRangeLower(const RangeValues(0, 0));
                  controller.updateSecondRangeLower(const RangeValues(0, 0));
                })),
            const SizedBox(height: Dimens.gapX1),
            Obx(() => CommonCheckBox(
                  name: "Abnormal",
                  textStyle: AppStyles.tsBlackMedium20,
                  isSelected:
                      !controller.sensoryFunctionAllNormalLowerLimbRight.value,
                  onTap: () => controller
                      .onCheckedSensoryFunctionAllNormalLowerLimbRight(),
                )),
            const SizedBox(height: Dimens.gapX2),
            Padding(
                padding: EdgeInsets.only(left: Dimens.gapX3),
                child: Obx(() => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                          controller.sensoryFunctionListLowerRight.length, (i) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonCheckBox(
                              isActive: !controller
                                  .sensoryFunctionAllNormalLowerLimbRight.value,
                              checkedIcon: Icons.check_box,
                              unCheckedIcon: Icons.check_box_outline_blank,
                              onTap: () {
                                if (controller.selectedSensoryFunctionLowerRight
                                    .contains(controller
                                        .sensoryFunctionListLowerRight[i])) {
                                  controller.selectedSensoryFunctionLowerRight
                                      .remove(controller
                                          .sensoryFunctionListLowerRight[i]);
                                } else {
                                  controller.selectedSensoryFunctionLowerRight
                                      .add(controller
                                          .sensoryFunctionListLowerRight[i]);
                                }
                              },
                              isSelected: controller
                                  .selectedSensoryFunctionLowerRight
                                  .contains(controller
                                      .sensoryFunctionListLowerRight[i]),
                              name: controller.sensoryFunctionListLowerRight[i],
                            ).paddingOnly(bottom: Dimens.gapX1),
                            Visibility(
                              visible: controller
                                      .selectedSensoryFunctionLowerRight
                                      .contains('Touch Abnormal') &&
                                  controller.sensoryFunctionListLowerRight[i] ==
                                      'Touch Abnormal',
                              child: commonMultipleWidget(
                                list: controller.touchAbnormalRightList,
                                selectedValue: controller
                                    .selectedTouchAbnormalLowerLimbRight.value,
                                onSelect: (name) => controller
                                    .onSelectTouchAbnormalLowerLimbRight(
                                        name: name),
                              ),
                            ),
                            SizedBox(
                              height: Dimens.gapX1,
                            ),
                            Visibility(
                              visible: controller
                                      .selectedSensoryFunctionLowerRight
                                      .contains('Pain Present') &&
                                  controller.sensoryFunctionListLowerRight[i] ==
                                      'Pain Present',
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: StreamBuilder<double>(
                                    stream: controller
                                        .firstSliderStreamLowerLimbRight
                                        .map((range) => range.start),
                                    initialData: controller
                                        .lowerAgeFirstLowerLimbRight.value,
                                    builder: (context, snapshot) {
                                      double min = 0;
                                      double max = 10;
                                      int divisions = 10;

                                      double startFraction =
                                          (snapshot.data! - min) / (max - min);

                                      int startLabel =
                                          (startFraction * divisions).round();

                                      return Column(
                                        children: [
                                          Slider(
                                            value: snapshot.data!,
                                            min: min,
                                            max: max,
                                            divisions: divisions,
                                            label: '$startLabel',
                                            onChanged: (value) {
                                              controller.updateFirstRangeLower(
                                                  RangeValues(value, value));

                                              controller
                                                  .updateFirstSliderStreamLowerLimbRight(
                                                      RangeValues(
                                                          value, value));
                                            },
                                            activeColor: AppColors.baseColor,
                                            inactiveColor: AppColors.greyColor,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                for (int i = 0; i <= 10; i++)
                                                  Text('$i'),
                                              ],
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  )),
                            ),
                            SizedBox(
                              height: Dimens.gapX1,
                            ),
                            Visibility(
                              visible: controller
                                      .selectedSensoryFunctionLowerRight
                                      .contains('Tenderness Present') &&
                                  controller.sensoryFunctionListLowerRight[i] ==
                                      'Tenderness Present',
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: StreamBuilder<double>(
                                    stream: controller
                                        .secondSliderStreamLowerLimbRight
                                        .map((range) => range.start),
                                    initialData: controller
                                        .lowerAgeSecondLowerLimbRight.value,
                                    builder: (context, snapshot) {
                                      double min = 0;
                                      double max = 10;
                                      int divisions = 10;

                                      double startFraction =
                                          (snapshot.data! - min) / (max - min);

                                      int startLabel =
                                          (startFraction * divisions).round();

                                      return Column(
                                        children: [
                                          Slider(
                                            value: snapshot.data!,
                                            min: min,
                                            max: max,
                                            divisions: divisions,
                                            label: '$startLabel',
                                            onChanged: (value) {
                                              controller.updateSecondRangeLower(
                                                  RangeValues(value, value));

                                              controller
                                                  .updateSecondSliderStreamLowerLimbRight(
                                                      RangeValues(
                                                          value, value));
                                            },
                                            activeColor: AppColors.baseColor,
                                            inactiveColor: AppColors.greyColor,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                for (int i = 0; i <= 10; i++)
                                                  Text('$i'),
                                              ],
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  )),
                            ),
                          ],
                        );
                      }),
                    ))),
          ])
        : Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("Deep Tendon Reflexes", style: AppStyles.tsBlackSemi20),
            const SizedBox(height: Dimens.gapX1),
            const Text("Sensory Function", style: AppStyles.tsBlackSemi20),
            const SizedBox(
              height: Dimens.gapX3,
            ),
            Row(
              children: [
                Obx(() => CommonCheckBox(
                    name: "All Normal",
                    textStyle: AppStyles.tsBlackMedium20,
                    isSelected:
                        controller.sensoryFunctionAllNormalLowerLimbRight.value,
                    onTap: () {
                      controller
                          .onCheckedSensoryFunctionAllNormalLowerLimbRight();
                      controller.selectedSensoryFunctionLowerRight.clear();
                      controller.selectedTouchAbnormalLowerLimbRight.value =
                          'Hot object';
                      controller.updateFirstRangeLower(const RangeValues(0, 0));
                      controller
                          .updateSecondRangeLower(const RangeValues(0, 0));
                    })),
                const SizedBox(width: Dimens.gapX3),
                Obx(() => CommonCheckBox(
                      name: "Abnormal",
                      textStyle: AppStyles.tsBlackMedium20,
                      isSelected: !controller
                          .sensoryFunctionAllNormalLowerLimbRight.value,
                      onTap: () => controller
                          .onCheckedSensoryFunctionAllNormalLowerLimbRight(),
                    )),
              ],
            ),
            const SizedBox(height: Dimens.gapX2),
            Padding(
                padding: EdgeInsets.only(left: Dimens.gapX3),
                child: Obx(() => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                          controller.sensoryFunctionListLowerRight.length, (i) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonCheckBox(
                              isActive: !controller
                                  .sensoryFunctionAllNormalLowerLimbRight.value,
                              checkedIcon: Icons.check_box,
                              unCheckedIcon: Icons.check_box_outline_blank,
                              onTap: () {
                                if (controller.selectedSensoryFunctionLowerRight
                                    .contains(controller
                                        .sensoryFunctionListLowerRight[i])) {
                                  controller.selectedSensoryFunctionLowerRight
                                      .remove(controller
                                          .sensoryFunctionListLowerRight[i]);
                                } else {
                                  controller.selectedSensoryFunctionLowerRight
                                      .add(controller
                                          .sensoryFunctionListLowerRight[i]);
                                }
                              },
                              isSelected: controller
                                  .selectedSensoryFunctionLowerRight
                                  .contains(controller
                                      .sensoryFunctionListLowerRight[i]),
                              name: controller.sensoryFunctionListLowerRight[i],
                            ).paddingOnly(bottom: Dimens.gapX1),
                            Visibility(
                              visible: controller
                                      .selectedSensoryFunctionLowerRight
                                      .contains('Touch Abnormal') &&
                                  controller.sensoryFunctionListLowerRight[i] ==
                                      'Touch Abnormal',
                              child: commonMultipleWidget(
                                list: controller.touchAbnormalRightList,
                                selectedValue: controller
                                    .selectedTouchAbnormalLowerLimbRight.value,
                                onSelect: (name) => controller
                                    .onSelectTouchAbnormalLowerLimbRight(
                                        name: name),
                              ),
                            ),
                            SizedBox(
                              height: Dimens.gapX1,
                            ),
                            Visibility(
                              visible: controller
                                      .selectedSensoryFunctionLowerRight
                                      .contains('Pain Present') &&
                                  controller.sensoryFunctionListLowerRight[i] ==
                                      'Pain Present',
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: StreamBuilder<double>(
                                    stream: controller
                                        .firstSliderStreamLowerLimbRight
                                        .map((range) => range.start),
                                    initialData: controller
                                        .lowerAgeFirstLowerLimbRight.value,
                                    builder: (context, snapshot) {
                                      double min = 0;
                                      double max = 10;
                                      int divisions = 10;

                                      double startFraction =
                                          (snapshot.data! - min) / (max - min);

                                      int startLabel =
                                          (startFraction * divisions).round();

                                      return Column(
                                        children: [
                                          Slider(
                                            value: snapshot.data!,
                                            min: min,
                                            max: max,
                                            divisions: divisions,
                                            label: '$startLabel',
                                            onChanged: (value) {
                                              controller.updateFirstRangeLower(
                                                  RangeValues(value, value));

                                              controller
                                                  .updateFirstSliderStreamLowerLimbRight(
                                                      RangeValues(
                                                          value, value));
                                            },
                                            activeColor: AppColors.baseColor,
                                            inactiveColor: AppColors.greyColor,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                for (int i = 0; i <= 10; i++)
                                                  Text('$i'),
                                              ],
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  )),
                            ),
                            SizedBox(
                              height: Dimens.gapX1,
                            ),
                            Visibility(
                              visible: controller
                                      .selectedSensoryFunctionLowerRight
                                      .contains('Tenderness Present') &&
                                  controller.sensoryFunctionListLowerRight[i] ==
                                      'Tenderness Present',
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: StreamBuilder<double>(
                                    stream: controller
                                        .secondSliderStreamLowerLimbRight
                                        .map((range) => range.start),
                                    initialData: controller
                                        .lowerAgeSecondLowerLimbRight.value,
                                    builder: (context, snapshot) {
                                      double min = 0;
                                      double max = 10;
                                      int divisions = 10;

                                      double startFraction =
                                          (snapshot.data! - min) / (max - min);

                                      int startLabel =
                                          (startFraction * divisions).round();

                                      return Column(
                                        children: [
                                          Slider(
                                            value: snapshot.data!,
                                            min: min,
                                            max: max,
                                            divisions: divisions,
                                            label: '$startLabel',
                                            onChanged: (value) {
                                              controller.updateSecondRangeLower(
                                                  RangeValues(value, value));

                                              controller
                                                  .updateSecondSliderStreamLowerLimbRight(
                                                      RangeValues(
                                                          value, value));
                                            },
                                            activeColor: AppColors.baseColor,
                                            inactiveColor: AppColors.greyColor,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                for (int i = 0; i <= 10; i++)
                                                  Text('$i'),
                                              ],
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  )),
                            ),
                          ],
                        );
                      }),
                    ))),
          ]);
  }
}

Widget commonMultipleWidget({
  required List<String> list,
  required String selectedValue,
  required Function(String) onSelect,
}) {
  return Obx(
    () => StaggeredGrid.count(
      crossAxisCount: Get.width < 600 ? 1 : 1,
      mainAxisSpacing: 20,
      crossAxisSpacing: 10,
      children: List.generate(
        list.length,
        (i) => CommonCheckBox(
          isActive: true, // You may need to set this based on your logic
          name: list[i],
          isSelected: list[i] == selectedValue,
          onTap: () => onSelect(list[i]),
        ).paddingSymmetric(horizontal: Dimens.gapX2),
      ),
    ),
  );
}
