import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/modules/station_H/controllers/station_h_controller.dart';
import 'package:nivish/app/modules/station_H/widget/station_h_option_widget.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/utils/helper/validators.dart';
import 'package:nivish/widgets/common_check_box.dart';
import 'package:nivish/widgets/common_input_field.dart';
import 'package:nivish/widgets/toggle/common_switch.dart';

class TabFour extends GetView<StationHController> {
  const TabFour({Key? key}) : super(key: key);

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
                    const Text(
                      "Soft\nTissue\nPathology",
                      style: AppStyles.tsBlackMedium18,
                    ),
                    CommonSwitch(
                      onTap: (value) {
                        controller.isSoftTissuePathology.value = value;
                        controller.selectedSoftTissuePathology.clear();
                        controller.otherSoftTissuePathology.controller.clear();
                      },
                      initialSwitchValue:
                          controller.isSoftTissuePathology.value,
                    ),
                    Dimens.widthGap2,
                    SvgPicture.asset(
                      AppImages.softTissue,
                      height: Dimens.gapX4,
                      width: Dimens.screenWidthXEight,
                    ),
                  ],
                ),
                Dimens.heightGap2,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          controller.softTissuePathologyOptions.length,
                          (idx) => CommonCheckBox(
                            isActive: controller.isSoftTissuePathology.value,
                            checkedIcon: Icons.check_box,
                            unCheckedIcon: Icons.check_box_outline_blank,
                            onTap: () {
                              if (controller.selectedSoftTissuePathology
                                  .contains(controller
                                      .softTissuePathologyOptions[idx])) {
                                controller.selectedSoftTissuePathology.remove(
                                    controller.softTissuePathologyOptions[idx]);
                              } else {
                                controller.selectedSoftTissuePathology.add(
                                    controller.softTissuePathologyOptions[idx]);
                              }
                            },
                            isSelected: controller.selectedSoftTissuePathology
                                .contains(
                                    controller.softTissuePathologyOptions[idx]),
                            name: controller.softTissuePathologyOptions[idx],
                          ).paddingOnly(bottom: Dimens.gapX1),
                        ),
                      ).paddingSymmetric(horizontal: Dimens.gapX2),
                    ),
                    Obx(
                      () => Visibility(
                        visible: controller.selectedSoftTissuePathology
                            .contains('Other'),
                        child: SizedBox(
                          width: 300,
                          child: Form(
                            key: controller.otherSoftTissuePathologyFormKey,
                            child: CommonInputField(
                                    validator: mandatoryValidator,
                                    wrapper:
                                        controller.otherSoftTissuePathology,
                                    hintText: 'Type here')
                                .paddingSymmetric(horizontal: Dimens.gapX4),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: Dimens.gapX4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(
                        child: Text(
                      "Treatment Needed",
                      style: AppStyles.tsBlackMedium18,
                    )),
                    Dimens.widthGap4,
                    CommonSwitch(
                      onTap: (value) {
                        controller.isTreatmentNeeded.value = value;
                        controller.selectedTreatmentNeeded.clear();
                        controller.otherTreatmentNeeded.controller.clear();
                      },
                      initialSwitchValue: controller.isTreatmentNeeded.value,
                    ),
                    // Spacer(),
                    // SvgPicture.asset(
                    //   AppImages.plaque,
                    //   height: Dimens.gapX6,
                    //   width: Dimens.screenWidthX10,
                    // ),
                  ],
                ),
                Dimens.heightGap2,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          controller.treatmentNeededOptions.length,
                          (idx) => CommonCheckBox(
                            isActive: controller.isTreatmentNeeded.value,
                            checkedIcon: Icons.check_box,
                            unCheckedIcon: Icons.check_box_outline_blank,
                            onTap: () {
                              if (controller.selectedTreatmentNeeded.contains(
                                  controller.treatmentNeededOptions[idx])) {
                                controller.selectedTreatmentNeeded.remove(
                                    controller.treatmentNeededOptions[idx]);
                              } else {
                                controller.selectedTreatmentNeeded.add(
                                    controller.treatmentNeededOptions[idx]);
                              }
                            },
                            isSelected: controller.selectedTreatmentNeeded
                                .contains(
                                    controller.treatmentNeededOptions[idx]),
                            name: controller.treatmentNeededOptions[idx],
                          ).paddingOnly(bottom: Dimens.gapX1),
                        ),
                      ).paddingSymmetric(horizontal: Dimens.gapX2),
                    ),
                    Obx(
                      () => Visibility(
                        visible: controller.selectedTreatmentNeeded
                            .contains('Other'),
                        child: SizedBox(
                          width: 300,
                          child: Form(
                            key: controller.otherTreatmentNeededFormKey,
                            child: CommonInputField(
                                    validator: mandatoryValidator,
                                    wrapper: controller.otherTreatmentNeeded,
                                    hintText: 'Type here')
                                .paddingSymmetric(horizontal: Dimens.gapX4),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: Dimens.gapX4),
                stationHOptionWidget(
                  name: 'Dental Florosis',
                  isOptionOneSelected: controller.isDentalFlorosis,
                  onSelect: (v) {
                    controller.isDentalFlorosis.value = v;
                  },
                ),
              ],
            ).paddingAll(Dimens.gapX4)
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Soft Tissue Pathology",
                      style: AppStyles.tsBlackMedium18,
                    ),
                    Dimens.widthGap4,
                    CommonSwitch(
                      onTap: (value) {
                        controller.isSoftTissuePathology.value = value;
                        controller.selectedSoftTissuePathology.clear();
                        controller.otherSoftTissuePathology.controller.clear();
                      },
                      initialSwitchValue:
                          controller.isSoftTissuePathology.value,
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      AppImages.softTissue,
                      height: Dimens.gapX6,
                      width: Dimens.screenWidthX10,
                    ),
                  ],
                ),
                Dimens.heightGap2,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          controller.softTissuePathologyOptions.length,
                          (idx) => CommonCheckBox(
                            isActive: controller.isSoftTissuePathology.value,
                            checkedIcon: Icons.check_box,
                            unCheckedIcon: Icons.check_box_outline_blank,
                            onTap: () {
                              if (controller.selectedSoftTissuePathology
                                  .contains(controller
                                      .softTissuePathologyOptions[idx])) {
                                controller.selectedSoftTissuePathology.remove(
                                    controller.softTissuePathologyOptions[idx]);
                              } else {
                                controller.selectedSoftTissuePathology.add(
                                    controller.softTissuePathologyOptions[idx]);
                              }
                            },
                            isSelected: controller.selectedSoftTissuePathology
                                .contains(
                                    controller.softTissuePathologyOptions[idx]),
                            name: controller.softTissuePathologyOptions[idx],
                          ).paddingOnly(bottom: Dimens.gapX1),
                        ),
                      ).paddingSymmetric(horizontal: Dimens.gapX2),
                    ),
                    Obx(
                      () => Visibility(
                        visible: controller.selectedSoftTissuePathology
                            .contains('Other'),
                        child: SizedBox(
                          width: 300,
                          child: Form(
                            key: controller.otherSoftTissuePathologyFormKey,
                            child: CommonInputField(
                                    validator: mandatoryValidator,
                                    wrapper:
                                        controller.otherSoftTissuePathology,
                                    hintText: 'Type here')
                                .paddingSymmetric(horizontal: Dimens.gapX4),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: Dimens.gapX4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Treatment Needed",
                      style: AppStyles.tsBlackMedium18,
                    ),
                    Dimens.widthGap4,
                    CommonSwitch(
                      onTap: (value) {
                        controller.isTreatmentNeeded.value = value;
                        controller.selectedTreatmentNeeded.clear();
                        controller.otherTreatmentNeeded.controller.clear();
                      },
                      initialSwitchValue: controller.isTreatmentNeeded.value,
                    ),
                    // Spacer(),
                    // SvgPicture.asset(
                    //   AppImages.plaque,
                    //   height: Dimens.gapX6,
                    //   width: Dimens.screenWidthX10,
                    // ),
                  ],
                ),
                Dimens.heightGap2,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          controller.treatmentNeededOptions.length,
                          (idx) => CommonCheckBox(
                            isActive: controller.isTreatmentNeeded.value,
                            checkedIcon: Icons.check_box,
                            unCheckedIcon: Icons.check_box_outline_blank,
                            onTap: () {
                              if (controller.selectedTreatmentNeeded.contains(
                                  controller.treatmentNeededOptions[idx])) {
                                controller.selectedTreatmentNeeded.remove(
                                    controller.treatmentNeededOptions[idx]);
                              } else {
                                controller.selectedTreatmentNeeded.add(
                                    controller.treatmentNeededOptions[idx]);
                              }
                            },
                            isSelected: controller.selectedTreatmentNeeded
                                .contains(
                                    controller.treatmentNeededOptions[idx]),
                            name: controller.treatmentNeededOptions[idx],
                          ).paddingOnly(bottom: Dimens.gapX1),
                        ),
                      ).paddingSymmetric(horizontal: Dimens.gapX2),
                    ),
                    Obx(
                      () => Visibility(
                        visible: controller.selectedTreatmentNeeded
                            .contains('Other'),
                        child: SizedBox(
                          width: 300,
                          child: Form(
                            key: controller.otherTreatmentNeededFormKey,
                            child: CommonInputField(
                                    validator: mandatoryValidator,
                                    wrapper: controller.otherTreatmentNeeded,
                                    hintText: 'Type here')
                                .paddingSymmetric(horizontal: Dimens.gapX4),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: Dimens.gapX4),
                stationHOptionWidget(
                  name: 'Dental Florosis',
                  isOptionOneSelected: controller.isDentalFlorosis,
                  onSelect: (v) {
                    controller.isDentalFlorosis.value = v;
                  },
                ),
              ],
            ).paddingAll(Dimens.gapX4),
    ).paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
