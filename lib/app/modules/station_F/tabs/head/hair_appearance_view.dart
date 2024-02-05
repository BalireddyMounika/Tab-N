import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../../widgets/common_input_field.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_styles.dart';
import '../../controllers/station_f_controller.dart';

class StationFHeadAppearanceView extends GetView<StationFController> {
  const StationFHeadAppearanceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Get.width < 600
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hair Appearance",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              Obx(() => CommonCheckBox(
                  textStyle: AppStyles.tsBlackMedium20,
                  name: "Normal",
                  isSelected: controller.isHairAppearance.value,
                  onTap: () {
                    controller.onCheckedHairAppearance();
                    controller.selectedHairAppearance.clear();
                  })),
              const SizedBox(
                height: Dimens.gapX1,
              ),
              Obx(() => CommonCheckBox(
                    textStyle: AppStyles.tsBlackMedium20,
                    name: "Abnormal",
                    isSelected: !controller.isHairAppearance.value,
                    onTap: () => controller.onCheckedHairAppearance(),
                  )),
              const SizedBox(height: Dimens.gapX2),
              Padding(
                  padding: const EdgeInsets.only(left: Dimens.gapX3),
                  child: Obx(
                    () => StaggeredGrid.count(
                      crossAxisCount: Get.width < 600 ? 1 : 1,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 12,
                      children: List.generate(
                        controller.hairAppearanceList.length,
                        (i) => CommonCheckBox(
                            checkedIcon: Icons.check_box,
                            unCheckedIcon: Icons.check_box_outline_blank,
                            isActive: !controller.isHairAppearance.value,
                            name: controller.hairAppearanceList.values
                                .elementAt(i),
                            isSelected: controller.selectedHairAppearance
                                .contains(controller.hairAppearanceList.keys
                                    .elementAt(i)),
                            onTap: () =>
                                controller.onSelectHairAppearance(idx: i)),
                      ),
                    ),
                  )),
              const SizedBox(height: Dimens.gapX1),
              Obx(
                () => Visibility(
                  visible: controller.selectedHairAppearance.contains('Other'),
                  child: SizedBox(
                    width: 400,
                    child: CommonInputField(
                            isEnabled: controller.selectedHairAppearance
                                    .contains('Other') &&
                                !controller.isHairAppearance.value,
                            hintText: "Type here",
                            wrapper: controller.otherHairAppearanceWrapper)
                        .paddingSymmetric(horizontal: Dimens.gapX4),
                  ),
                ),
              ),
              const SizedBox(height: Dimens.gapX2),
              const Text(
                "Scalp",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              Obx(() => CommonCheckBox(
                  textStyle: AppStyles.tsBlackMedium20,
                  name: "Normal",
                  isSelected: controller.isScalp.value,
                  onTap: () {
                    controller.onCheckedScalp();
                    controller.selectedScalp.clear();
                  })),
              const SizedBox(
                height: Dimens.gapX1,
              ),
              Obx(() => CommonCheckBox(
                    textStyle: AppStyles.tsBlackMedium20,
                    name: "Abnormal",
                    isSelected: !controller.isScalp.value,
                    onTap: () => controller.onCheckedScalp(),
                  )),
              const SizedBox(height: Dimens.gapX2),
              Padding(
                  padding: const EdgeInsets.only(left: Dimens.gapX3),
                  child: Obx(
                    () => StaggeredGrid.count(
                      crossAxisCount: Get.width < 600 ? 1 : 2,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 12,
                      children: List.generate(
                        controller.scalpList.length,
                        (i) => CommonCheckBox(
                            checkedIcon: Icons.check_box,
                            unCheckedIcon: Icons.check_box_outline_blank,
                            isActive: !controller.isScalp.value,
                            name: controller.scalpList.values.elementAt(i),
                            isSelected: controller.selectedScalp.contains(
                                controller.scalpList.keys.elementAt(i)),
                            onTap: () => controller.onSelectScalp(idx: i)),
                      ),
                    ),
                  )),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hair Appearance",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              Row(
                children: [
                  Obx(() => CommonCheckBox(
                      textStyle: AppStyles.tsBlackMedium20,
                      name: "Normal",
                      isSelected: controller.isHairAppearance.value,
                      onTap: () {
                        controller.onCheckedHairAppearance();
                        controller.selectedHairAppearance.clear();
                      })),
                  const SizedBox(
                    width: Dimens.gapX5,
                  ),
                  Obx(() => CommonCheckBox(
                        textStyle: AppStyles.tsBlackMedium20,
                        name: "Abnormal",
                        isSelected: !controller.isHairAppearance.value,
                        onTap: () => controller.onCheckedHairAppearance(),
                      )),
                ],
              ),
              const SizedBox(height: Dimens.gapX2),
              Padding(
                  padding: const EdgeInsets.only(left: Dimens.gapX3),
                  child: Obx(
                    () => StaggeredGrid.count(
                      crossAxisCount: Get.width < 600 ? 1 : 1,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 12,
                      children: List.generate(
                        controller.hairAppearanceList.length,
                        (i) => CommonCheckBox(
                            checkedIcon: Icons.check_box,
                            unCheckedIcon: Icons.check_box_outline_blank,
                            isActive: !controller.isHairAppearance.value,
                            name: controller.hairAppearanceList.values
                                .elementAt(i),
                            isSelected: controller.selectedHairAppearance
                                .contains(controller.hairAppearanceList.keys
                                    .elementAt(i)),
                            onTap: () =>
                                controller.onSelectHairAppearance(idx: i)),
                      ),
                    ),
                  )),
              const SizedBox(height: Dimens.gapX1),
              Obx(
                () => Visibility(
                  visible: controller.selectedHairAppearance.contains('Other'),
                  child: SizedBox(
                    width: 400,
                    child: CommonInputField(
                            isEnabled: controller.selectedHairAppearance
                                    .contains('Other') &&
                                !controller.isHairAppearance.value,
                            hintText: "Type here",
                            wrapper: controller.otherHairAppearanceWrapper)
                        .paddingSymmetric(horizontal: Dimens.gapX4),
                  ),
                ),
              ),
              const SizedBox(height: Dimens.gapX2),
              const Text(
                "Scalp",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              Row(
                children: [
                  Obx(() => CommonCheckBox(
                      textStyle: AppStyles.tsBlackMedium20,
                      name: "Normal",
                      isSelected: controller.isScalp.value,
                      onTap: () {
                        controller.onCheckedScalp();
                        controller.selectedScalp.clear();
                      })),
                  const SizedBox(
                    width: Dimens.gapX5,
                  ),
                  Obx(() => CommonCheckBox(
                        textStyle: AppStyles.tsBlackMedium20,
                        name: "Abnormal",
                        isSelected: !controller.isScalp.value,
                        onTap: () => controller.onCheckedScalp(),
                      )),
                ],
              ),
              const SizedBox(height: Dimens.gapX2),
              Padding(
                  padding: const EdgeInsets.only(left: Dimens.gapX3),
                  child: Obx(
                    () => StaggeredGrid.count(
                      crossAxisCount: Get.width < 600 ? 1 : 2,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 12,
                      children: List.generate(
                        controller.scalpList.length,
                        (i) => CommonCheckBox(
                            checkedIcon: Icons.check_box,
                            unCheckedIcon: Icons.check_box_outline_blank,
                            isActive: !controller.isScalp.value,
                            name: controller.scalpList.values.elementAt(i),
                            isSelected: controller.selectedScalp.contains(
                                controller.scalpList.keys.elementAt(i)),
                            onTap: () => controller.onSelectScalp(idx: i)),
                      ),
                    ),
                  )),
            ],
          );
  }
}
