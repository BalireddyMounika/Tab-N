import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/modules/station_E/tabs/upper_limb_right/station_E_deep_tendon_reflexes_view.dart';
import 'package:nivish/app/modules/station_E/tabs/upper_limb_right/station_E_range_of%20Movement_view.dart';
import 'package:nivish/app/modules/station_E/tabs/upper_limb_right/station_E_sensory_function_view.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/common_text.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_colors.dart';
import '../../controllers/station_e_controller.dart';
import 'package:flutter_svg/svg.dart';

class StationEUpperLimbRightView extends GetView<StationEController> {
  const StationEUpperLimbRightView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(blurRadius: 15, color: AppColors.greyColor)
            ]),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const CommonText(text: "Upper Limb - Right"),
              const SizedBox(
                height: Dimens.gapX3,
              ),
              Row(
                children: [
                  const Text(
                    " Appearance",
                    style: AppStyles.tsBlackSemi20,
                  ),
                  Expanded(
                      child: Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset(
                      AppImages.upperLimbRight,
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
                          controller.upperLimbAppearanceRightNormal.value,
                      onTap: () {
                        controller.onCheckedUpperLimbAppearanceRightNormal();
                        controller.selectedUpperLimbAppearanceRight.clear();
                      })),
                  const SizedBox(width: Dimens.gapX3),
                  Obx(() => CommonCheckBox(
                        name: "Abnormal",
                        textStyle: AppStyles.tsBlackMedium20,
                        isSelected:
                            !controller.upperLimbAppearanceRightNormal.value,
                        onTap: () => controller
                            .onCheckedUpperLimbAppearanceRightNormal(),
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
                        controller.upperLimbAppearanceRightListName.length,
                        (i) => CommonCheckBox(
                          checkedIcon: Icons.check_box,
                          unCheckedIcon: Icons.check_box_outline_blank,
                          isActive:
                              !controller.upperLimbAppearanceRightNormal.value,
                          name: controller
                              .upperLimbAppearanceRightListName.values
                              .elementAt(i),
                          isSelected: controller
                              .selectedUpperLimbAppearanceRight
                              .contains(controller
                                  .upperLimbAppearanceRightListName.keys
                                  .elementAt(i)),
                          onTap: () => controller
                              .onSelectUpperLimbAppearanceRight(idx: i),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(height: Dimens.gapX3),
              const Text(
                " Motor Function",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(height: Dimens.gapX1),
              const Text(
                " Tone",
                style: AppStyles.tsBlackMedium20,
              ),
              const SizedBox(height: Dimens.gapX1),
              Padding(
                  padding: const EdgeInsets.only(left: Dimens.gapX3),
                  child: Obx(
                    () => StaggeredGrid.count(
                      crossAxisCount: Get.width < 600 ? 1 : 1,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 12,
                      children: List.generate(
                        controller.upperLimbMotorFunctionRightList.length,
                        (i) => CommonCheckBox(
                          name: controller.upperLimbMotorFunctionRightList[i],
                          isSelected:
                              controller.upperLimbMotorFunctionRightList[i] ==
                                  controller.selectedUpperLimbMotorFunctionRight
                                      .value,
                          onTap: () =>
                              controller.onSelectUpperLimbMotorFunctionRight(
                                  name: controller
                                      .upperLimbMotorFunctionRightList[i]),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(height: Dimens.gapX2),
              const StationERangeOfMovementView(),
              const SizedBox(height: Dimens.gapX2),
              const StationEDeepTendonReFlexesView(),
              const SizedBox(height: Dimens.gapX2),
              const StationESensoryFunctionView()
            ]).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
