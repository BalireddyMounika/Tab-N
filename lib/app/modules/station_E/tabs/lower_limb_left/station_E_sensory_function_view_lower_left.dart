import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nivish/app/themes/app_styles.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_colors.dart';
import '../../controllers/station_e_controller.dart';

class StationESensoryFunctionLowerLimbLeftView
    extends GetView<StationEController> {
  const StationESensoryFunctionLowerLimbLeftView({Key? key}) : super(key: key);

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
                    controller.sensoryFunctionAllNormalLowerLimbLeft.value,
                onTap: () {
                  controller.onCheckedSensoryFunctionAllNormalLowerLimbLeft();
                  controller.selectedSensoryFunctionLowerLeft.clear();
                  controller.selectedTouchAbnormalLowerLimbLeft.value =
                      'Hot object';
                  controller.updateFirstRangeLowerLeft(const RangeValues(0, 0));
                  controller
                      .updateSecondRangeLowerLeft(const RangeValues(0, 0));
                })),
            const SizedBox(height: Dimens.gapX1),
            Obx(() => CommonCheckBox(
                  name: "Abnormal",
                  textStyle: AppStyles.tsBlackMedium20,
                  isSelected:
                      !controller.sensoryFunctionAllNormalLowerLimbLeft.value,
                  onTap: () => controller
                      .onCheckedSensoryFunctionAllNormalLowerLimbLeft(),
                )),
            const SizedBox(height: Dimens.gapX2),
            Padding(
                padding: EdgeInsets.only(left: Dimens.gapX3),
                child: Obx(
                  () => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                          controller.sensoryFunctionListLowerLeft.length, (i) {
                        return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonCheckBox(
                                checkedIcon: Icons.check_box,
                                unCheckedIcon: Icons.check_box_outline_blank,
                                isSelected: controller
                                    .selectedSensoryFunctionLowerLeft
                                    .contains(controller
                                        .sensoryFunctionListLowerLeft[i]),
                                isActive: !controller
                                    .sensoryFunctionAllNormalLowerLimbLeft
                                    .value,
                                name:
                                    controller.sensoryFunctionListLowerLeft[i],
                                onTap: () {
                                  if (controller
                                      .selectedSensoryFunctionLowerLeft
                                      .contains(controller
                                          .sensoryFunctionListLowerLeft[i])) {
                                    controller.selectedSensoryFunctionLowerLeft
                                        .remove(controller
                                            .sensoryFunctionListLowerLeft[i]);
                                  } else {
                                    controller.selectedSensoryFunctionLowerLeft
                                        .add(controller
                                            .sensoryFunctionListLowerLeft[i]);
                                  }
                                },
                              ).paddingOnly(bottom: Dimens.gapX1),
                              Visibility(
                                visible: controller
                                        .selectedSensoryFunctionLowerLeft
                                        .contains('Touch Abnormal') &&
                                    controller
                                            .sensoryFunctionListLowerLeft[i] ==
                                        'Touch Abnormal',
                                child: commonMultipleWidget(
                                  list: controller.touchAbnormalLowerLeftList,
                                  selectedValue: controller
                                      .selectedTouchAbnormalLowerLimbLeft.value,
                                  onSelect: (name) => controller
                                      .onSelectTouchAbnormalLowerLimbLeft(
                                          name: name),
                                ),
                              ),
                              SizedBox(
                                height: Dimens.gapX1,
                              ),
                              Visibility(
                                visible: controller
                                        .selectedSensoryFunctionLowerLeft
                                        .contains('Pain Present') &&
                                    controller
                                            .sensoryFunctionListLowerLeft[i] ==
                                        'Pain Present',
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: StreamBuilder<double>(
                                      stream: controller
                                          .firstSliderStreamLowerLimbLeft
                                          .map((range) => range.start),
                                      initialData: controller
                                          .lowerAgeFirstLowerLimbLeft.value,
                                      builder: (context, snapshot) {
                                        double min = 0;
                                        double max = 10;
                                        int divisions = 10;

                                        double startFraction =
                                            (snapshot.data! - min) /
                                                (max - min);
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
                                                controller
                                                    .updateFirstRangeLowerLeft(
                                                        RangeValues(
                                                            value, value));

                                                controller
                                                    .updateFirstSliderStreamLowerLimbLeft(
                                                        RangeValues(
                                                            value, value));
                                              },
                                              activeColor: AppColors.baseColor,
                                              inactiveColor:
                                                  AppColors.greyColor,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
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
                                        .selectedSensoryFunctionLowerLeft
                                        .contains('Tenderness Present') &&
                                    controller
                                            .sensoryFunctionListLowerLeft[i] ==
                                        'Tenderness Present',
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: StreamBuilder<double>(
                                      stream: controller
                                          .secondSliderStreamLowerLimbLeft
                                          .map((range) => range.start),
                                      initialData: controller
                                          .lowerAgeSecondLowerLimbLeft.value,
                                      builder: (context, snapshot) {
                                        double min = 0;
                                        double max = 10;
                                        int divisions = 10;

                                        double startFraction =
                                            (snapshot.data! - min) /
                                                (max - min);
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
                                                controller
                                                    .updateSecondRangeLowerLeft(
                                                        RangeValues(
                                                            value, value));

                                                controller
                                                    .updateSecondSliderStreamLowerLimbLeft(
                                                        RangeValues(
                                                            value, value));
                                              },
                                              activeColor: AppColors.baseColor,
                                              inactiveColor:
                                                  AppColors.greyColor,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
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
                            ]);
                      })),
                )),
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
                        controller.sensoryFunctionAllNormalLowerLimbLeft.value,
                    onTap: () {
                      controller
                          .onCheckedSensoryFunctionAllNormalLowerLimbLeft();
                      controller.selectedSensoryFunctionLowerLeft.clear();
                      controller.selectedTouchAbnormalLowerLimbLeft.value =
                          'Hot object';
                      controller
                          .updateFirstRangeLowerLeft(const RangeValues(0, 0));
                      controller
                          .updateSecondRangeLowerLeft(const RangeValues(0, 0));
                    })),
                const SizedBox(width: Dimens.gapX3),
                Obx(() => CommonCheckBox(
                      name: "Abnormal",
                      textStyle: AppStyles.tsBlackMedium20,
                      isSelected: !controller
                          .sensoryFunctionAllNormalLowerLimbLeft.value,
                      onTap: () => controller
                          .onCheckedSensoryFunctionAllNormalLowerLimbLeft(),
                    )),
              ],
            ),
            const SizedBox(height: Dimens.gapX2),
            Padding(
                padding: EdgeInsets.only(left: Dimens.gapX3),
                child: Obx(
                  () => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                          controller.sensoryFunctionListLowerLeft.length, (i) {
                        return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonCheckBox(
                                checkedIcon: Icons.check_box,
                                unCheckedIcon: Icons.check_box_outline_blank,
                                isSelected: controller
                                    .selectedSensoryFunctionLowerLeft
                                    .contains(controller
                                        .sensoryFunctionListLowerLeft[i]),
                                isActive: !controller
                                    .sensoryFunctionAllNormalLowerLimbLeft
                                    .value,
                                name:
                                    controller.sensoryFunctionListLowerLeft[i],
                                onTap: () {
                                  if (controller
                                      .selectedSensoryFunctionLowerLeft
                                      .contains(controller
                                          .sensoryFunctionListLowerLeft[i])) {
                                    controller.selectedSensoryFunctionLowerLeft
                                        .remove(controller
                                            .sensoryFunctionListLowerLeft[i]);
                                  } else {
                                    controller.selectedSensoryFunctionLowerLeft
                                        .add(controller
                                            .sensoryFunctionListLowerLeft[i]);
                                  }
                                },
                              ).paddingOnly(bottom: Dimens.gapX1),
                              Visibility(
                                visible: controller
                                        .selectedSensoryFunctionLowerLeft
                                        .contains('Touch Abnormal') &&
                                    controller
                                            .sensoryFunctionListLowerLeft[i] ==
                                        'Touch Abnormal',
                                child: commonMultipleWidget(
                                  list: controller.touchAbnormalLowerLeftList,
                                  selectedValue: controller
                                      .selectedTouchAbnormalLowerLimbLeft.value,
                                  onSelect: (name) => controller
                                      .onSelectTouchAbnormalLowerLimbLeft(
                                          name: name),
                                ),
                              ),
                              SizedBox(
                                height: Dimens.gapX1,
                              ),
                              Visibility(
                                visible: controller
                                        .selectedSensoryFunctionLowerLeft
                                        .contains('Pain Present') &&
                                    controller
                                            .sensoryFunctionListLowerLeft[i] ==
                                        'Pain Present',
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: StreamBuilder<double>(
                                      stream: controller
                                          .firstSliderStreamLowerLimbLeft
                                          .map((range) => range.start),
                                      initialData: controller
                                          .lowerAgeFirstLowerLimbLeft.value,
                                      builder: (context, snapshot) {
                                        double min = 0;
                                        double max = 10;
                                        int divisions = 10;

                                        double startFraction =
                                            (snapshot.data! - min) /
                                                (max - min);
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
                                                controller
                                                    .updateFirstRangeLowerLeft(
                                                        RangeValues(
                                                            value, value));

                                                controller
                                                    .updateFirstSliderStreamLowerLimbLeft(
                                                        RangeValues(
                                                            value, value));
                                              },
                                              activeColor: AppColors.baseColor,
                                              inactiveColor:
                                                  AppColors.greyColor,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
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
                                        .selectedSensoryFunctionLowerLeft
                                        .contains('Tenderness Present') &&
                                    controller
                                            .sensoryFunctionListLowerLeft[i] ==
                                        'Tenderness Present',
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: StreamBuilder<double>(
                                      stream: controller
                                          .secondSliderStreamLowerLimbLeft
                                          .map((range) => range.start),
                                      initialData: controller
                                          .lowerAgeSecondLowerLimbLeft.value,
                                      builder: (context, snapshot) {
                                        double min = 0;
                                        double max = 10;
                                        int divisions = 10;

                                        double startFraction =
                                            (snapshot.data! - min) /
                                                (max - min);
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
                                                controller
                                                    .updateSecondRangeLowerLeft(
                                                        RangeValues(
                                                            value, value));

                                                controller
                                                    .updateSecondSliderStreamLowerLimbLeft(
                                                        RangeValues(
                                                            value, value));
                                              },
                                              activeColor: AppColors.baseColor,
                                              inactiveColor:
                                                  AppColors.greyColor,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
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
                            ]);
                      })),
                )),
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
