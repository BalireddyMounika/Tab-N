import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/modules/station_E/tabs/lower_limb_left/station_E_range_of%20Movement_view_lower_left.dart';
import 'package:nivish/app/modules/station_E/tabs/lower_limb_left/station_E_sensory_function_view_lower_left.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/common_text.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_colors.dart';
import '../../controllers/station_e_controller.dart';
import 'package:flutter_svg/svg.dart';

import 'station_E_deep_tendon_reflexes_view_lower_left.dart';

class StationELowerLimbLeftView extends GetView<StationEController> {
  const StationELowerLimbLeftView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(blurRadius: 15, color: AppColors.greyColor)
            ]),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const CommonText(text: "Lower Limb - Left"),
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
                      AppImages.lowerLimbLeft,
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
                            controller.lowerLimbAppearanceLeftNormal.value,
                        onTap: () {
                          controller.onCheckedLowerLimbAppearanceLeftNormal();
                          controller.selectedLowerLimbAppearanceLeft.clear();
                        }
                            )),
                  const SizedBox(width: Dimens.gapX3),
                  Obx(() => CommonCheckBox(
                        name: "Abnormal",
                        textStyle: AppStyles.tsBlackMedium20,
                        isSelected:
                            !controller.lowerLimbAppearanceLeftNormal.value,
                        onTap: () =>
                            controller.onCheckedLowerLimbAppearanceLeftNormal(),
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
                        controller.lowerLimbAppearanceLeftList.length,
                        (i) => CommonCheckBox(
                          checkedIcon: Icons.check_box,
                          unCheckedIcon: Icons.check_box_outline_blank,
                          isActive:
                              !controller.lowerLimbAppearanceLeftNormal.value,
                          name: controller.lowerLimbAppearanceLeftList.values
                              .elementAt(i),
                          isSelected: controller.selectedLowerLimbAppearanceLeft
                              .contains(controller
                                  .lowerLimbAppearanceLeftList.keys
                                  .elementAt(i)),
                          onTap: () => controller
                              .onSelectLowerLimbAppearanceLeft(idx: i),
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
                  padding: EdgeInsets.only(left: Dimens.gapX3),
                  child: Obx(
                    () => StaggeredGrid.count(
                      crossAxisCount: Get.width < 600 ? 1 : 1,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 12,
                      children: List.generate(
                        controller.lowerLimbMotorFunctionLeftList.length,
                        (i) => CommonCheckBox(
                          name: controller.lowerLimbMotorFunctionLeftList[i],
                          isSelected:
                              controller.lowerLimbMotorFunctionLeftList[i] ==
                                  controller
                                      .selectedLowerLimbMotorFunctionLeft.value,
                          onTap: () =>
                              controller.onSelectLowerLimbMotorFunctionLeft(
                                  name: controller
                                      .lowerLimbMotorFunctionLeftList[i]),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(height: Dimens.gapX2),
              const StationERangeOfMovementLowerLimbLeftView(),
              const SizedBox(height: Dimens.gapX2),
              const StationEDeepTendonReFlexesLowerLimbLeftView(),
              const SizedBox(height: Dimens.gapX2),
              const StationESensoryFunctionLowerLimbLeftView(),
            ]).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
