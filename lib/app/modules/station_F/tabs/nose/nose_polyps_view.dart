import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_styles.dart';
import '../../controllers/station_f_controller.dart';

class StationFPolypsView extends GetView<StationFController> {
  const StationFPolypsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Polyps",
              style: AppStyles.tsBlackSemi20,
            ),
            const SizedBox(height: Dimens.gapX2),
            Row(
              children: [
                Obx(() => CommonCheckBox(
                      isSelected: controller.isPolyps.value,
                      onTap: () => controller.onCheckedPolyps(),
                      name: "No",
                      textStyle: AppStyles.tsBlackMedium20,
                    )),
                const SizedBox(
                  width: Dimens.gapX4,
                ),
                Obx(() => CommonCheckBox(
                      isSelected: !controller.isPolyps.value,
                      onTap: () => controller.onCheckedPolyps(),
                      name: "Yes",
                      textStyle: AppStyles.tsBlackMedium20,
                    ))
              ],
            ),
            const SizedBox(height: Dimens.gapX2),
            Padding(
                padding: const EdgeInsets.only(left: Dimens.gapX4),
                child: Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 3,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.polypsList.length,
                      (i) => CommonCheckBox(
                        isActive: !controller.isPolyps.value,
                        name: controller.polypsList[i],
                        isSelected: controller.polypsList[i] ==
                            controller.selectedPolyps.value,
                        onTap: () => controller.onSelectPolyps(
                            name: controller.polypsList[i]),
                      ),
                    ),
                  ),
                )),
            const SizedBox(height: Dimens.gapX2),
            const Text(
              "Septum /Bridge",
              style: AppStyles.tsBlackSemi20,
            ),
            const SizedBox(height: Dimens.gapX2),
            Padding(
                padding: const EdgeInsets.only(left: Dimens.gapX4),
                child: Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 3,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.septumList.length,
                      (i) => CommonCheckBox(
                        name: controller.septumList[i],
                        isSelected: controller.septumList[i] ==
                            controller.selectedSeptum.value,
                        onTap: () => controller.onSelectSeptum(
                            name: controller.septumList[i]),
                      ),
                    ),
                  ),
                )),
            const SizedBox(height: Dimens.gapX2),
            const Text(
              "Sinuses",
              style: AppStyles.tsBlackSemi20,
            ),
            const SizedBox(height: Dimens.gapX2),
            Padding(
                padding: const EdgeInsets.only(left: Dimens.gapX4),
                child: Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 3,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.sinusesList.length,
                      (i) => CommonCheckBox(
                        name: controller.sinusesList[i],
                        isSelected: controller.sinusesList[i] ==
                            controller.selectedSinuses.value,
                        onTap: () => controller.onSelectSinuses(
                            name: controller.sinusesList[i]),
                      ),
                    ),
                  ),
                )),
          ]);
  }
}
