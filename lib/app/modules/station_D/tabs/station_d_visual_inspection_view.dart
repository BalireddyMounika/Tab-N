import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:nivish/app/modules/station_D/controllers/station_d_controller.dart';
import 'package:nivish/app/themes/app_styles.dart';
import '../../../../widgets/common_check_box.dart';
import '../../../../widgets/common_input_field.dart';
import '../../../../widgets/common_text.dart';
import '../../../data/values/dimens.dart';
import '../../../themes/app_colors.dart';
import 'package:get/get.dart';

class StationDVisualInspectionView extends GetView<StationDController> {
  const StationDVisualInspectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(blurRadius: 15, color: AppColors.greyColor)
            ]),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const CommonText(text: "Visual inspection (External Inspection)"),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              const Text(
                "Right Ear",
                style: AppStyles.tsBrownMedium24,
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              const Text(
                "Pinna",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              Obx(
                () => StaggeredGrid.count(
                  crossAxisCount: Get.width < 600 ? 1 : 3,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 12,
                  children: List.generate(
                    controller.rightEarPinnaList.length,
                    (i) => CommonCheckBox(
                      name: controller.rightEarPinnaList[i],
                      isSelected: controller.rightEarPinnaList[i] ==
                          controller.selectedRightEarPinna.value,
                      onTap: () => controller.onSelectRightEarPinna(
                          name: controller.rightEarPinnaList[i]),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: Dimens.gapX1,
              ),
              Obx(
                () => Row(
                  children: [
                    CommonCheckBox(
                        isActive: controller.rightEarPinna.value,
                        name: 'Abnormal',
                        isSelected: controller.selectedRightEarPinna.value ==
                            'Abnormal',
                        onTap: () {
                          controller.selectedRightEarPinna.value = 'Abnormal';
                          controller.selectedRightEarPinna.refresh();
                        }),
                    const SizedBox(width: Dimens.gapX2),
                    Expanded(
                        child: CommonInputField(
                      hintText: "Type here",
                      isEnabled:
                          controller.selectedRightEarPinna.value == 'Abnormal',
                      wrapper: controller.rightEarPinnaWrapper,
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              const Text(
                "Ear Canal",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              Obx(
                () => StaggeredGrid.count(
                  crossAxisCount: Get.width < 600 ? 1 : 3,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 12,
                  children: List.generate(
                    controller.rightEarCanalList.length,
                    (i) => CommonCheckBox(
                      name: controller.rightEarCanalList[i],
                      isSelected: controller.rightEarCanalList[i] ==
                          controller.selectedRightEarCanal.value,
                      onTap: () => controller.onSelectRightEarCanal(
                          name: controller.rightEarCanalList[i]),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: Dimens.gapX1,
              ),
              Obx(
                () => Row(
                  children: [
                    CommonCheckBox(
                        isActive: controller.rightEarCanal.value,
                        name: 'Abnormal',
                        isSelected: controller.selectedRightEarCanal.value ==
                            'Abnormal',
                        onTap: () {
                          controller.selectedRightEarCanal.value = 'Abnormal';
                          controller.selectedRightEarCanal.refresh();
                        }),
                    const SizedBox(width: Dimens.gapX2),
                    Expanded(
                        child: CommonInputField(
                      hintText: "Type here",
                      isEnabled:
                          controller.selectedRightEarCanal.value == 'Abnormal',
                      wrapper: controller.rightEarCanalWrapper,
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: Dimens.gapX4,
              ),
              const Text(
                "Left Ear",
                style: AppStyles.tsBrownMedium24,
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              const Text(
                "Pinna",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              Obx(
                () => StaggeredGrid.count(
                  crossAxisCount: Get.width < 600 ? 1 : 3,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 12,
                  children: List.generate(
                    controller.leftEarPinnaList.length,
                    (i) => CommonCheckBox(
                      name: controller.leftEarPinnaList[i],
                      isSelected: controller.leftEarPinnaList[i] ==
                          controller.selectedLeftEarPinna.value,
                      onTap: () => controller.onSelectLeftEarPinna(
                          name: controller.leftEarPinnaList[i]),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: Dimens.gapX1,
              ),
              Obx(
                () => Row(
                  children: [
                    CommonCheckBox(
                        isActive: controller.leftEarPinna.value,
                        name: 'Abnormal',
                        isSelected:
                            controller.selectedLeftEarPinna.value == 'Abnormal',
                        onTap: () {
                          controller.selectedLeftEarPinna.value = 'Abnormal';
                          controller.selectedLeftEarPinna.refresh();
                        }),
                    const SizedBox(width: Dimens.gapX2),
                    Expanded(
                        child: CommonInputField(
                      hintText: "Type here",
                      isEnabled:
                          controller.selectedLeftEarPinna.value == 'Abnormal',
                      wrapper: controller.leftEarPinnaWrapper,
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              const Text(
                "Ear Canal",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              Obx(
                () => StaggeredGrid.count(
                  crossAxisCount: Get.width < 600 ? 1 : 3,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 12,
                  children: List.generate(
                    controller.leftEarCanalList.length,
                    (i) => CommonCheckBox(
                      name: controller.leftEarCanalList[i],
                      isSelected: controller.leftEarCanalList[i] ==
                          controller.selectedLeftEarCanal.value,
                      onTap: () => controller.onSelectLeftEarCanal(
                          name: controller.leftEarCanalList[i]),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: Dimens.gapX1,
              ),
              Obx(
                () => Row(
                  children: [
                    CommonCheckBox(
                        isActive: controller.leftEarCanal.value,
                        name: 'Abnormal',
                        isSelected:
                            controller.selectedLeftEarCanal.value == 'Abnormal',
                        onTap: () {
                          controller.selectedLeftEarCanal.value = 'Abnormal';
                          controller.selectedLeftEarCanal.refresh();
                        }),
                    const SizedBox(width: Dimens.gapX2),
                    Expanded(
                        child: CommonInputField(
                      hintText: "Type here",
                      isEnabled:
                          controller.selectedLeftEarCanal.value == 'Abnormal',
                      wrapper: controller.leftEarCanalWrapper,
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: Dimens.gapX3,
              ),
              CommonText(text: "Any other related findings?"),
              const SizedBox(height: Dimens.gapX2),
              CommonInputField(
                  hintText: "Type here",
                  wrapper: controller.anyOtherRelatedWrapper)
            ]).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
