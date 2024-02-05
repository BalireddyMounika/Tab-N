import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/app_string.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/common_check_box.dart';
import 'package:nivish/widgets/common_input_field.dart';
import '../../../../widgets/toggle/common_switch.dart';
import '../../../data/values/dimens.dart';
import '../controllers/station_b_controller.dart';

class StationBOtherObservationsView extends GetView<StationBController> {
  const StationBOtherObservationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColors.white,
          boxShadow: [BoxShadow(blurRadius: 15, color: AppColors.greyColor)]),
      child: Get.width < 600
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  AppStrings.otherObservations,
                  style: AppStyles.tsBlackSemi20,
                ),
                const SizedBox(height: Dimens.gapX1),
                Align(
                    alignment: Alignment.centerLeft,
                    child: CommonInputField(
                      maxLine: 2,
                      wrapper: controller.otherObservations,
                      hintText: "Type here",
                    )),
                const SizedBox(height: Dimens.gapX3),
                Row(
                  children: [
                    const Expanded(
                        child: Text(
                      "Specialist Referral Recommended",
                      style: AppStyles.tsBlackSemiMedium16,
                    )),
                    Expanded(
                        child: CommonSwitch(
                      onTap: (value) {
                        controller.isSpecialistReferralNeeded.value = value;
                        controller.selectedReferralType.clear();
                        controller.otherWrapper.controller.clear();
                        controller.selectedReFlag.value = '';
                      },
                      initialSwitchValue:
                          controller.isSpecialistReferralNeeded.value,
                    ))
                  ],
                ),
                const SizedBox(height: Dimens.gapX1),
                Obx(() => Visibility(
                    visible: controller.isSpecialistReferralNeeded.value,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Type",
                          style: AppStyles.tsBlackMedium19,
                        ),
                        const SizedBox(height: Dimens.gapX1),

                        ///

                        Obx(
                          () => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                              controller.referralTypeList.length,
                              (i) => CommonCheckBox(
                                isActive:
                                    controller.isSpecialistReferralNeeded.value,
                                checkedIcon: Icons.check_box,
                                unCheckedIcon: Icons.check_box_outline_blank,
                                onTap: () {
                                  if (controller.selectedReferralType.contains(
                                      controller.referralTypeList[i])) {
                                    controller.selectedReferralType
                                        .remove(controller.referralTypeList[i]);
                                  } else {
                                    controller.selectedReferralType
                                        .add(controller.referralTypeList[i]);
                                  }
                                },
                                isSelected: controller.selectedReferralType
                                    .contains(controller.referralTypeList[i]),
                                name: controller.referralTypeList[i],
                              ).paddingOnly(bottom: Dimens.gapX1),
                            ),
                          ).paddingSymmetric(horizontal: Dimens.gapX2),
                        ),
                        Obx(
                          () => Visibility(
                            visible: controller.selectedReferralType
                                .contains('Other'),
                            child: SizedBox(
                              width: 400,
                              child: CommonInputField(
                                  hintText: "Type here",
                                  wrapper: controller.otherWrapper)
                                  .paddingSymmetric(horizontal: Dimens.gapX4),
                            ),
                          ),
                        ),

                        ///
                        const SizedBox(height: Dimens.gapX2),
                        const Text(
                          "Flag",
                          style: AppStyles.tsBlackMedium19,
                        ),
                        const SizedBox(height: Dimens.gapX2),
                        Obx(
                          () => StaggeredGrid.count(
                            crossAxisCount: Get.width < 600 ? 1 : 3,
                            mainAxisSpacing: 24,
                            crossAxisSpacing: 12,
                            children: List.generate(
                              controller.referralFlagList.length,
                              (i) => CommonCheckBox(
                                isActive:
                                    controller.isSpecialistReferralNeeded.value,
                                name: controller.referralFlagList[i],
                                isSelected: controller.referralFlagList[i] ==
                                    controller.selectedReFlag.value,
                                onTap: () => controller.onSelectReferralFlag(
                                    name: controller.referralFlagList[i]),
                              ),
                            ),
                          ).paddingSymmetric(horizontal: Dimens.gapX2),
                        ),
                      ],
                    ))),
              ],
            ).paddingAll(Dimens.gapX4)
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  AppStrings.otherObservations,
                  style: AppStyles.tsBlackSemi20,
                ),
                const SizedBox(height: Dimens.gapX1),
                Align(
                    alignment: Alignment.centerLeft,
                    child: CommonInputField(
                      maxLine: 2,
                      wrapper: controller.otherObservations,
                      hintText: "Type here",
                    )),
                const SizedBox(height: Dimens.gapX3),
                Row(
                  children: [
                    const Text(
                      "Specialist Referral Recommended",
                      style: AppStyles.tsBlackSemi20,
                    ),
                    const SizedBox(width: Dimens.gapX2),
                    CommonSwitch(
                      onTap: (value) {
                        controller.isSpecialistReferralNeeded.value = value;
                        controller.selectedReferralType.clear();
                        controller.selectedReFlag.value = '';
                        controller.otherWrapper.controller.clear();
                      },
                      initialSwitchValue:
                          controller.isSpecialistReferralNeeded.value,
                    )
                  ],
                ),
                const SizedBox(height: Dimens.gapX1),
                Obx(() => Visibility(
                    visible: controller.isSpecialistReferralNeeded.value,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Type",
                          style: AppStyles.tsBlackMedium19,
                        ),
                        const SizedBox(height: Dimens.gapX1),

                        ///

                        Obx(
                          () => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                              controller.referralTypeList.length,
                              (i) => CommonCheckBox(
                                isActive:
                                    controller.isSpecialistReferralNeeded.value,
                                checkedIcon: Icons.check_box,
                                unCheckedIcon: Icons.check_box_outline_blank,
                                onTap: () {
                                  if (controller.selectedReferralType.contains(
                                      controller.referralTypeList[i])) {
                                    controller.selectedReferralType
                                        .remove(controller.referralTypeList[i]);
                                  } else {
                                    controller.selectedReferralType
                                        .add(controller.referralTypeList[i]);
                                  }
                                },
                                isSelected: controller.selectedReferralType
                                    .contains(controller.referralTypeList[i]),
                                name: controller.referralTypeList[i],
                              ).paddingOnly(bottom: Dimens.gapX1),
                            ),
                          ).paddingSymmetric(horizontal: Dimens.gapX2),
                        ),
                        Obx(
                          () => Visibility(
                            visible: controller.selectedReferralType
                                .contains('Other'),
                            child: SizedBox(
                              width: 400,
                              child: CommonInputField(
                                  hintText: "Type here",
                                  wrapper: controller.otherWrapper)
                                  .paddingSymmetric(horizontal: Dimens.gapX4),
                            ),
                          ),
                        ),

                        ///
                        const SizedBox(height: Dimens.gapX2),
                        const Text(
                          "Flag",
                          style: AppStyles.tsBlackMedium19,
                        ),
                        const SizedBox(height: Dimens.gapX2),
                        Obx(
                          () => StaggeredGrid.count(
                            crossAxisCount: Get.width < 600 ? 1 : 3,
                            mainAxisSpacing: 24,
                            crossAxisSpacing: 12,
                            children: List.generate(
                              controller.referralFlagList.length,
                              (i) => CommonCheckBox(
                                isActive:
                                    controller.isSpecialistReferralNeeded.value,
                                name: controller.referralFlagList[i],
                                isSelected: controller.referralFlagList[i] ==
                                    controller.selectedReFlag.value,
                                onTap: () => controller.onSelectReferralFlag(
                                    name: controller.referralFlagList[i]),
                              ),
                            ),
                          ).paddingSymmetric(horizontal: Dimens.gapX2),
                        ),
                      ],
                    ))),
              ],
            ).paddingAll(Dimens.gapX4),
    ).paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
