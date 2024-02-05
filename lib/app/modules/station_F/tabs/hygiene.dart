import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../data/values/dimens.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_styles.dart';
import '../controllers/station_f_controller.dart';

class StationFHygieneView extends GetView<StationFController> {
  const StationFHygieneView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(blurRadius: 15, color: AppColors.greyColor)
            ]),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Hygiene",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(height: Dimens.gapX2),
              const Text(
                "Nails",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(height: Dimens.gapX2),
              Obx(
                () => StaggeredGrid.count(
                  crossAxisCount: Get.width < 600 ? 1 : 2,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 12,
                  children: List.generate(
                    controller.nailsList.length,
                    (i) => CommonCheckBox(
                      name: controller.nailsList[i],
                      isSelected: controller.nailsList[i] ==
                          controller.selectedNails.value,
                      onTap: () => controller.onSelectNails(
                          name: controller.nailsList[i]),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: Dimens.gapX2),
              const Text(
                "Hair",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(height: Dimens.gapX2),
              Obx(
                () => StaggeredGrid.count(
                  crossAxisCount: Get.width < 600 ? 1 : 2,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 12,
                  children: List.generate(
                    controller.hairList.length,
                    (i) => CommonCheckBox(
                      name: controller.hairList[i],
                      isSelected: controller.hairList[i] ==
                          controller.selectedHair.value,
                      onTap: () =>
                          controller.onSelectHair(name: controller.hairList[i]),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: Dimens.gapX2),
              const Text(
                "Skin",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(height: Dimens.gapX2),
              Obx(
                () => StaggeredGrid.count(
                  crossAxisCount: Get.width < 600 ? 1 : 2,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 12,
                  children: List.generate(
                    controller.skinList.length,
                    (i) => CommonCheckBox(
                      name: controller.skinList[i],
                      isSelected: controller.skinList[i] ==
                          controller.selectedSkin.value,
                      onTap: () =>
                          controller.onSelectSkin(name: controller.skinList[i]),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: Dimens.gapX2),
              const Text(
                "Odour",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(height: Dimens.gapX2),
              Obx(
                () => StaggeredGrid.count(
                  crossAxisCount: Get.width < 600 ? 1 : 2,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 12,
                  children: List.generate(
                    controller.odourList.length,
                    (i) => CommonCheckBox(
                      name: controller.odourList[i],
                      isSelected: controller.odourList[i] ==
                          controller.selectedOdour.value,
                      onTap: () => controller.onSelectOdour(
                          name: controller.odourList[i]),
                    ),
                  ),
                ),
              ),
            ]).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
