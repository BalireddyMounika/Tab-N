import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../widgets/common_check_box.dart';
import '../../../../widgets/common_text.dart';
import '../../../data/values/dimens.dart';
import '../../../data/values/images.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_styles.dart';
import '../controllers/station_e_controller.dart';

class StationESpineMobilityView extends GetView<StationEController> {
  const StationESpineMobilityView({Key? key}) : super(key: key);

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
                      Row(
                        children: [
                          const CommonText(
                            text: "Spine Mobility",
                          ),
                          Expanded(
                            child: Align(
                                alignment: Alignment.topRight,
                                child: SvgPicture.asset(
                                  AppImages.spineMobility,
                                  width: Dimens.screenWidthX35,
                                )),
                          )
                        ],
                      ),
                      Obx(() => CommonCheckBox(
                            name: "Normal",
                            textStyle: AppStyles.tsBlackMedium20,
                            isSelected: controller.spineMobilityNormal.value,
                            onTap: () =>
                                controller.onCheckedSpineMobilityNormal(),
                          )),
                      const SizedBox(height: Dimens.gapX1),
                      Obx(() => CommonCheckBox(
                            name: "Restricted movement",
                            textStyle: AppStyles.tsBlackMedium20,
                            isSelected: !controller.spineMobilityNormal.value,
                            onTap: () =>
                                controller.onCheckedSpineMobilityNormal(),
                          )),
                      const SizedBox(height: Dimens.gapX2),
                      Padding(
                          padding: EdgeInsets.only(left: Dimens.gapX3),
                          child: Obx(
                            () => StaggeredGrid.count(
                              crossAxisCount: Get.width < 600 ? 1 : 3,
                              mainAxisSpacing: 24,
                              crossAxisSpacing: 12,
                              children: List.generate(
                                controller.spineMobilityList.length,
                                (i) => CommonCheckBox(
                                  isActive:
                                      !controller.spineMobilityNormal.value,
                                  name: controller.spineMobilityList[i],
                                  isSelected: controller.spineMobilityList[i] ==
                                      controller.selectedSpineMobility.value,
                                  onTap: () => controller.onSelectSpineMobility(
                                      name: controller.spineMobilityList[i]),
                                ),
                              ),
                            ),
                          )),
                      const SizedBox(
                        height: Dimens.gapX4,
                      ),
                      Row(
                        children: [
                          const CommonText(
                            text: "Neck Mobility",
                          ),
                          Expanded(
                            child: Align(
                                alignment: Alignment.topRight,
                                child: SvgPicture.asset(
                                  AppImages.neck,
                                  width: Dimens.screenWidthXSixth,
                                )),
                          )
                        ],
                      ),
                      Obx(() => CommonCheckBox(
                            name: "Normal",
                            textStyle: AppStyles.tsBlackMedium20,
                            isSelected: controller.neckMobilityNormal.value,
                            onTap: () =>
                                controller.onCheckedNeckMobilityNormal(),
                          )),
                      const SizedBox(height: Dimens.gapX1),
                      Obx(() => CommonCheckBox(
                            name: "Restricted movement",
                            textStyle: AppStyles.tsBlackMedium20,
                            isSelected: !controller.neckMobilityNormal.value,
                            onTap: () =>
                                controller.onCheckedNeckMobilityNormal(),
                          )),
                      const SizedBox(height: Dimens.gapX2),
                      Padding(
                          padding: EdgeInsets.only(left: Dimens.gapX3),
                          child: Obx(
                            () => StaggeredGrid.count(
                              crossAxisCount: Get.width < 600 ? 1 : 3,
                              mainAxisSpacing: 24,
                              crossAxisSpacing: 12,
                              children: List.generate(
                                controller.neckMobilityList.length,
                                (i) => CommonCheckBox(
                                  isActive:
                                      !controller.neckMobilityNormal.value,
                                  name: controller.neckMobilityList[i],
                                  isSelected: controller.neckMobilityList[i] ==
                                      controller.selectedNeckMobility.value,
                                  onTap: () => controller.onSelectNeckMobility(
                                      name: controller.neckMobilityList[i]),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ).paddingAll(Dimens.gapX4)
                : Column(
                    children: [
                      Row(
                        children: [
                          const CommonText(
                            text: "Spine Mobility",
                          ),
                          Expanded(
                            child: Align(
                                alignment: Alignment.topRight,
                                child: SvgPicture.asset(
                                  AppImages.spineMobility,
                                  width: Dimens.screenWidthX35,
                                )),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Obx(() => CommonCheckBox(
                                name: "Normal",
                                textStyle: AppStyles.tsBlackMedium20,
                                isSelected:
                                    controller.spineMobilityNormal.value,
                                onTap: () =>
                                    controller.onCheckedSpineMobilityNormal(),
                              )),
                          const SizedBox(width: Dimens.gapX4),
                          Obx(() => CommonCheckBox(
                                name: "Restricted movement",
                                textStyle: AppStyles.tsBlackMedium20,
                                isSelected:
                                    !controller.spineMobilityNormal.value,
                                onTap: () =>
                                    controller.onCheckedSpineMobilityNormal(),
                              )),
                        ],
                      ),
                      const SizedBox(height: Dimens.gapX2),
                      Padding(
                          padding: EdgeInsets.only(left: Dimens.gapX3),
                          child: Obx(
                            () => StaggeredGrid.count(
                              crossAxisCount: Get.width < 600 ? 1 : 3,
                              mainAxisSpacing: 24,
                              crossAxisSpacing: 12,
                              children: List.generate(
                                controller.spineMobilityList.length,
                                (i) => CommonCheckBox(
                                  isActive:
                                      !controller.spineMobilityNormal.value,
                                  name: controller.spineMobilityList[i],
                                  isSelected: controller.spineMobilityList[i] ==
                                      controller.selectedSpineMobility.value,
                                  onTap: () => controller.onSelectSpineMobility(
                                      name: controller.spineMobilityList[i]),
                                ),
                              ),
                            ),
                          )),
                      const SizedBox(
                        height: Dimens.gapX4,
                      ),
                      Row(
                        children: [
                          const CommonText(
                            text: "Neck Mobility",
                          ),
                          Expanded(
                            child: Align(
                                alignment: Alignment.topRight,
                                child: SvgPicture.asset(
                                  AppImages.neck,
                                  width: Dimens.screenWidthXSixth,
                                )),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Obx(() => CommonCheckBox(
                                name: "Normal",
                                textStyle: AppStyles.tsBlackMedium20,
                                isSelected: controller.neckMobilityNormal.value,
                                onTap: () =>
                                    controller.onCheckedNeckMobilityNormal(),
                              )),
                          const SizedBox(width: Dimens.gapX4),
                          Obx(() => CommonCheckBox(
                                name: "Restricted movement",
                                textStyle: AppStyles.tsBlackMedium20,
                                isSelected:
                                    !controller.neckMobilityNormal.value,
                                onTap: () =>
                                    controller.onCheckedNeckMobilityNormal(),
                              )),
                        ],
                      ),
                      const SizedBox(height: Dimens.gapX2),
                      Padding(
                          padding: EdgeInsets.only(left: Dimens.gapX3),
                          child: Obx(
                            () => StaggeredGrid.count(
                              crossAxisCount: Get.width < 600 ? 1 : 3,
                              mainAxisSpacing: 24,
                              crossAxisSpacing: 12,
                              children: List.generate(
                                controller.neckMobilityList.length,
                                (i) => CommonCheckBox(
                                  isActive:
                                      !controller.neckMobilityNormal.value,
                                  name: controller.neckMobilityList[i],
                                  isSelected: controller.neckMobilityList[i] ==
                                      controller.selectedNeckMobility.value,
                                  onTap: () => controller.onSelectNeckMobility(
                                      name: controller.neckMobilityList[i]),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
