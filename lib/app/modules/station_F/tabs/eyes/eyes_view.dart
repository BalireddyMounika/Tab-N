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
import 'eyelid_view.dart';

class StationFEyesView extends GetView<StationFController> {
  const StationFEyesView({Key? key}) : super(key: key);

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
                      text: "Eyes",
                    ),
                    Expanded(
                      child: Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset(
                            AppImages.eyes,
                            width: Dimens.screenWidthXSixth,
                          )),
                    )
                  ],
                ),
                const SizedBox(
                  height: Dimens.gapX2,
                ),
                const Text(
                  "Conjuctiva",
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
                      controller.conjuctivaList.length,
                      (i) => CommonCheckBox(
                        name: controller.conjuctivaList[i],
                        isSelected: controller.conjuctivaList[i] ==
                            controller.selectedConjuctiva.value,
                        onTap: () => controller.onSelectConjuctiva(
                            name: controller.conjuctivaList[i]),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: Dimens.gapX2),
                const Text(
                  "Sclera",
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
                      controller.scleraList.length,
                      (i) => CommonCheckBox(
                        name: controller.scleraList[i],
                        isSelected: controller.scleraList[i] ==
                            controller.selectedSclera.value,
                        onTap: () => controller.onSelectSclera(
                            name: controller.scleraList[i]),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: Dimens.gapX2),
                const StationFEyeLidView()
              ],
            ).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
