import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/modules/station_C/controllers/station_C_visually_right_eye_controller.dart';
import 'package:nivish/widgets/text/common_text.dart';
import 'package:nivish/widgets/toggle/common_switch.dart';
import 'package:nivish/widgets/toggle/yes_no_value_selector.dart';

import '../../../data/values/dimens.dart';
import '../../../themes/app_colors.dart';
import 'common_widget/left_eye_no_widget_view.dart';
import 'common_widget/left_eye_yes_widget_view.dart';

class StationCLeftEyeVisuallyChallengedView
    extends GetView<VisuallyChallengedController> {
  const StationCLeftEyeVisuallyChallengedView({Key? key}) : super(key: key);

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
                      heading(text: 'Visually Challenged'),
                      Dimens.heightGap1,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          subHeading(
                              text: "Left Eye", textColor: AppColors.baseColor),
                          Dimens.widthGap2,
                          CommonSwitch(
                            onTap: (value) {
                              controller.isEnucleationLE.value = false;
                              controller.selectedYesRemoveLE.clear();
                              controller.selectedContractLe.clear();
                              controller.isLE.value = value;
                            },
                            initialSwitchValue: controller.isLE.value,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: Dimens.gapX3,
                      ),
                      Obx(() => Visibility(
                          visible: controller.isLE.value,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                subHeading(text: 'Enucleation'),
                                const SizedBox(
                                  height: Dimens.gapX3,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Obx(
                                      () => YesAndNoValueSelector(
                                        isYes: controller.isEnucleationLE.value,
                                        isEnable: controller.isLE.value,
                                        onSelect: (value) {
                                          controller.isEnucleationLE.value =
                                              value;
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX1_5,
                                    ),
                                    const Divider(thickness: 2),
                                    Obx(
                                      () {
                                        if (controller.isEnucleationLE.value) {
                                          return YesLeftEyeWidget();
                                        } else {
                                          return NoLeftEyeWidget();
                                        }
                                      },
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Dimens.gapX2)
                              ]))),
                    ],
                  ).paddingAll(Dimens.gapX4)
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          heading(text: 'Visually Challenged'),
                          subHeading(
                              text: "Left Eye", textColor: AppColors.baseColor),
                          CommonSwitch(
                            onTap: (value) {
                              controller.isEnucleationLE.value = false;
                              controller.selectedYesRemoveLE.clear();
                              controller.selectedContractLe.clear();
                              controller.isLE.value = value;
                            },
                            initialSwitchValue: controller.isLE.value,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: Dimens.gapX4,
                      ),
                      Obx(() => Visibility(
                          visible: controller.isLE.value,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                subHeading(text: 'Enucleation'),
                                const SizedBox(
                                  height: Dimens.gapX3,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Obx(
                                      () => YesAndNoValueSelector(
                                        isYes: controller.isEnucleationLE.value,
                                        isEnable: controller.isLE.value,
                                        onSelect: (value) {
                                          controller.isEnucleationLE.value =
                                              value;
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX1_5,
                                    ),
                                    const Divider(thickness: 2),
                                    Obx(
                                      () {
                                        if (controller.isEnucleationLE.value) {
                                          return YesLeftEyeWidget();
                                        } else {
                                          return NoLeftEyeWidget();
                                        }
                                      },
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Dimens.gapX2)
                              ]))),
                    ],
                  ).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //           decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
  //             BoxShadow(blurRadius: 15, color: AppColors.greyColor)
  //           ]),
  //           child:
  //               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
  //             Row(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Obx(() => CommonCheckBox(
  //                     isSelected: controller.leftEye.value,
  //                     onTap: () => controller.onCheckedLeftEye(),
  //                     name: "Left Eye")),
  //                 const SizedBox(
  //                   width: Dimens.gapX2,
  //                 ),
  //                 const CommonText(text: "Visually Challenged")
  //               ],
  //             ),
  //             const SizedBox(
  //               height: Dimens.gapX1_5,
  //             ),
  //             const Text(
  //               "Enucleation",
  //               style: AppStyles.tsBlackSemi20,
  //             ),
  //             const SizedBox(
  //               height: Dimens.gapX1_5,
  //             ),
  //             Column(
  //               mainAxisAlignment: MainAxisAlignment.start,
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.start,
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     Obx(() => CommonCheckBox(
  //                           isActive: controller.leftEye.value,
  //                           name: "Yes",
  //                           textStyle: AppStyles.tsBlackMedium20,
  //                           isSelected: controller.isEnucleationRE.value,
  //                           onTap: () => controller.onCheckedYes(),
  //                         )),
  //                     const SizedBox(
  //                       width: Dimens.gapX5,
  //                     ),
  //                     Obx(() => CommonCheckBox(
  //                           isActive: controller.leftEye.value,
  //                           name: "No",
  //                           textStyle: AppStyles.tsBlackMedium20,
  //                           isSelected: !controller.isEnucleationRE.value,
  //                           onTap: () => controller.onCheckedYes(),
  //                         )),
  //                   ],
  //                 ),
  //                 const SizedBox(
  //                   height: Dimens.gapX1_5,
  //                 ),
  //                 Center(
  //                     child: Container(
  //                   width: Dimens.screenWidthX14,
  //                   height: 2.0,
  //                   color: AppColors.greyColor,
  //                 )),
  //                 Obx(() {
  //                   if (controller.isEnucleationRE.value) {
  //                     return YesLeftEyeWidget();
  //                   } else {
  //                     return NoLeftEyeWidget();
  //                   }
  //                 }),
  //               ],
  //             ),
  //           ]).paddingAll(Dimens.gapX4))
  //       .paddingSymmetric(horizontal: Dimens.gapX3);
  // }
}
