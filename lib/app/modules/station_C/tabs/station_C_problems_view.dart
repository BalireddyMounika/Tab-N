import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/modules/station_C/controllers/station_c_controller.dart';
import 'package:nivish/widgets/Age_Gender_validations.dart';
import 'package:nivish/widgets/toggle/two_option_selector_widget.dart';
import 'package:nivish/widgets/common_check_box.dart';
import 'package:nivish/widgets/text/common_text.dart';
import '../../../../widgets/toggle/common_switch.dart';
import '../../../data/values/dimens.dart';
import '../../../data/values/images.dart';
import '../../../themes/app_colors.dart';

class StationCProblems extends GetView<StationCController> {
  const StationCProblems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(blurRadius: 15, color: AppColors.greyColor)
            ]),
            child: Get.width < 600
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        heading(
                          text: "Problems",
                        ),
                        const SizedBox(height: Dimens.gapX2),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Obx(
                                  () => DoubleOptionSelector(
                                    label: 'Problem Reading Book ?',
                                    isOptionOneSelected:
                                        controller.isProblemReadingBook.value,
                                    onSelectOption: (value) {
                                      controller.isProblemReadingBook.value =
                                          value;
                                    },
                                  ),
                                ),
                                const Spacer(),
                                Expanded(
                                    child: Align(
                                  alignment: Alignment.topRight,
                                  child: SvgPicture.asset(
                                    AppImages.book,
                                  ),
                                )),
                              ],
                            ),
                            const SizedBox(height: Dimens.gapX2),
                            Row(
                              children: [
                                Obx(
                                  () => DoubleOptionSelector(
                                    label: 'Problem Reading Blackboard?',
                                    isOptionOneSelected: controller
                                        .isProblemReadingBlackBoard.value,
                                    onSelectOption: (value) {
                                      controller.isProblemReadingBlackBoard
                                          .value = value;
                                    },
                                  ),
                                ),
                                // const Spacer(),
                                Expanded(
                                    child: Align(
                                  alignment: Alignment.topRight,
                                  child: SvgPicture.asset(
                                    AppImages.blackBoard,
                                  ),
                                )),
                              ],
                            ),
                            const SizedBox(height: Dimens.gapX2),
                            Row(
                              children: [
                                if (StudentInfo.calculateAge() >= 5)
                                  Obx(
                                    () => DoubleOptionSelector(
                                      label: 'Night Vision?',
                                      optionOne: 'Normal',
                                      optionTwo: 'Abnormal',
                                      isOptionOneSelected:
                                          controller.isNightVision.value,
                                      onSelectOption: (value) {
                                        controller.isNightVision.value = value;
                                      },
                                    ),
                                  ),
                                // const Spacer(),
                                if (StudentInfo.calculateAge() >= 5)
                                  Expanded(
                                      child: Align(
                                    alignment: Alignment.topRight,
                                    child: SvgPicture.asset(
                                      AppImages.nightVision,
                                    ),
                                  )),
                              ],
                            ),
                            const SizedBox(
                              height: Dimens.gapX2,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: heading(
                                  text: "Vision Corrected",
                                )),
                                const SizedBox(width: Dimens.gapX2),
                                Expanded(
                                    child: CommonSwitch(
                                  onTap: (value) {
                                    controller.shouldCorrectVision.value =
                                        value;
                                    controller.selectedVisionCorrected.clear();
                                  },
                                  initialSwitchValue:
                                      controller.shouldCorrectVision.value,
                                )),
                              ],
                            ),
                            const SizedBox(height: Dimens.gapX2),
                            Obx(() => Visibility(
                                visible: controller.shouldCorrectVision.value,
                                child: Obx(
                                  () => Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: List.generate(
                                      controller.visionCorrectedList.length,
                                      (i) => CommonCheckBox(
                                        isActive: controller
                                            .shouldCorrectVision.value,
                                        checkedIcon: Icons.check_box,
                                        unCheckedIcon:
                                            Icons.check_box_outline_blank,
                                        onTap: () {
                                          if (controller.selectedVisionCorrected
                                              .contains(controller
                                                  .visionCorrectedList[i])) {
                                            controller.selectedVisionCorrected
                                                .remove(controller
                                                    .visionCorrectedList[i]);
                                          } else {
                                            controller.selectedVisionCorrected
                                                .add(controller
                                                    .visionCorrectedList[i]);
                                          }
                                        },
                                        isSelected: controller
                                            .selectedVisionCorrected
                                            .contains(controller
                                                .visionCorrectedList[i]),
                                        name: controller.visionCorrectedList[i],
                                      ).paddingOnly(bottom: Dimens.gapX1),
                                    ),
                                  ).paddingSymmetric(horizontal: Dimens.gapX2),
                                ))),
                          ],
                        ),
                      ]).paddingAll(Dimens.gapX4)
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        heading(
                          text: "Problems",
                        ),
                        const SizedBox(height: Dimens.gapX2),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Obx(
                                  () => DoubleOptionSelector(
                                    label: 'Problem Reading Book ?',
                                    isOptionOneSelected:
                                        controller.isProblemReadingBook.value,
                                    onSelectOption: (value) {
                                      controller.isProblemReadingBook.value =
                                          value;
                                    },
                                  ),
                                ),
                                const Spacer(),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: SvgPicture.asset(
                                    AppImages.book,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: Dimens.gapX2),
                            Row(
                              children: [
                                Obx(
                                  () => DoubleOptionSelector(
                                    label: 'Problem Reading Blackboard?',
                                    isOptionOneSelected: controller
                                        .isProblemReadingBlackBoard.value,
                                    onSelectOption: (value) {
                                      controller.isProblemReadingBlackBoard
                                          .value = value;
                                    },
                                  ),
                                ),
                                const Spacer(),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: SvgPicture.asset(
                                    AppImages.blackBoard,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: Dimens.gapX2),
                            Row(
                              children: [
                                if (StudentInfo.calculateAge() >= 5)
                                  Obx(
                                    () => DoubleOptionSelector(
                                      label: 'Night Vision?',
                                      optionOne: 'Normal',
                                      optionTwo: 'Abnormal',
                                      isOptionOneSelected:
                                          controller.isNightVision.value,
                                      onSelectOption: (value) {
                                        controller.isNightVision.value = value;
                                      },
                                    ),
                                  ),
                                const Spacer(),
                                if (StudentInfo.calculateAge() >= 5)
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: SvgPicture.asset(
                                      AppImages.nightVision,
                                    ),
                                  ),
                              ],
                            ),
                            const SizedBox(
                              height: Dimens.gapX1,
                            ),
                            Row(
                              children: [
                                heading(
                                  text: "Vision Corrected",
                                ),
                                const SizedBox(width: Dimens.gapX4),
                                CommonSwitch(
                                  onTap: (value) {
                                    controller.shouldCorrectVision.value =
                                        value;
                                    controller.selectedVisionCorrected.clear();
                                  },
                                  initialSwitchValue:
                                      controller.shouldCorrectVision.value,
                                ),
                              ],
                            ),
                            const SizedBox(height: Dimens.gapX2),
                            Obx(() => Visibility(
                                visible: controller.shouldCorrectVision.value,
                                child: Obx(
                                  () => Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: List.generate(
                                      controller.visionCorrectedList.length,
                                      (i) => CommonCheckBox(
                                        isActive: controller
                                            .shouldCorrectVision.value,
                                        checkedIcon: Icons.check_box,
                                        unCheckedIcon:
                                            Icons.check_box_outline_blank,
                                        onTap: () {
                                          if (controller.selectedVisionCorrected
                                              .contains(controller
                                                  .visionCorrectedList[i])) {
                                            controller.selectedVisionCorrected
                                                .remove(controller
                                                    .visionCorrectedList[i]);
                                          } else {
                                            controller.selectedVisionCorrected
                                                .add(controller
                                                    .visionCorrectedList[i]);
                                          }
                                        },
                                        isSelected: controller
                                            .selectedVisionCorrected
                                            .contains(controller
                                                .visionCorrectedList[i]),
                                        name: controller.visionCorrectedList[i],
                                      ).paddingOnly(bottom: Dimens.gapX1),
                                    ),
                                  ).paddingSymmetric(horizontal: Dimens.gapX2),
                                ))),
                          ],
                        ),
                      ]).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
