import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_styles.dart';
import '../../controllers/station_f_controller.dart';

class StationFDischargeView extends GetView<StationFController> {
  const StationFDischargeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        "Discharge",
        style: AppStyles.tsBlackSemi20,
      ),
      const SizedBox(height: Dimens.gapX2),
      Row(
        children: [
          Obx(() => CommonCheckBox(
                isSelected: controller.isDischargeHearing.value,
                onTap: () {
                  controller.onCheckedDischargeHearing();
                  controller.selectedEarsDischargeYes.clear();
                  controller.selectedDischargeHearingRight.value = '';
                  controller.selectedDischargeHearingLeft.value = '';
                },
                name: "No",
                textStyle: AppStyles.tsBlackMedium20,
              )),
          const SizedBox(
            width: Dimens.gapX4,
          ),
          Obx(() => CommonCheckBox(
                isSelected: !controller.isDischargeHearing.value,
                onTap: () => controller.onCheckedDischargeHearing(),
                name: "Yes",
                textStyle: AppStyles.tsBlackMedium20,
              ))
        ],
      ),
      const SizedBox(
        height: Dimens.gapX1,
      ),
      Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(controller.earsDischargeYesList.length, (i) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonCheckBox(
                        checkedIcon: Icons.check_box,
                        unCheckedIcon: Icons.check_box_outline_blank,
                        isActive: !controller.isDischargeHearing.value,
                        name: controller.earsDischargeYesList[i],
                        isSelected: controller.selectedEarsDischargeYes
                            .contains(controller.earsDischargeYesList[i]),
                        onTap: () =>
                            controller.onSelectEarsDischargeYes(idx: i))
                    .paddingOnly(bottom: Dimens.gapX1),
                Visibility(
                  visible: controller.selectedEarsDischargeYes
                          .contains('Right Ear') &&
                      controller.earsDischargeYesList[i] == 'Right Ear' &&
                      !controller.isDischargeHearing.value,
                  child: Padding(
                      padding: const EdgeInsets.only(left: Dimens.gapX4),
                      child: Obx(
                        () => StaggeredGrid.count(
                          crossAxisCount: Get.width < 600 ? 1 : 1,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 5,
                          children: List.generate(
                            controller.dischargeHearingRightList.length,
                            (i) => CommonCheckBox(
                              isActive: controller.selectedEarsDischargeYes
                                  .contains('Right Ear'),
                              name: controller.dischargeHearingRightList[i],
                              isSelected:
                                  controller.dischargeHearingRightList[i] ==
                                      controller
                                          .selectedDischargeHearingRight.value,
                              onTap: () =>
                                  controller.onSelectDischargeHearingRight(
                                      name: controller
                                          .dischargeHearingRightList[i]),
                            ).paddingOnly(bottom: Dimens.gapX1),
                          ),
                        ),
                      )),
                ),
                Visibility(
                    visible: controller.selectedEarsDischargeYes
                            .contains('Left Ear') &&
                        controller.earsDischargeYesList[i] == 'Left Ear' &&
                        !controller.isDischargeHearing.value,
                    child: Padding(
                        padding: const EdgeInsets.only(left: Dimens.gapX4),
                        child: Obx(
                          () => StaggeredGrid.count(
                            crossAxisCount: Get.width < 600 ? 1 : 1,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 5,
                            children: List.generate(
                              controller.dischargeHearingLeftList.length,
                              (i) => CommonCheckBox(
                                isActive: controller.selectedEarsDischargeYes
                                    .contains('Left Ear'),
                                name: controller.dischargeHearingLeftList[i],
                                isSelected:
                                    controller.dischargeHearingLeftList[i] ==
                                        controller
                                            .selectedDischargeHearingLeft.value,
                                onTap: () =>
                                    controller.onSelectDischargeHearingLeft(
                                        name: controller
                                            .dischargeHearingLeftList[i]),
                              ).paddingOnly(bottom: Dimens.gapX1),
                            ),
                          ),
                        )))
              ],
            ).paddingOnly(left: Dimens.gapX3);
          }))),
      const SizedBox(height: Dimens.gapX1),
      const Text(
        "Wax",
        style: AppStyles.tsBlackSemi20,
      ),
      const SizedBox(height: Dimens.gapX1_5),
      Obx(() => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(controller.waxHearingList.length, (i) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonCheckBox(
                      name: controller.waxHearingList[i],
                      isSelected: controller.waxHearingList[i] ==
                          controller.selectedWax.value,
                      onTap: () {
                        controller.onSelectWax(
                            name: controller.waxHearingList[i]);
                        controller.selectedWaxPresent.clear();
                      }).paddingOnly(bottom: Dimens.gapX1),
                  Visibility(
                      visible: controller.selectedWax.contains('Present') &&
                          controller.waxHearingList[i] == 'Present',
                      child: Obx(
                        () => StaggeredGrid.count(
                          crossAxisCount: Get.width < 600 ? 1 : 2,
                          mainAxisSpacing: 24,
                          crossAxisSpacing: 12,
                          children: List.generate(
                            controller.lnList.length,
                            (i) => CommonCheckBox(
                                checkedIcon: Icons.check_box,
                                unCheckedIcon: Icons.check_box_outline_blank,
                                isActive:
                                    controller.selectedWax.contains('Present'),
                                name: controller.lnList.values.elementAt(i),
                                isSelected: controller.selectedWaxPresent
                                    .contains(
                                        controller.lnList.keys.elementAt(i)),
                                onTap: () =>
                                    controller.onSelectWaxPresentRight(idx: i)),
                          ),
                        ),
                      )).paddingOnly(left: Dimens.gapX4),
                ],
              );
            }),
          )),
      const SizedBox(height: Dimens.gapX1),
    ]);
  }
}
