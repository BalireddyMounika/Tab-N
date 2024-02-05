import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/widgets/common_text.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../data/values/dimens.dart';
import '../../../../data/values/images.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/app_styles.dart';
import '../../controllers/station_f_controller.dart';
import 'nails_second_view.dart';

class StationFNailsView extends GetView<StationFController> {
  const StationFNailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(blurRadius: 15, color: AppColors.greyColor)
            ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CommonText(
                      text: "Nails",
                    ),
                    Expanded(
                      child: Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset(
                            AppImages.nails,
                            width: Dimens.screenWidthX7,
                          )),
                    )
                  ],
                ),
                const Text(
                  "Color",
                  style: AppStyles.tsBlackSemi20,
                ),
                const SizedBox(
                  height: Dimens.gapX2,
                ),
                Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.nailsColorList.length,
                      (i) => CommonCheckBox(
                        name: controller.nailsColorList[i],
                        isSelected: controller.nailsColorList[i] ==
                            controller.selectedNailsColor.value,
                        onTap: () => controller.onSelectNailsColor(
                            name: controller.nailsColorList[i]),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: Dimens.gapX2,
                ),
                const Text(
                  "Shape",
                  style: AppStyles.tsBlackSemi20,
                ),
                const SizedBox(
                  height: Dimens.gapX2,
                ),
                Row(
                  children: [
                    Obx(() => CommonCheckBox(
                          isSelected: controller.shapeNormal.value,
                          onTap: () => controller.onCheckedShapeNormal(),
                          name: "Normal",
                          textStyle: AppStyles.tsBlackSemi20,
                        )),
                    const SizedBox(
                      width: Dimens.gapX4,
                    ),
                    Obx(() => CommonCheckBox(
                          isSelected: !controller.shapeNormal.value,
                          onTap: () => controller.onCheckedShapeNormal(),
                          name: "Abnormal",
                          textStyle: AppStyles.tsBlackSemi20,
                        ))
                  ],
                ),
                const SizedBox(
                  height: Dimens.gapX1,
                ),
                Obx(() => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                          List.generate(controller.nailsShapeList.length, (i) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonCheckBox(
                                    isActive: !controller.shapeNormal.value,
                                    checkedIcon: Icons.check_box,
                                    unCheckedIcon:
                                        Icons.check_box_outline_blank,
                                    onTap: () {
                                      if (controller.selectedNailsShape
                                          .contains(
                                              controller.nailsShapeList[i])) {
                                        controller.selectedNailsShape.remove(
                                            controller.nailsShapeList[i]);
                                      } else {
                                        controller.selectedNailsShape
                                            .add(controller.nailsShapeList[i]);
                                      }
                                    },
                                    isSelected: controller.selectedNailsShape
                                        .contains(controller.nailsShapeList[i]),
                                    name: controller.nailsShapeList[i])
                                .paddingOnly(bottom: Dimens.gapX1),
                          ],
                        ).paddingOnly(left: Dimens.gapX3);
                      }),
                    )),
                const SizedBox(
                  height: Dimens.gapX1,
                ),
                const StationFNailsSecondView()
              ],
            ).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
