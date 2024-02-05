import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/modules/station_F/tabs/head/parasites_view.dart';
import 'package:nivish/widgets/common_text.dart';
import '../../../../../widgets/Age_Gender_validations.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../../widgets/common_input_field.dart';
import '../../../../data/values/dimens.dart';
import '../../../../data/values/images.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/app_styles.dart';
import '../../controllers/station_f_controller.dart';
import 'hair_appearance_view.dart';

class StationFSkullView extends GetView<StationFController> {
  const StationFSkullView({Key? key}) : super(key: key);

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
                      text: "Head",
                    ),
                    Expanded(
                      child: Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset(
                            AppImages.skull,
                            width: Dimens.screenWidthX7,
                          )),
                    )
                  ],
                ),
                const Text(
                  "Skull",
                  style: AppStyles.tsBlackSemi20,
                ),
                if (StudentInfo.calculateAge() < 5)
                  const SizedBox(
                    height: Dimens.gapX2,
                  ),
                if (StudentInfo.calculateAge() < 5)
                  const Text(
                    "Fontanelle",
                    style: AppStyles.tsBlackSemi20,
                  ),
                if (StudentInfo.calculateAge() < 5)
                  const SizedBox(
                    height: Dimens.gapX2,
                  ),
                Row(
                  children: [
                    if (StudentInfo.calculateAge() < 5)
                      Obx(() => CommonCheckBox(
                          textStyle: AppStyles.tsBlackMedium20,
                          name: "Closed",
                          isSelected: controller.isCloseSkull.value,
                          onTap: () {
                            controller.onCheckedCloseSkull();
                            controller.selectedSkullFontanella.clear();
                            controller.selectedFrontalFontanella.clear();
                            controller.selectedOccipitalFontanella.clear();
                          })),
                    const SizedBox(
                      width: Dimens.gapX5,
                    ),
                    if (StudentInfo.calculateAge() < 5)
                      Obx(() => CommonCheckBox(
                            textStyle: AppStyles.tsBlackMedium20,
                            name: "Open",
                            isSelected: !controller.isCloseSkull.value,
                            onTap: () => controller.onCheckedCloseSkull(),
                          )),
                  ],
                ),
                const SizedBox(height: Dimens.gapX2),
                if (StudentInfo.calculateAge() < 5)
                  Obx(
                    () => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        controller.skullFontanellaList.length,
                        (i) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonCheckBox(
                                isActive: !controller.isCloseSkull.value,
                                checkedIcon: Icons.check_box,
                                unCheckedIcon: Icons.check_box_outline_blank,
                                onTap: () {
                                  if (controller.selectedSkullFontanella
                                      .contains(
                                          controller.skullFontanellaList[i])) {
                                    controller.selectedSkullFontanella.remove(
                                        controller.skullFontanellaList[i]);
                                  } else {
                                    controller.selectedSkullFontanella
                                        .add(controller.skullFontanellaList[i]);
                                  }
                                },
                                isSelected: controller.selectedSkullFontanella
                                    .contains(
                                        controller.skullFontanellaList[i]),
                                name: controller.skullFontanellaList[i],
                              ).paddingOnly(bottom: Dimens.gapX1),
                              Visibility(
                                  visible: controller.selectedSkullFontanella
                                          .contains('Frontal Fontanella') &&
                                      controller.skullFontanellaList[i] ==
                                          'Frontal Fontanella' &&
                                      !controller.isCloseSkull.value,
                                  child: Obx(() => Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: List.generate(
                                          controller
                                              .frontalOccipitalFontanellaList
                                              .length, (i) {
                                        return Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CommonCheckBox(
                                                checkedIcon: Icons.check_box,
                                                unCheckedIcon: Icons
                                                    .check_box_outline_blank,
                                                onTap: () {
                                                  if (controller
                                                      .selectedFrontalFontanella
                                                      .contains(controller
                                                              .frontalOccipitalFontanellaList[
                                                          i])) {
                                                    controller
                                                        .selectedFrontalFontanella
                                                        .remove(controller
                                                            .frontalOccipitalFontanellaList[i]);
                                                  } else {
                                                    controller
                                                        .selectedFrontalFontanella
                                                        .add(controller
                                                            .frontalOccipitalFontanellaList[i]);
                                                  }
                                                },
                                                isSelected: controller
                                                    .selectedFrontalFontanella
                                                    .contains(controller
                                                        .frontalOccipitalFontanellaList[i]),
                                                name: controller
                                                    .frontalOccipitalFontanellaList[i],
                                              ).paddingOnly(
                                                  bottom: Dimens.gapX1,
                                                  left: Dimens.gapX3),
                                            ]);
                                      })))),
                              Visibility(
                                  visible: controller.selectedSkullFontanella
                                          .contains('Occipital Fontanella') &&
                                      controller.skullFontanellaList[i] ==
                                          'Occipital Fontanella' &&
                                      !controller.isCloseSkull.value,
                                  child: Obx(() => Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: List.generate(
                                          controller
                                              .frontalOccipitalFontanellaList
                                              .length, (i) {
                                        return Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CommonCheckBox(
                                                checkedIcon: Icons.check_box,
                                                unCheckedIcon: Icons
                                                    .check_box_outline_blank,
                                                onTap: () {
                                                  if (controller
                                                      .selectedOccipitalFontanella
                                                      .contains(controller
                                                              .frontalOccipitalFontanellaList[
                                                          i])) {
                                                    controller
                                                        .selectedOccipitalFontanella
                                                        .remove(controller
                                                            .frontalOccipitalFontanellaList[i]);
                                                  } else {
                                                    controller
                                                        .selectedOccipitalFontanella
                                                        .add(controller
                                                            .frontalOccipitalFontanellaList[i]);
                                                  }
                                                },
                                                isSelected: controller
                                                    .selectedOccipitalFontanella
                                                    .contains(controller
                                                        .frontalOccipitalFontanellaList[i]),
                                                name: controller
                                                    .frontalOccipitalFontanellaList[i],
                                              ).paddingOnly(
                                                  bottom: Dimens.gapX1,
                                                  left: Dimens.gapX3),
                                            ]);
                                      })))),
                            ],
                          );
                        },
                      ),
                    ).paddingOnly(left: Dimens.gapX3),
                  ),
                const SizedBox(
                  height: Dimens.gapX2,
                ),
                const Text(
                  "Appearance & Size",
                  style: AppStyles.tsBlackSemi20,
                ),
                const SizedBox(
                  height: Dimens.gapX1_5,
                ),
                Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.appearanceSizeList.length,
                      (i) => CommonCheckBox(
                        name: controller.appearanceSizeList[i],
                        isSelected: controller.appearanceSizeList[i] ==
                            controller.selectedAppearanceSize.value,
                        onTap: () => controller.onSelectAppearanceSize(
                            name: controller.appearanceSizeList[i]),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: Dimens.gapX1),
                Obx(
                  () => Row(
                    children: [
                      CommonCheckBox(
                          name: 'Other',
                          isSelected: controller.selectedAppearanceSize.value ==
                              'Other',
                          onTap: () {
                            controller.selectedAppearanceSize.value = 'Other';
                            controller.appearanceSizeList.refresh();
                          }),
                      const SizedBox(width: Dimens.gapX2),
                      Expanded(
                          child: CommonInputField(
                        isEnabled:
                            controller.selectedAppearanceSize.value == 'Other',
                            hintText: "Type here",
                            wrapper: controller.otherAppearanceSizeWrapper,
                      )),
                    ],
                  ),
                ),
                const SizedBox(height: Dimens.gapX2),
                const StationFHeadAppearanceView(),
                const SizedBox(height: Dimens.gapX2),
                const StationFParasitesView()
              ],
            ).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
