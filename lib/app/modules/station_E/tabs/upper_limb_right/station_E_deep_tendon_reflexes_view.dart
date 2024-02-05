import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../../widgets/common_text.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_styles.dart';
import '../../controllers/station_e_controller.dart';

class StationEDeepTendonReFlexesView extends GetView<StationEController> {
  const StationEDeepTendonReFlexesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Get.width < 600
        ? Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("Deep Tendon Reflexes", style: AppStyles.tsBlackSemi20),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            const Text(
              "Biceps",
              style: AppStyles.tsBlackSemi20,
            ),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Obx(() => CommonCheckBox(
                  name: "Normal [Brisk]",
                  textStyle: AppStyles.tsBlackMedium20,
                  isSelected: controller.bicepsNormalUpperLimbRight.value,
                  onTap: () => controller.onCheckedBicepsUpperLimbRight(),
                )),
            const SizedBox(
              height: Dimens.gapX1,
            ),
            Obx(() => CommonCheckBox(
                  name: "Abnormal",
                  textStyle: AppStyles.tsBlackMedium20,
                  isSelected: !controller.bicepsNormalUpperLimbRight.value,
                  onTap: () => controller.onCheckedBicepsUpperLimbRight(),
                )),
            const SizedBox(height: Dimens.gapX2),
            Padding(
                padding: EdgeInsets.only(left: Dimens.gapX3),
                child: Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.bicepsRightList.length,
                      (i) => CommonCheckBox(
                        isActive: !controller.bicepsNormalUpperLimbRight.value,
                        name: controller.bicepsRightList[i],
                        isSelected: controller.bicepsRightList[i] ==
                            controller.selectedBicepsUpperLimbRight.value,
                        onTap: () => controller.onSelectBicepsUpperLimbRight(
                            name: controller.bicepsRightList[i]),
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            const Text(
              "Radial",
              style: AppStyles.tsBlackSemi20,
            ),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Obx(() => CommonCheckBox(
                  name: "Normal [Brisk]",
                  textStyle: AppStyles.tsBlackMedium20,
                  isSelected: controller.radialNormalUpperLimbRight.value,
                  onTap: () => controller.onCheckedRadialUpperLimbRight(),
                )),
            const SizedBox(
              height: Dimens.gapX1,
            ),
            Obx(() => CommonCheckBox(
                  name: "Abnormal",
                  textStyle: AppStyles.tsBlackMedium20,
                  isSelected: !controller.radialNormalUpperLimbRight.value,
                  onTap: () => controller.onCheckedRadialUpperLimbRight(),
                )),
            const SizedBox(height: Dimens.gapX2),
            Padding(
                padding: EdgeInsets.only(left: Dimens.gapX3),
                child: Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.radialRightList.length,
                      (i) => CommonCheckBox(
                        isActive: !controller.radialNormalUpperLimbRight.value,
                        name: controller.radialRightList[i],
                        isSelected: controller.radialRightList[i] ==
                            controller.selectedRadialUpperLimbRight.value,
                        onTap: () => controller.onSelectRadialUpperLimbRight(
                            name: controller.radialRightList[i]),
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              height: Dimens.gapX2,
            ),
          ])
        : Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("Deep Tendon Reflexes", style: AppStyles.tsBlackSemi20),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            const Text(
              "Biceps",
              style: AppStyles.tsBlackSemi20,
            ),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(() => CommonCheckBox(
                      name: "Normal [Brisk]",
                      textStyle: AppStyles.tsBlackMedium20,
                      isSelected: controller.bicepsNormalUpperLimbRight.value,
                      onTap: () => controller.onCheckedBicepsUpperLimbRight(),
                    )),
                const SizedBox(
                  width: Dimens.gapX4,
                ),
                Obx(() => CommonCheckBox(
                      name: "Abnormal",
                      textStyle: AppStyles.tsBlackMedium20,
                      isSelected: !controller.bicepsNormalUpperLimbRight.value,
                      onTap: () => controller.onCheckedBicepsUpperLimbRight(),
                    )),
              ],
            ),
            const SizedBox(height: Dimens.gapX2),
            Padding(
                padding: EdgeInsets.only(left: Dimens.gapX3),
                child: Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.bicepsRightList.length,
                      (i) => CommonCheckBox(
                        isActive: !controller.bicepsNormalUpperLimbRight.value,
                        name: controller.bicepsRightList[i],
                        isSelected: controller.bicepsRightList[i] ==
                            controller.selectedBicepsUpperLimbRight.value,
                        onTap: () => controller.onSelectBicepsUpperLimbRight(
                            name: controller.bicepsRightList[i]),
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            const Text(
              "Radial",
              style: AppStyles.tsBlackSemi20,
            ),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(() => CommonCheckBox(
                      name: "Normal [Brisk]",
                      textStyle: AppStyles.tsBlackMedium20,
                      isSelected: controller.radialNormalUpperLimbRight.value,
                      onTap: () => controller.onCheckedRadialUpperLimbRight(),
                    )),
                const SizedBox(
                  width: Dimens.gapX4,
                ),
                Obx(() => CommonCheckBox(
                      name: "Abnormal",
                      textStyle: AppStyles.tsBlackMedium20,
                      isSelected: !controller.radialNormalUpperLimbRight.value,
                      onTap: () => controller.onCheckedRadialUpperLimbRight(),
                    )),
              ],
            ),
            const SizedBox(height: Dimens.gapX2),
            Padding(
                padding: EdgeInsets.only(left: Dimens.gapX3),
                child: Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.radialRightList.length,
                      (i) => CommonCheckBox(
                        isActive: !controller.radialNormalUpperLimbRight.value,
                        name: controller.radialRightList[i],
                        isSelected: controller.radialRightList[i] ==
                            controller.selectedRadialUpperLimbRight.value,
                        onTap: () => controller.onSelectRadialUpperLimbRight(
                            name: controller.radialRightList[i]),
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              height: Dimens.gapX2,
            ),
          ]);
  }
}
