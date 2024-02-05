import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../../widgets/common_text.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_styles.dart';
import '../../controllers/station_e_controller.dart';

class StationEDeepTendonReFlexesLowerLimbRightView
    extends GetView<StationEController> {
  const StationEDeepTendonReFlexesLowerLimbRightView({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Get.width < 600
        ? Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Knee",
              style: AppStyles.tsBlackSemi20,
            ),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Obx(() => CommonCheckBox(
                  name: "Normal [Brisk]",
                  textStyle: AppStyles.tsBlackMedium20,
                  isSelected: controller.radialNormalLowerLimbRight.value,
                  onTap: () => controller.onCheckedRadialLowerLimbRight(),
                )),
            const SizedBox(
              height: Dimens.gapX1,
            ),
            Obx(() => CommonCheckBox(
                  name: "Abnormal",
                  textStyle: AppStyles.tsBlackMedium20,
                  isSelected: !controller.radialNormalLowerLimbRight.value,
                  onTap: () => controller.onCheckedRadialLowerLimbRight(),
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
                        isActive: !controller.radialNormalLowerLimbRight.value,
                        name: controller.radialRightList[i],
                        isSelected: controller.radialRightList[i] ==
                            controller.selectedRadialLowerLimbRight.value,
                        onTap: () => controller.onSelectRadialLowerLimbRight(
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
            const Text(
              "Knee",
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
                      isSelected: controller.radialNormalLowerLimbRight.value,
                      onTap: () => controller.onCheckedRadialLowerLimbRight(),
                    )),
                const SizedBox(
                  width: Dimens.gapX4,
                ),
                Obx(() => CommonCheckBox(
                      name: "Abnormal",
                      textStyle: AppStyles.tsBlackMedium20,
                      isSelected: !controller.radialNormalLowerLimbRight.value,
                      onTap: () => controller.onCheckedRadialLowerLimbRight(),
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
                        isActive: !controller.radialNormalLowerLimbRight.value,
                        name: controller.radialRightList[i],
                        isSelected: controller.radialRightList[i] ==
                            controller.selectedRadialLowerLimbRight.value,
                        onTap: () => controller.onSelectRadialLowerLimbRight(
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
