import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/modules/station_E/tabs/upper_limb_left/station_E_deep_tendon_reflexes_left_view.dart';
import 'package:nivish/app/modules/station_E/tabs/upper_limb_left/station_E_sensory_function_left_view.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/common_text.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_colors.dart';
import '../../controllers/station_e_controller.dart';
import 'package:flutter_svg/svg.dart';

import 'station_E_range_of Movement_left_view.dart';

class StationEUpperLimbLeftView extends GetView<StationEController> {
  const StationEUpperLimbLeftView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(blurRadius: 15, color: AppColors.greyColor)
            ]),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const CommonText(text: "Upper Limb - Left"),
              const SizedBox(
                height: Dimens.gapX3,
              ),
              Row(
                children: [
                  const Text(
                    "Appearance",
                    style: AppStyles.tsBlackSemi20,
                  ),
                  Expanded(
                      child: Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset(
                      AppImages.upperLimbLeft,
                      width: Dimens.screenWidthX15,
                    ),
                  )),
                ],
              ),
              const SizedBox(height: Dimens.gapX2),
              Row(
                children: [
                  Obx(() => CommonCheckBox(
                        name: "Normal",
                        textStyle: AppStyles.tsBlackMedium20,
                        isSelected:
                            controller.upperLimbAppearanceLeftNormal.value,
                        onTap: () {
                            controller.onCheckedUpperLimbAppearanceLeftNormal();
                            controller.selectedUpperLimbAppearanceLeft.clear();
                        }
                      )),
                  const SizedBox(width: Dimens.gapX3),
                  Obx(() => CommonCheckBox(
                        name: "Abnormal",
                        textStyle: AppStyles.tsBlackMedium20,
                        isSelected:
                            !controller.upperLimbAppearanceLeftNormal.value,
                        onTap: () =>
                            controller.onCheckedUpperLimbAppearanceLeftNormal(),
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
                            controller.upperLimbAppearanceLeftListName.length,
                                (i) => CommonCheckBox(
                                  checkedIcon: Icons.check_box,
                                  unCheckedIcon: Icons.check_box_outline_blank,
                              isActive:
                              !controller.upperLimbAppearanceLeftNormal.value,
                              name: controller
                                  .upperLimbAppearanceLeftListName.values
                                  .elementAt(i),
                              isSelected: controller.selectedUpperLimbAppearanceLeft.contains(
                                  controller.upperLimbAppearanceLeftListName.keys
                                      .elementAt(i)),
                              onTap: () =>
                                  controller.onSelectUpperLimbAppearanceLeft(idx: i),
                            ),
                          ),
                        ),
                      )),
              const SizedBox(height: Dimens.gapX3),
              const Text(
                "Motor Function",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(height: Dimens.gapX1),
              const Text(
                "Tone",
                style: AppStyles.tsBlackMedium20,
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
                        controller.upperLimbMotorFunctionLeftList.length,
                        (i) => CommonCheckBox(
                          name: controller.upperLimbMotorFunctionLeftList[i],
                          isSelected:
                              controller.upperLimbMotorFunctionLeftList[i] ==
                                  controller
                                      .selectedUpperLimbMotorFunctionLeft.value,
                          onTap: () =>
                              controller.onSelectUpperLimbMotorFunctionLeft(
                                  name: controller
                                      .upperLimbMotorFunctionLeftList[i]),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(height: Dimens.gapX2),
              const StationERangeOfMovementLeftView(),
              const SizedBox(height: Dimens.gapX2),
              const StationEDeepTendonReFlexesLeftView(),
              const SizedBox(height: Dimens.gapX2),
              const StationESensoryFunctionLeftView()
            ]).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
