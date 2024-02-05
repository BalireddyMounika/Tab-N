import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../../widgets/common_text.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_styles.dart';
import '../../controllers/station_e_controller.dart';

class StationEDeepTendonReFlexesLeftView extends GetView<StationEController> {
  const StationEDeepTendonReFlexesLeftView({Key? key}) : super(key: key);

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
                  isSelected: controller.bicepsNormalUpperLimbLeft.value,
                  onTap: () => controller.onCheckedBicepsUpperLimbLeft(),
                )),
            const SizedBox(
              height: Dimens.gapX1,
            ),
            Obx(() => CommonCheckBox(
                  name: "Abnormal",
                  textStyle: AppStyles.tsBlackMedium20,
                  isSelected: !controller.bicepsNormalUpperLimbLeft.value,
                  onTap: () => controller.onCheckedBicepsUpperLimbLeft(),
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
                      controller.bicepsLeftList.length,
                      (i) => CommonCheckBox(
                        isActive: !controller.bicepsNormalUpperLimbLeft.value,
                        name: controller.bicepsLeftList[i],
                        isSelected: controller.bicepsLeftList[i] ==
                            controller.selectedBicepsUpperLimbLeft.value,
                        onTap: () => controller.onSelectBicepsUpperLimbLeft(
                            name: controller.bicepsLeftList[i]),
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
                  isSelected: controller.radialNormalUpperLimbLeft.value,
                  onTap: () => controller.onCheckedRadialUpperLimbLeft(),
                )),
            const SizedBox(
              height: Dimens.gapX1,
            ),
            Obx(() => CommonCheckBox(
                  name: "Abnormal",
                  textStyle: AppStyles.tsBlackMedium20,
                  isSelected: !controller.radialNormalUpperLimbLeft.value,
                  onTap: () => controller.onCheckedRadialUpperLimbLeft(),
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
                      controller.radialLeftList.length,
                      (i) => CommonCheckBox(
                        isActive: !controller.radialNormalUpperLimbLeft.value,
                        name: controller.radialLeftList[i],
                        isSelected: controller.radialLeftList[i] ==
                            controller.selectedRadialUpperLimbLeft.value,
                        onTap: () => controller.onSelectRadialUpperLimbLeft(
                            name: controller.radialLeftList[i]),
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
                      isSelected: controller.bicepsNormalUpperLimbLeft.value,
                      onTap: () => controller.onCheckedBicepsUpperLimbLeft(),
                    )),
                const SizedBox(
                  width: Dimens.gapX4,
                ),
                Obx(() => CommonCheckBox(
                      name: "Abnormal",
                      textStyle: AppStyles.tsBlackMedium20,
                      isSelected: !controller.bicepsNormalUpperLimbLeft.value,
                      onTap: () => controller.onCheckedBicepsUpperLimbLeft(),
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
                      controller.bicepsLeftList.length,
                      (i) => CommonCheckBox(
                        isActive: !controller.bicepsNormalUpperLimbLeft.value,
                        name: controller.bicepsLeftList[i],
                        isSelected: controller.bicepsLeftList[i] ==
                            controller.selectedBicepsUpperLimbLeft.value,
                        onTap: () => controller.onSelectBicepsUpperLimbLeft(
                            name: controller.bicepsLeftList[i]),
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
                      isSelected: controller.radialNormalUpperLimbLeft.value,
                      onTap: () => controller.onCheckedRadialUpperLimbLeft(),
                    )),
                const SizedBox(
                  width: Dimens.gapX4,
                ),
                Obx(() => CommonCheckBox(
                      name: "Abnormal",
                      textStyle: AppStyles.tsBlackMedium20,
                      isSelected: !controller.radialNormalUpperLimbLeft.value,
                      onTap: () => controller.onCheckedRadialUpperLimbLeft(),
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
                      controller.radialLeftList.length,
                      (i) => CommonCheckBox(
                        isActive: !controller.radialNormalUpperLimbLeft.value,
                        name: controller.radialLeftList[i],
                        isSelected: controller.radialLeftList[i] ==
                            controller.selectedRadialUpperLimbLeft.value,
                        onTap: () => controller.onSelectRadialUpperLimbLeft(
                            name: controller.radialLeftList[i]),
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
