import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_H/controllers/station_h_controller.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/common_check_box.dart';
import 'package:nivish/widgets/common_input_field.dart';
import 'package:nivish/widgets/text/common_text.dart';
import 'package:nivish/widgets/toggle/common_switch.dart';

class AdditionalSpecialistReferralNeeded extends GetView<StationHController> {
  const AdditionalSpecialistReferralNeeded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(blurRadius: 15, color: AppColors.greyColor),
        ],
      ),
      child: Get.width < 600
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: subHeading(
                          text: 'Additional Specialist Referral Needed'),
                    ),
                    Dimens.widthGap1,
                    CommonSwitch(
                      onTap: (value) {
                        controller.isAdditionalSpecialistReferralNeeded.value =
                            value;
                        controller.selectedAdditionalSpecialistReferralTypeList
                            .clear();
                        controller.selectedAdditionalSpecialistFlag.value = '';
                        controller
                            .otherAdditionalSpecialistReferralType.controller
                            .clear();
                      },
                      initialSwitchValue:
                          controller.isAdditionalSpecialistReferralNeeded.value,
                    ),
                  ],
                ),
                const SizedBox(height: Dimens.gapX2),
                Obx(() => Visibility(
                    visible:
                        controller.isAdditionalSpecialistReferralNeeded.value,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        subHeading(text: 'Type'),
                        const SizedBox(height: Dimens.gapX2),
                        Obx(
                          () => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                              controller
                                  .additionalSpecialistReferralType.length,
                              (i) => CommonCheckBox(
                                isActive: controller
                                    .isAdditionalSpecialistReferralNeeded.value,
                                checkedIcon: Icons.check_box,
                                unCheckedIcon: Icons.check_box_outline_blank,
                                onTap: () {
                                  if (controller
                                      .selectedAdditionalSpecialistReferralTypeList
                                      .contains(controller
                                              .additionalSpecialistReferralType[
                                          i])) {
                                    controller
                                        .selectedAdditionalSpecialistReferralTypeList
                                        .remove(controller
                                            .additionalSpecialistReferralType[i]);
                                  } else {
                                    controller
                                        .selectedAdditionalSpecialistReferralTypeList
                                        .add(controller
                                            .additionalSpecialistReferralType[i]);
                                  }
                                },
                                isSelected: controller
                                    .selectedAdditionalSpecialistReferralTypeList
                                    .contains(controller
                                        .additionalSpecialistReferralType[i]),
                                name: controller
                                    .additionalSpecialistReferralType[i],
                              ).paddingOnly(bottom: Dimens.gapX1),
                            ),
                          ).paddingSymmetric(horizontal: Dimens.gapX2),
                        ),
                        Obx(
                          () => Visibility(
                            visible: controller
                                .selectedAdditionalSpecialistReferralTypeList
                                .contains('Other'),
                            child: SizedBox(
                              width: 400,
                              child: CommonInputField(
                                      wrapper: controller
                                          .otherAdditionalSpecialistReferralType,
                                      hintText: 'Type here')
                                  .paddingSymmetric(horizontal: Dimens.gapX4),
                            ),
                          ),
                        ),
                        const SizedBox(height: Dimens.gapX4),
                        subHeading(text: 'Flag'),
                        const SizedBox(height: Dimens.gapX2),
                        Obx(
                          () => StaggeredGrid.count(
                            crossAxisCount: Get.width < 600 ? 1 : 3,
                            mainAxisSpacing: 24,
                            crossAxisSpacing: 12,
                            children: List.generate(
                              controller.flagOptions.length,
                              (i) => CommonCheckBox(
                                isActive: controller
                                    .isAdditionalSpecialistReferralNeeded.value,
                                name: controller.flagOptions[i],
                                isSelected: controller.flagOptions[i] ==
                                    controller
                                        .selectedAdditionalSpecialistFlag.value,
                                onTap: () => controller
                                    .selectedAdditionalSpecialistFlag
                                    .value = controller.flagOptions[i],
                              ),
                            ),
                          ).paddingSymmetric(horizontal: Dimens.gapX2),
                        ),
                      ],
                    )))
              ],
            ).paddingAll(Dimens.gapX4)
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Additional Specialist Referral Needed",
                      style: AppStyles.tsBlackMedium19,
                    ),
                    Dimens.widthGap1,
                    CommonSwitch(
                      onTap: (value) {
                        controller.isAdditionalSpecialistReferralNeeded.value =
                            value;
                        controller.selectedAdditionalSpecialistReferralTypeList
                            .clear();
                        controller.otherAdditionalSpecialistReferralType
                            .controller.text = '';
                      },
                      initialSwitchValue:
                          controller.isAdditionalSpecialistReferralNeeded.value,
                    ),
                  ],
                ),
                const SizedBox(height: Dimens.gapX2),
                Obx(() => Visibility(
                    visible:
                        controller.isAdditionalSpecialistReferralNeeded.value,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        subHeading(text: 'Type'),
                        const SizedBox(height: Dimens.gapX2),
                        Obx(
                          () => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                              controller
                                  .additionalSpecialistReferralType.length,
                              (i) => CommonCheckBox(
                                isActive: controller
                                    .isAdditionalSpecialistReferralNeeded.value,
                                checkedIcon: Icons.check_box,
                                unCheckedIcon: Icons.check_box_outline_blank,
                                onTap: () {
                                  if (controller
                                      .selectedAdditionalSpecialistReferralTypeList
                                      .contains(controller
                                              .additionalSpecialistReferralType[
                                          i])) {
                                    controller
                                        .selectedAdditionalSpecialistReferralTypeList
                                        .remove(controller
                                            .additionalSpecialistReferralType[i]);
                                  } else {
                                    controller
                                        .selectedAdditionalSpecialistReferralTypeList
                                        .add(controller
                                            .additionalSpecialistReferralType[i]);
                                  }
                                },
                                isSelected: controller
                                    .selectedAdditionalSpecialistReferralTypeList
                                    .contains(controller
                                        .additionalSpecialistReferralType[i]),
                                name: controller
                                    .additionalSpecialistReferralType[i],
                              ).paddingOnly(bottom: Dimens.gapX1),
                            ),
                          ).paddingSymmetric(horizontal: Dimens.gapX2),
                        ),
                        Obx(
                          () => Visibility(
                            visible: controller
                                .selectedAdditionalSpecialistReferralTypeList
                                .contains('Other'),
                            child: SizedBox(
                              width: 400,
                              child: CommonInputField(
                                      wrapper: controller
                                          .otherAdditionalSpecialistReferralType,
                                      hintText: 'Type here')
                                  .paddingSymmetric(horizontal: Dimens.gapX4),
                            ),
                          ),
                        ),
                        const SizedBox(height: Dimens.gapX4),
                        subHeading(text: 'Flag'),
                        const SizedBox(height: Dimens.gapX2),
                        Obx(
                          () => StaggeredGrid.count(
                            crossAxisCount: Get.width < 600 ? 1 : 3,
                            mainAxisSpacing: 24,
                            crossAxisSpacing: 12,
                            children: List.generate(
                              controller.flagOptions.length,
                              (i) => CommonCheckBox(
                                isActive: controller
                                    .isAdditionalSpecialistReferralNeeded.value,
                                name: controller.flagOptions[i],
                                isSelected: controller.flagOptions[i] ==
                                    controller
                                        .selectedAdditionalSpecialistFlag.value,
                                onTap: () => controller
                                    .selectedAdditionalSpecialistFlag
                                    .value = controller.flagOptions[i],
                              ),
                            ),
                          ).paddingSymmetric(horizontal: Dimens.gapX2),
                        ),
                      ],
                    )))
              ],
            ).paddingAll(Dimens.gapX4),
    ).paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
