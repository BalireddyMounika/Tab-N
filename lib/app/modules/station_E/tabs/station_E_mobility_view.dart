import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/text/common_text.dart';

import '../../../../widgets/common_check_box.dart';
import '../../../../widgets/common_input_field.dart';
import '../../../../widgets/common_text.dart';
import '../../../data/values/dimens.dart';
import '../../../themes/app_colors.dart';
import '../../../../widgets/Age_Gender_validations.dart';
import '../controllers/station_e_controller.dart';

class StationEMobilityView extends GetView<StationEController> {
  const StationEMobilityView({Key? key}) : super(key: key);

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
                      theChild(),
                      const SizedBox(
                        height: Dimens.gapX3,
                      ),
                      const CommonText(
                        text: "Gait",
                      ),
                      const SizedBox(
                        height: Dimens.gapX2,
                      ),
                      Obx(() => CommonCheckBox(
                            name: "Normal",
                            textStyle: AppStyles.tsBlackMedium20,
                            isSelected: controller.gaitNormal.value,
                            onTap: () => controller.onCheckedGaitNormal(),
                          )),
                      const SizedBox(
                        height: Dimens.gapX1,
                      ),
                      Obx(() => CommonCheckBox(
                            name: "Abnormal",
                            textStyle: AppStyles.tsBlackMedium20,
                            isSelected: !controller.gaitNormal.value,
                            onTap: () => controller.onCheckedGaitNormal(),
                          )),
                      const SizedBox(
                        height: Dimens.gapX3,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: Dimens.gapX2),
                          child: Obx(
                            () => StaggeredGrid.count(
                              crossAxisCount: Get.width < 600 ? 1 : 2,
                              mainAxisSpacing: 24,
                              crossAxisSpacing: 12,
                              children: List.generate(
                                controller.gaitList.length,
                                (i) => CommonCheckBox(
                                  isActive: !controller.gaitNormal.value,
                                  name: controller.gaitList[i],
                                  isSelected: controller.gaitList[i] ==
                                      controller.selectedGaitList.value,
                                  onTap: () => controller.onSelectGaitList(
                                      name: controller.gaitList[i]),
                                ),
                              ),
                            ),
                          )),
                      const SizedBox(height: 20),
                      Padding(
                          padding: EdgeInsets.only(left: Dimens.gapX4),
                          child: Obx(() => CommonCheckBox(
                                isActive: controller.selectedGaitList.value ==
                                        'Limp' &&
                                    !controller.gaitNormal.value,
                                name: "Lower limb length discrepancy",
                                isSelected: !controller.gaitLowerLimb.value,
                                onTap: () =>
                                    controller.onCheckedGaitLowerLimb(),
                              ))),
                      const SizedBox(height: 20),
                      Padding(
                          padding: EdgeInsets.only(left: Dimens.gapX4),
                          child: Obx(() => CommonCheckBox(
                              isActive:
                                  controller.selectedGaitList.value == 'Limp' &&
                                      !controller.gaitNormal.value,
                              name: 'Other causes',
                              isSelected: controller.gaitLowerLimb.value,
                              onTap: () =>
                                  controller.onCheckedGaitLowerLimb()))),
                      const SizedBox(height: Dimens.gapX1),
                      Obx(() => CommonInputField(
                            isEnabled: controller.gaitLowerLimb.value &&
                                !controller.gaitNormal.value,
                            wrapper: controller.otherGaitTextField,
                            hintText: 'Type here',
                          ))
                    ],
                  ).paddingAll(Dimens.gapX4)
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      theChild(),
                      const SizedBox(
                        height: Dimens.gapX3,
                      ),
                      const CommonText(
                        text: "Gait",
                      ),
                      const SizedBox(
                        height: Dimens.gapX2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Obx(() => CommonCheckBox(
                                name: "Normal",
                                textStyle: AppStyles.tsBlackMedium20,
                                isSelected: controller.gaitNormal.value,
                                onTap: () => controller.onCheckedGaitNormal(),
                              )),
                          const SizedBox(
                            width: Dimens.gapX4,
                          ),
                          Obx(() => CommonCheckBox(
                                name: "Abnormal",
                                textStyle: AppStyles.tsBlackMedium20,
                                isSelected: !controller.gaitNormal.value,
                                onTap: () => controller.onCheckedGaitNormal(),
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: Dimens.gapX3,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: Dimens.gapX3),
                          child: Obx(
                            () => StaggeredGrid.count(
                              crossAxisCount: Get.width < 600 ? 1 : 2,
                              mainAxisSpacing: 24,
                              crossAxisSpacing: 12,
                              children: List.generate(
                                controller.gaitList.length,
                                (i) => CommonCheckBox(
                                  isActive: !controller.gaitNormal.value,
                                  name: controller.gaitList[i],
                                  isSelected: controller.gaitList[i] ==
                                      controller.selectedGaitList.value,
                                  onTap: () => controller.onSelectGaitList(
                                      name: controller.gaitList[i]),
                                ),
                              ),
                            ),
                          )),
                      const SizedBox(height: 20),
                      Padding(
                          padding: EdgeInsets.only(left: Dimens.gapX6),
                          child: Obx(() => CommonCheckBox(
                                isActive: controller.selectedGaitList.value ==
                                        'Limp' &&
                                    !controller.gaitNormal.value,
                                name: "Lower limb length discrepancy",
                                isSelected: !controller.gaitLowerLimb.value,
                                onTap: () =>
                                    controller.onCheckedGaitLowerLimb(),
                              ))),
                      const SizedBox(height: 20),
                      Padding(
                          padding: EdgeInsets.only(left: Dimens.gapX6),
                          child: Obx(
                            () => Row(
                              children: [
                                CommonCheckBox(
                                    isActive:
                                        controller.selectedGaitList.value ==
                                                'Limp' &&
                                            !controller.gaitNormal.value,
                                    name: 'Other causes',
                                    isSelected: controller.gaitLowerLimb.value,
                                    onTap: () =>
                                        controller.onCheckedGaitLowerLimb()),
                                const SizedBox(width: Dimens.gapX2),
                                Expanded(
                                    child: CommonInputField(
                                  isEnabled: controller.gaitLowerLimb.value &&
                                      !controller.gaitNormal.value &&
                                      controller.selectedGaitList.value ==
                                          'Limp',
                                  wrapper: controller.otherGaitTextField,
                                  hintText: 'Type here',
                                )),
                              ],
                            ),
                          )),
                    ],
                  ).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }

  Widget theChild() {
    if (StudentInfo.calculateAge() < 2) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              heading(
                text: "Mobility",
              ),
              Expanded(
                child: Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset(
                      AppImages.mobility,
                      width: Dimens.screenWidthX7,
                    )),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(() => CommonCheckBox(
                    textStyle: AppStyles.tsBlackMedium20,
                    name: "Can Walk",
                    isSelected: controller.isCanWalk.value,
                    onTap: () => controller.onCheckedCanWalk(),
                  )),
              const SizedBox(
                width: Dimens.gapX3,
              ),
              Obx(() => CommonCheckBox(
                    textStyle: AppStyles.tsBlackMedium20,
                    name: "Can not Walk",
                    isSelected: !controller.isCanWalk.value,
                    onTap: () => controller.onCheckedCanWalk(),
                  )),
            ],
          ),
          const SizedBox(height: Dimens.gapX2),
          Padding(
              padding: const EdgeInsets.only(left: Dimens.gapX3),
              child: Obx(
                () => StaggeredGrid.count(
                  crossAxisCount: Get.width < 600 ? 1 : 1,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 12,
                  children: List.generate(
                    controller.mobilityList.length,
                    (i) => CommonCheckBox(
                      isActive: !controller.isCanWalk.value,
                      name: controller.mobilityList[i],
                      isSelected: controller.mobilityList[i] ==
                          controller.selectedMobilityList.value,
                      onTap: () => controller.onSelectMobilityList(
                          name: controller.mobilityList[i]),
                    ),
                  ),
                ),
              )),
          const SizedBox(height: Dimens.gapX2),
          Padding(
              padding: const EdgeInsets.only(left: Dimens.gapX3),
              child: Obx(
                () => Row(
                  children: [
                    CommonCheckBox(
                        isActive: !controller.isCanWalk.value,
                        name: 'Other',
                        isSelected:
                            controller.selectedMobilityList.value == 'Other',
                        onTap: () {
                          controller.selectedMobilityList.value = 'Other';
                          controller.selectedMobilityList.refresh();
                        }),
                    const SizedBox(width: Dimens.gapX2),
                    Expanded(
                        child: CommonInputField(
                      isEnabled:
                          controller.selectedMobilityList.value == 'Other' &&
                              !controller.isCanWalk.value,
                      wrapper: controller.otherMobilityTextField,
                      hintText: 'Type here',
                    )),
                  ],
                ),
              )),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              heading(
                text: "Ambulant ?",
              ),
              Expanded(
                child: Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset(
                      AppImages.mobility,
                      width: Dimens.screenWidthX7,
                    )),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(() => CommonCheckBox(
                    textStyle: AppStyles.tsBlackMedium20,
                    name: "Yes",
                    isSelected: controller.isAmbulant.value,
                    onTap: () => controller.onCheckedAmbulant(),
                  )),
              const SizedBox(
                width: Dimens.gapX3,
              ),
              Obx(() => CommonCheckBox(
                    textStyle: AppStyles.tsBlackMedium20,
                    name: "No",
                    isSelected: !controller.isAmbulant.value,
                    onTap: () => controller.onCheckedAmbulant(),
                  )),
            ],
          ),
          const SizedBox(height: Dimens.gapX2),
          Padding(
              padding: const EdgeInsets.only(left: Dimens.gapX3),
              child: Obx(
                () => StaggeredGrid.count(
                  crossAxisCount: Get.width < 600 ? 1 : 1,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 12,
                  children: List.generate(
                    controller.ambulantList.length,
                    (i) => CommonCheckBox(
                      isActive: !controller.isAmbulant.value,
                      name: controller.ambulantList[i],
                      isSelected: controller.ambulantList[i] ==
                          controller.selectedAmbulantList.value,
                      onTap: () => controller.onSelectAmbulantList(
                          name: controller.ambulantList[i]),
                    ),
                  ),
                ),
              )),
        ],
      );
    }
  }
}
