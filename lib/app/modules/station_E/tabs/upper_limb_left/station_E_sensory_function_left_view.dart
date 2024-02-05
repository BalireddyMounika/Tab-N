import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nivish/app/themes/app_styles.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_colors.dart';
import '../../controllers/station_e_controller.dart';

class StationESensoryFunctionLeftView extends GetView<StationEController> {
  const StationESensoryFunctionLeftView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Get.width < 600
        ? Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("Sensory Function", style: AppStyles.tsBlackSemi20),
            const SizedBox(
              height: Dimens.gapX3,
            ),
            Obx(() => CommonCheckBox(
                name: "All Normal",
                textStyle: AppStyles.tsBlackMedium20,
                isSelected:
                    controller.sensoryFunctionAllNormalUpperLimbLeft.value,
                onTap: () {
                  controller.onCheckedSensoryFunctionAllNormalUpperLimbLeft();
                  controller.selectedSensoryFunctionLeft.clear();
                  controller.selectedTouchAbnormalUpperLimbLeft.value = '';
                  controller.updateFirstRangeLeft(const RangeValues(0, 0));
                  controller.updateSecondRangeLeft(const RangeValues(0, 0));
                })),
            const SizedBox(height: Dimens.gapX1),
            Obx(() => CommonCheckBox(
                  name: "Abnormal",
                  textStyle: AppStyles.tsBlackMedium20,
                  isSelected:
                      !controller.sensoryFunctionAllNormalUpperLimbLeft.value,
                  onTap: () => controller
                      .onCheckedSensoryFunctionAllNormalUpperLimbLeft(),
                )),
            const SizedBox(height: Dimens.gapX2),
            Padding(
                padding: const EdgeInsets.only(left: Dimens.gapX3),
                child: Obx(() => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                          controller.sensoryFunctionListLeft.length, (i) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonCheckBox(
                              isActive: !controller
                                  .sensoryFunctionAllNormalUpperLimbLeft.value,
                              checkedIcon: Icons.check_box,
                              unCheckedIcon: Icons.check_box_outline_blank,
                              onTap: () {
                                if (controller.selectedSensoryFunctionLeft
                                    .contains(controller
                                        .sensoryFunctionListLeft[i])) {
                                  controller.selectedSensoryFunctionLeft.remove(
                                      controller.sensoryFunctionListLeft[i]);
                                } else {
                                  controller.selectedSensoryFunctionLeft.add(
                                      controller.sensoryFunctionListLeft[i]);
                                }
                              },
                              isSelected: controller.selectedSensoryFunctionLeft
                                  .contains(
                                      controller.sensoryFunctionListLeft[i]),
                              name: controller.sensoryFunctionListLeft[i],
                            ).paddingOnly(bottom: Dimens.gapX1),
                            Visibility(
                              visible: controller.selectedSensoryFunctionLeft
                                      .contains('Touch Abnormal') &&
                                  controller.sensoryFunctionListLeft[i] ==
                                      'Touch Abnormal' &&
                                  !controller
                                      .sensoryFunctionAllNormalUpperLimbLeft
                                      .value,
                              child: commonMultipleWidget(
                                list: controller.touchAbnormalLeftList,
                                selectedValue: controller
                                    .selectedTouchAbnormalUpperLimbLeft.value,
                                onSelect: (name) => controller
                                    .onSelectTouchAbnormalUpperLimbLeft(
                                        name: name),
                              ),
                            ),
                            const SizedBox(
                              height: Dimens.gapX1,
                            ),
                            Visibility(
                              visible: controller.selectedSensoryFunctionLeft
                                      .contains('Pain Present') &&
                                  controller.sensoryFunctionListLeft[i] ==
                                      'Pain Present' &&
                                  !controller
                                      .sensoryFunctionAllNormalUpperLimbLeft
                                      .value,
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: StreamBuilder<double>(
                                    stream: controller
                                        .firstSliderStreamUpperLimbLeft
                                        .map((range) => range.start),
                                    initialData: controller
                                        .lowerAgeFirstUpperLimbLeft.value,
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
                                              controller.updateFirstRangeLeft(
                                                  RangeValues(value, value));
                                              ;
                                              controller
                                                  .updateFirstSliderStreamUpperLimbLeft(
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
                            const SizedBox(
                              height: Dimens.gapX1,
                            ),
                            Visibility(
                              visible: controller.selectedSensoryFunctionLeft
                                      .contains('Tenderness Present') &&
                                  controller.sensoryFunctionListLeft[i] ==
                                      'Tenderness Present' &&
                                  !controller
                                      .sensoryFunctionAllNormalUpperLimbLeft
                                      .value,
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: StreamBuilder<double>(
                                    stream: controller
                                        .secondSliderStreamUpperLimbLeft
                                        .map((range) => range.start),
                                    initialData: controller
                                        .lowerAgeSecondUpperLimbLeft.value,
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
                                              controller.updateSecondRangeLeft(
                                                  RangeValues(value, value));
                                              ;
                                              controller
                                                  .updateSecondSliderStreamUpperLimbLeft(
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
                        controller.sensoryFunctionAllNormalUpperLimbLeft.value,
                    onTap: () {
                      controller
                          .onCheckedSensoryFunctionAllNormalUpperLimbLeft();
                      controller.selectedSensoryFunctionLeft.clear();
                      controller.selectedTouchAbnormalUpperLimbLeft.value = '';
                      controller.updateFirstRangeLeft(const RangeValues(0, 0));
                      controller.updateSecondRangeLeft(const RangeValues(0, 0));
                    })),
                const SizedBox(width: Dimens.gapX3),
                Obx(() => CommonCheckBox(
                      name: "Abnormal",
                      textStyle: AppStyles.tsBlackMedium20,
                      isSelected: !controller
                          .sensoryFunctionAllNormalUpperLimbLeft.value,
                      onTap: () => controller
                          .onCheckedSensoryFunctionAllNormalUpperLimbLeft(),
                    )),
              ],
            ),
            const SizedBox(height: Dimens.gapX2),
            Padding(
                padding: const EdgeInsets.only(left: Dimens.gapX3),
                child: Obx(() => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                          controller.sensoryFunctionListLeft.length, (i) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonCheckBox(
                              isActive: !controller
                                  .sensoryFunctionAllNormalUpperLimbLeft.value,
                              checkedIcon: Icons.check_box,
                              unCheckedIcon: Icons.check_box_outline_blank,
                              onTap: () {
                                if (controller.selectedSensoryFunctionLeft
                                    .contains(controller
                                        .sensoryFunctionListLeft[i])) {
                                  controller.selectedSensoryFunctionLeft.remove(
                                      controller.sensoryFunctionListLeft[i]);
                                } else {
                                  controller.selectedSensoryFunctionLeft.add(
                                      controller.sensoryFunctionListLeft[i]);
                                }
                              },
                              isSelected: controller.selectedSensoryFunctionLeft
                                  .contains(
                                      controller.sensoryFunctionListLeft[i]),
                              name: controller.sensoryFunctionListLeft[i],
                            ).paddingOnly(bottom: Dimens.gapX1),
                            Visibility(
                              visible: controller.selectedSensoryFunctionLeft
                                      .contains('Touch Abnormal') &&
                                  controller.sensoryFunctionListLeft[i] ==
                                      'Touch Abnormal' &&
                                  !controller
                                      .sensoryFunctionAllNormalUpperLimbLeft
                                      .value,
                              child: commonMultipleWidget(
                                list: controller.touchAbnormalLeftList,
                                selectedValue: controller
                                    .selectedTouchAbnormalUpperLimbLeft.value,
                                onSelect: (name) => controller
                                    .onSelectTouchAbnormalUpperLimbLeft(
                                        name: name),
                              ),
                            ),
                            const SizedBox(
                              height: Dimens.gapX1,
                            ),
                            Visibility(
                              visible: controller.selectedSensoryFunctionLeft
                                      .contains('Pain Present') &&
                                  controller.sensoryFunctionListLeft[i] ==
                                      'Pain Present' &&
                                  !controller
                                      .sensoryFunctionAllNormalUpperLimbLeft
                                      .value,
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: StreamBuilder<double>(
                                    stream: controller
                                        .firstSliderStreamUpperLimbLeft
                                        .map((range) => range.start),
                                    initialData: controller
                                        .lowerAgeFirstUpperLimbLeft.value,
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
                                              controller.updateFirstRangeLeft(
                                                  RangeValues(value, value));
                                              ;
                                              controller
                                                  .updateFirstSliderStreamUpperLimbLeft(
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
                            const SizedBox(
                              height: Dimens.gapX1,
                            ),
                            Visibility(
                              visible: controller.selectedSensoryFunctionLeft
                                      .contains('Tenderness Present') &&
                                  controller.sensoryFunctionListLeft[i] ==
                                      'Tenderness Present' &&
                                  !controller
                                      .sensoryFunctionAllNormalUpperLimbLeft
                                      .value,
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: StreamBuilder<double>(
                                    stream: controller
                                        .secondSliderStreamUpperLimbLeft
                                        .map((range) => range.start),
                                    initialData: controller
                                        .lowerAgeSecondUpperLimbLeft.value,
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
                                              controller.updateSecondRangeLeft(
                                                  RangeValues(value, value));
                                              ;
                                              controller
                                                  .updateSecondSliderStreamUpperLimbLeft(
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
