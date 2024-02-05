import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/widgets/common_text.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../data/values/dimens.dart';
import '../../../../data/values/images.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/app_styles.dart';
import '../../controllers/station_f_controller.dart';
import 'nose_polyps_view.dart';

class StationFNoseDischargeView extends GetView<StationFController> {
  const StationFNoseDischargeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(blurRadius: 15, color: AppColors.greyColor)
            ]),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  CommonText(text: "Nose"),
                  Expanded(
                    child: Align(
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset(
                          AppImages.nose,
                          width: Dimens.screenWidthX10,
                        )),
                  )
                ],
              ),
              const SizedBox(height: Dimens.gapX2),
              const Text(
                "Discharge",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(height: Dimens.gapX2),
              Row(
                children: [
                  Obx(() => CommonCheckBox(
                        isSelected: controller.isNoseDischarge.value,
                        onTap: () {
                          controller.onCheckedNoseDischarge();
                          controller.selectedNoseDischargeYes.clear();
                          controller.selectedNoseDischargeRight.value = '';
                          controller.selectedNoseDischargeLeft.value = '';
                        },
                        name: "No",
                        textStyle: AppStyles.tsBlackMedium20,
                      )),
                  const SizedBox(
                    width: Dimens.gapX4,
                  ),
                  Obx(() => CommonCheckBox(
                        isSelected: !controller.isNoseDischarge.value,
                        onTap: () => controller.onCheckedNoseDischarge(),
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
                    children: List.generate(
                        controller.noseDischargeYesList.length, (i) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonCheckBox(
                              checkedIcon: Icons.check_box,
                              unCheckedIcon: Icons.check_box_outline_blank,
                              isActive: !controller.isNoseDischarge.value,
                              name: controller.noseDischargeYesList[i],
                              isSelected: controller.selectedNoseDischargeYes
                                  .contains(controller.noseDischargeYesList[i]),
                              onTap: () => controller.onSelectNoseDischargeYes(
                                  idx: i)).paddingOnly(
                              bottom: Dimens.gapX1, left: Dimens.gapX4),
                          Visibility(
                            visible: controller.selectedNoseDischargeYes
                                    .contains('Right Nostril') &&
                                controller.noseDischargeYesList[i] ==
                                    'Right Nostril' &&
                                !controller.isNoseDischarge.value,
                            child: Padding(
                                padding:
                                    const EdgeInsets.only(left: Dimens.gapX6),
                                child: Obx(
                                  () => StaggeredGrid.count(
                                    crossAxisCount: Get.width < 600 ? 1 : 1,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 5,
                                    children: List.generate(
                                      controller.noseRightNostrilList.length,
                                      (i) => CommonCheckBox(
                                        isActive: controller
                                            .selectedNoseDischargeYes
                                            .contains('Right Nostril'),
                                        name:
                                            controller.noseRightNostrilList[i],
                                        isSelected: controller
                                                .noseRightNostrilList[i] ==
                                            controller
                                                .selectedNoseDischargeRight
                                                .value,
                                        onTap: () =>
                                            controller.onSelectNoseRightNostril(
                                                name: controller
                                                    .noseRightNostrilList[i]),
                                      ).paddingOnly(bottom: Dimens.gapX1),
                                    ),
                                  ),
                                )),
                          ),
                          Visibility(
                              visible: controller.selectedNoseDischargeYes
                                      .contains('Left Nostril') &&
                                  controller.noseDischargeYesList[i] ==
                                      'Left Nostril' &&
                                  !controller.isNoseDischarge.value,
                              child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: Dimens.gapX6),
                                  child: Obx(
                                    () => StaggeredGrid.count(
                                      crossAxisCount: Get.width < 600 ? 1 : 1,
                                      mainAxisSpacing: 10,
                                      crossAxisSpacing: 5,
                                      children: List.generate(
                                        controller.noseLeftNostrilList.length,
                                        (i) => CommonCheckBox(
                                          isActive: controller
                                              .selectedNoseDischargeYes
                                              .contains('Left Nostril'),
                                          name:
                                              controller.noseLeftNostrilList[i],
                                          isSelected: controller
                                                  .noseLeftNostrilList[i] ==
                                              controller
                                                  .selectedNoseDischargeLeft
                                                  .value,
                                          onTap: () => controller
                                              .onSelectNoseLeftNostril(
                                                  name: controller
                                                      .noseLeftNostrilList[i]),
                                        ).paddingOnly(bottom: Dimens.gapX1),
                                      ),
                                    ),
                                  ))),
                        ],
                      );
                    }),
                  )),
              const SizedBox(height: Dimens.gapX1),
              const Text(
                "Dryness",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(height: Dimens.gapX2),
              Row(
                children: [
                  Obx(() => CommonCheckBox(
                        isSelected: controller.isDryness.value,
                        onTap: () => controller.onCheckedDryness(),
                        name: "No",
                        textStyle: AppStyles.tsBlackMedium20,
                      )),
                  const SizedBox(
                    width: Dimens.gapX4,
                  ),
                  Obx(() => CommonCheckBox(
                        isSelected: !controller.isDryness.value,
                        onTap: () => controller.onCheckedDryness(),
                        name: "Yes",
                        textStyle: AppStyles.tsBlackMedium20,
                      ))
                ],
              ),
              const SizedBox(height: Dimens.gapX2),
              Padding(
                  padding: const EdgeInsets.only(left: Dimens.gapX4),
                  child: Obx(
                    () => StaggeredGrid.count(
                      crossAxisCount: Get.width < 600 ? 1 : 3,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 12,
                      children: List.generate(
                        controller.drynessList.length,
                        (i) => CommonCheckBox(
                          isActive: !controller.isDryness.value,
                          name: controller.drynessList[i],
                          isSelected: controller.drynessList[i] ==
                              controller.selectedDryness.value,
                          onTap: () => controller.onSelectDryness(
                              name: controller.drynessList[i]),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(height: Dimens.gapX2),
              const Text(
                "Crusting",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(height: Dimens.gapX2),
              Row(
                children: [
                  Obx(() => CommonCheckBox(
                        isSelected: controller.isCrusting.value,
                        onTap: () => controller.onCheckedCrusting(),
                        name: "No",
                        textStyle: AppStyles.tsBlackMedium20,
                      )),
                  const SizedBox(
                    width: Dimens.gapX4,
                  ),
                  Obx(() => CommonCheckBox(
                        isSelected: !controller.isCrusting.value,
                        onTap: () => controller.onCheckedCrusting(),
                        name: "Yes",
                        textStyle: AppStyles.tsBlackMedium20,
                      ))
                ],
              ),
              const SizedBox(height: Dimens.gapX2),
              Padding(
                  padding: const EdgeInsets.only(left: Dimens.gapX4),
                  child: Obx(
                    () => StaggeredGrid.count(
                      crossAxisCount: Get.width < 600 ? 1 : 3,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 12,
                      children: List.generate(
                        controller.crustingList.length,
                        (i) => CommonCheckBox(
                          isActive: !controller.isCrusting.value,
                          name: controller.crustingList[i],
                          isSelected: controller.crustingList[i] ==
                              controller.selectedCrusting.value,
                          onTap: () => controller.onSelectCrusting(
                              name: controller.crustingList[i]),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(height: Dimens.gapX2),
              const StationFPolypsView()
            ]).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
