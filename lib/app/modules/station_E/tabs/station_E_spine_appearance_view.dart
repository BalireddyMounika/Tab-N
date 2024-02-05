import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../widgets/common_check_box.dart';
import '../../../../widgets/common_input_field.dart';
import '../../../../widgets/common_text.dart';
import '../../../data/values/dimens.dart';
import '../../../data/values/images.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_styles.dart';
import '../controllers/station_e_controller.dart';

class StationESpineAppearanceView extends GetView<StationEController> {
  const StationESpineAppearanceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(blurRadius: 15, color: AppColors.greyColor)
            ]),
            child: Column(children: [
              Row(
                children: [
                  const CommonText(
                    text: "Spine Appearance",
                  ),
                  Expanded(
                    child: Align(
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset(
                          AppImages.spine,
                          width: Dimens.screenWidthX20,
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Obx(() => CommonCheckBox(
                        name: "Normal",
                        textStyle: AppStyles.tsBlackMedium20,
                        isSelected: controller.spineNormal.value,
                        onTap: () => controller.onCheckedSpineNormal(),
                      )),
                  const SizedBox(
                    width: Dimens.gapX4,
                  ),
                  Obx(() => CommonCheckBox(
                        name: "Abnormal",
                        textStyle: AppStyles.tsBlackMedium20,
                        isSelected: !controller.spineNormal.value,
                        onTap: () => controller.onCheckedSpineNormal(),
                      )),
                ],
              ),
              const SizedBox(height: Dimens.gapX2),
              Padding(
                  padding: EdgeInsets.only(left: Dimens.gapX2),
                  child: Obx(
                    () => StaggeredGrid.count(
                      crossAxisCount: Get.width < 600 ? 1 : 2,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 12,
                      children: List.generate(
                        controller.spineAppearanceList.length,
                        (i) => CommonCheckBox(
                          isActive: !controller.spineNormal.value,
                          name: controller.spineAppearanceList[i],
                          isSelected: controller.spineAppearanceList[i] ==
                              controller.selectedSpineAppearance.value,
                          onTap: () => controller.onSelectSpineAppearance(
                              name: controller.spineAppearanceList[i]),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              Padding(
                  padding: EdgeInsets.only(left: Dimens.gapX2),
                  child: Obx(
                    () => Row(
                      children: [
                        CommonCheckBox(
                            isActive: !controller.spineNormal.value,
                            name: 'Other',
                            isSelected:
                                controller.selectedSpineAppearance.value ==
                                    'Other',
                            onTap: () {
                              controller.selectedSpineAppearance.value =
                                  'Other';
                              controller.spineAppearanceList.refresh();
                            }),
                        const SizedBox(width: Dimens.gapX2),
                        Expanded(
                            child: CommonInputField(
                          isEnabled: controller.selectedSpineAppearance.value ==
                                  'Other' &&
                              !controller.spineNormal.value,
                          wrapper: controller.otherSpineTextField,
                          hintText: 'Type here',
                        )),
                      ],
                    ),
                  )),
              const SizedBox(height: Dimens.gapX3),
              Row(
                children: [
                  const CommonText(
                    text: "Shoulder Griddle Appearance",
                  ),
                  Expanded(
                    child: Align(
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset(
                          AppImages.shoulder,
                          width: Dimens.screenWidthX15,
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Obx(() => CommonCheckBox(
                      name: "Normal",
                      textStyle: AppStyles.tsBlackMedium20,
                      isSelected: controller.shoulderNormal.value,
                      onTap: () {
                        controller.onCheckedShoulderNormal();
                        controller.selectedShoulderAppearance.clear();
                        controller.otherShoulderTextField.controller.text = '';
                      })),
                  const SizedBox(
                    width: Dimens.gapX4,
                  ),
                  Obx(() => CommonCheckBox(
                        name: "Abnormal",
                        textStyle: AppStyles.tsBlackMedium20,
                        isSelected: !controller.shoulderNormal.value,
                        onTap: () => controller.onCheckedShoulderNormal(),
                      )),
                ],
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
                        controller.shoulderAppearanceListName.length,
                        (i) => CommonCheckBox(
                          checkedIcon: Icons.check_box,
                          unCheckedIcon: Icons.check_box_outline_blank,
                          isActive: !controller.shoulderNormal.value,
                          name: controller.shoulderAppearanceListName.values
                              .elementAt(i),
                          isSelected: controller.selectedShoulderAppearance
                              .contains(controller
                                  .shoulderAppearanceListName.keys
                                  .elementAt(i)),
                          onTap: () =>
                              controller.onSelectShoulderAppearance(idx: i),
                        ),
                      ),
                    ),
                  )),
              Obx(
                () => Visibility(
                  visible:
                      controller.selectedShoulderAppearance.contains('Other'),
                  child: SizedBox(
                    width: 400,
                    child: CommonInputField(
                      wrapper: controller.otherShoulderTextField,
                      hintText: 'Type here',
                    ).paddingSymmetric(horizontal: Dimens.gapX4),
                  ),
                ),
              ),
            ]).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
