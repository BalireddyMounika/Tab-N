import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/app_styles.dart';
import '../../controllers/station_f_controller.dart';

class StationFEyeLidView extends GetView<StationFController> {
  const StationFEyeLidView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Discharge",
          style: AppStyles.tsBlackSemi20,
        ),
        const SizedBox(height: Dimens.gapX2),
        Row(
          children: [
            Obx(() => CommonCheckBox(
                  isSelected: controller.isDischarge.value,
                  onTap: () {
                    controller.onCheckedDischarge();
                    controller.selectedDischargeYes.clear();
                    controller.selectedDischargeRight.value = '';
                    controller.selectedDischargeLeft.value = '';
                  },
                  name: "No",
                  textStyle: AppStyles.tsBlackMedium20,
                )),
            const SizedBox(
              width: Dimens.gapX4,
            ),
            Obx(() => CommonCheckBox(
                  isSelected: !controller.isDischarge.value,
                  onTap: () => controller.onCheckedDischarge(),
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
            children:
                List.generate(controller.eyesDischargeYesList.length, (i) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonCheckBox(
                          checkedIcon: Icons.check_box,
                          unCheckedIcon: Icons.check_box_outline_blank,
                          isActive: !controller.isDischarge.value,
                          name: controller.eyesDischargeYesList[i],
                          isSelected: controller.selectedDischargeYes
                              .contains(controller.eyesDischargeYesList[i]),
                          onTap: () => controller.onSelectDischargeYes(idx: i))
                      .paddingOnly(bottom: Dimens.gapX1),
                  Visibility(
                    visible:
                        controller.selectedDischargeYes.contains('Right Eye') &&
                            controller.eyesDischargeYesList[i] == 'Right Eye' &&
                            !controller.isDischarge.value,
                    child: Padding(
                        padding: const EdgeInsets.only(left: Dimens.gapX6),
                        child: Obx(
                          () => StaggeredGrid.count(
                            crossAxisCount: Get.width < 600 ? 1 : 1,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 5,
                            children: List.generate(
                              controller.dischargeRightList.length,
                              (i) => CommonCheckBox(
                                isActive: controller.selectedDischargeYes
                                    .contains('Right Eye'),
                                name: controller.dischargeRightList[i],
                                isSelected: controller.dischargeRightList[i] ==
                                    controller.selectedDischargeRight.value,
                                onTap: () => controller.onSelectDischargeRight(
                                    name: controller.dischargeRightList[i]),
                              ).paddingOnly(bottom: Dimens.gapX1),
                            ),
                          ),
                        )),
                  ),
                  Visibility(
                      visible: controller.selectedDischargeYes
                              .contains('Left Eye') &&
                          controller.eyesDischargeYesList[i] == 'Left Eye' &&
                          !controller.isDischarge.value,
                      child: Padding(
                          padding: const EdgeInsets.only(left: Dimens.gapX6),
                          child: Obx(
                            () => StaggeredGrid.count(
                              crossAxisCount: Get.width < 600 ? 1 : 1,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 5,
                              children: List.generate(
                                controller.dischargeLeftList.length,
                                (i) => CommonCheckBox(
                                  isActive: controller.selectedDischargeYes
                                      .contains('Left Eye'),
                                  name: controller.dischargeLeftList[i],
                                  isSelected: controller.dischargeLeftList[i] ==
                                      controller.selectedDischargeLeft.value,
                                  onTap: () => controller.onSelectDischargeLeft(
                                      name: controller.dischargeLeftList[i]),
                                ).paddingOnly(bottom: Dimens.gapX1),
                              ),
                            ),
                          )))
                ],
              ).paddingOnly(left: Dimens.gapX3);
            }))),
        const SizedBox(height: Dimens.gapX2),
        const Text(
          "Eyelids",
          style: AppStyles.tsBlackSemi20,
        ),
        const SizedBox(height: Dimens.gapX2),
        Row(
          children: [
            Obx(() => CommonCheckBox(
                  textStyle: AppStyles.tsBlackMedium20,
                  name: "Normal",
                  isSelected: controller.isEyelidNormal.value,
                  onTap: () => controller.onCheckedEyeLidNormal(),
                )),
            const SizedBox(
              width: Dimens.gapX4,
            ),
            Obx(() => CommonCheckBox(
                  textStyle: AppStyles.tsBlackMedium20,
                  name: "Abnormal",
                  isSelected: !controller.isEyelidNormal.value,
                  onTap: () => controller.onCheckedEyeLidNormal(),
                )),
          ],
        ),
        const SizedBox(height: Dimens.gapX2),
        Padding(
            padding: const EdgeInsets.only(left: Dimens.gapX3),
            child: Obx(
              () => StaggeredGrid.count(
                crossAxisCount: Get.width < 600 ? 1 : 2,
                mainAxisSpacing: 24,
                crossAxisSpacing: 12,
                children: List.generate(
                  controller.eyelidList.length,
                  (i) => CommonCheckBox(
                    isActive: !controller.isEyelidNormal.value,
                    name: controller.eyelidList[i],
                    isSelected: controller.eyelidList[i] ==
                        controller.selectedEyeLid.value,
                    onTap: () => controller.onSelectEyeLid(
                        name: controller.eyelidList[i]),
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
