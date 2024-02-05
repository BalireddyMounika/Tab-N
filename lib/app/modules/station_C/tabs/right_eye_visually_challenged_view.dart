import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/widgets/text/common_text.dart';
import 'package:nivish/widgets/toggle/common_switch.dart';

import '../../../../widgets/toggle/yes_no_value_selector.dart';
import '../../../data/values/dimens.dart';
import '../../../themes/app_colors.dart';
import '../controllers/station_C_visually_right_eye_controller.dart';
import 'common_widget/right_eye_no_widget_view.dart';
import 'common_widget/right_eye_yes_widget_view.dart';

class StationCRightEyeVisuallyChallengedView
    extends GetView<VisuallyChallengedController> {
  const StationCRightEyeVisuallyChallengedView({Key? key}) : super(key: key);

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
                      Row(children: [
                        subHeading(
                            text: "Right Eye", textColor: AppColors.baseColor),
                        Dimens.widthGap2,
                        Obx(
                          () => CommonSwitch(
                            onTap: (value) {
                              controller.isEnucleationRE.value = false;
                              controller.selectedYesRemoveRE.clear();
                              controller.selectedContractRe.clear();
                              controller.isRE.value = value;
                              controller.dateRE.controller.text = '';
                            },
                            initialSwitchValue: controller.isRE.value,
                          ),
                        )
                      ]),
                      const SizedBox(
                        height: Dimens.gapX3,
                      ),
                      Obx(
                        () => Visibility(
                            visible: controller.isRE.value,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  subHeading(text: 'Enucleation'),
                                  const SizedBox(
                                    height: Dimens.gapX3,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Obx(
                                        () => YesAndNoValueSelector(
                                          isYes:
                                              controller.isEnucleationRE.value,
                                          isEnable: controller.isRE.value,
                                          onSelect: (value) {
                                            controller.isEnucleationRE.value =
                                                value;
                                          },
                                        ),
                                      ),
                                      const SizedBox(
                                        height: Dimens.gapX1_5,
                                      ),
                                      const Divider(thickness: 2),
                                      Obx(
                                        () => controller.isEnucleationRE.value
                                            ? YesEnucleationWidget()
                                            : NoEnucleationWidget(),
                                      ),
                                    ],
                                  ).paddingSymmetric(horizontal: Dimens.gapX2)
                                ])),
                      )
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
                                text: "Right Eye",
                                textColor: AppColors.baseColor),
                            CommonSwitch(
                              onTap: (value) {
                                controller.isEnucleationRE.value = false;
                                controller.selectedYesRemoveRE.clear();
                                controller.selectedContractRe.clear();
                                controller.isRE.value = value;
                                controller.dateRE.controller.text = '';
                              },
                              initialSwitchValue: controller.isRE.value,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: Dimens.gapX4,
                        ),
                        Obx(() => Visibility(
                            visible: controller.isRE.value,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  subHeading(text: 'Enucleation'),
                                  const SizedBox(
                                    height: Dimens.gapX3,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Obx(
                                        () => YesAndNoValueSelector(
                                          isYes:
                                              controller.isEnucleationRE.value,
                                          isEnable: controller.isRE.value,
                                          onSelect: (value) {
                                            controller.isEnucleationRE.value =
                                                value;
                                          },
                                        ),
                                      ),
                                      const SizedBox(
                                        height: Dimens.gapX1_5,
                                      ),
                                      const Divider(thickness: 2),
                                      Obx(
                                        () => controller.isEnucleationRE.value
                                            ? YesEnucleationWidget()
                                            : NoEnucleationWidget(),
                                      ),
                                    ],
                                  ).paddingSymmetric(horizontal: Dimens.gapX2),
                                ]))),
                      ]).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
