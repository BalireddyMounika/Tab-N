import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/widgets/common_check_box.dart';
import 'package:nivish/widgets/text/common_text.dart';
import 'package:nivish/widgets/toggle/yes_no_value_selector.dart';

import '../../../../../widgets/common_input_field.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_colors.dart';
import '../../controllers/station_C_visually_right_eye_controller.dart';

class YesEnucleationWidget extends GetView<VisuallyChallengedController> {
  const YesEnucleationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: Dimens.gapX3, top: Dimens.gapX3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title(
            text: "When Remove ?",
          ),
          const SizedBox(
            height: Dimens.gapX2,
          ),
          GestureDetector(
            child: AbsorbPointer(
              child: CommonInputField(
                wrapper: controller.dateRE,
                hintText: "MM/YYYY",
                prefixIcon: const Icon(Icons.calendar_month),
              ),
            ),
            onTap: () {
              controller.chooseDateOfBirthRE();
            },
          ).paddingSymmetric(horizontal: Dimens.gapX2),
          const SizedBox(
            height: Dimens.gapX3,
          ),
          title(text: 'Why Remove ?'),
          SizedBox(height: Dimens.gapX1),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          controller.yesRemoveRE.length,
                          (i) => CommonCheckBox(
                            isActive: controller.isEnucleationRE.value,
                            checkedIcon: Icons.check_box,
                            unCheckedIcon: Icons.check_box_outline_blank,
                            onTap: () {
                              if (controller.selectedYesRemoveRE
                                  .contains(controller.yesRemoveRE[i])) {
                                controller.selectedYesRemoveRE
                                    .remove(controller.yesRemoveRE[i]);
                              } else {
                                controller.selectedYesRemoveRE
                                    .add(controller.yesRemoveRE[i]);
                              }
                            },
                            isSelected: controller.selectedYesRemoveRE
                                .contains(controller.yesRemoveRE[i]),
                            name: controller.yesRemoveRE[i],
                          ).paddingOnly(bottom: Dimens.gapX1),
                        ),
                      ).paddingSymmetric(horizontal: Dimens.gapX2),
                    ),
                    Obx(
                      () => Visibility(
                        visible:
                            controller.selectedYesRemoveRE.contains('Other'),
                        child: SizedBox(
                          width: 400,
                          child: CommonInputField(
                                  hintText: "Type here",
                                  wrapper: controller.typeHereRE)
                              .paddingSymmetric(horizontal: Dimens.gapX4),
                        ),
                      ),
                    ),
                    // Obx(() => CheckboxListTile(
                    //       title: const Text("Tumor"),
                    //       value: controller.tumor.value,
                    //       checkColor: AppColors.white,
                    //       activeColor: AppColors.baseColor,
                    //       onChanged: (value) {
                    //         controller.tumor(value!);
                    //       },
                    //       controlAffinity: ListTileControlAffinity.leading,
                    //     )),
                    // Obx(() => CheckboxListTile(
                    //       title: const Text("Injury"),
                    //       value: controller.injury.value,
                    //       checkColor: AppColors.white,
                    //       activeColor: AppColors.baseColor,
                    //       onChanged: (value) {
                    //         controller.injury(value!);
                    //       },
                    //       controlAffinity: ListTileControlAffinity.leading,
                    //     )),
                    // Obx(() => CheckboxListTile(
                    //       title: const Text("Accident"),
                    //       value: controller.accident.value,
                    //       checkColor: AppColors.white,
                    //       activeColor: AppColors.baseColor,
                    //       onChanged: (value) {
                    //         controller.accident(value!);
                    //       },
                    //       controlAffinity: ListTileControlAffinity.leading,
                    //     )),
                    // Obx(
                    //   () => CheckboxListTile(
                    //     title: const Text("other"),
                    //     value: controller.isOtherCheckboxCheckedRE.value,
                    //     checkColor: AppColors.white,
                    //     activeColor: AppColors.baseColor,
                    //     onChanged: (value) {
                    //       controller.isOtherCheckboxCheckedRE(value!);
                    //     },
                    //     controlAffinity: ListTileControlAffinity.leading,
                    //   ),
                    // ),
                    // Obx(
                    //   () => CommonInputField(
                    //           wrapper: controller.typeHereRE,
                    //           hintText: "Type here",
                    //           isEnabled:
                    //               controller.isOtherCheckboxCheckedRE.value)
                    //       .paddingSymmetric(horizontal: Dimens.gapX2),
                    // ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: Dimens.gapX3,
          ),
          title(text: 'Artificial Eye Used'),
          const SizedBox(
            height: Dimens.gapX2,
          ),
          Obx(
            () => YesAndNoValueSelector(
                isYes: controller.isArtificialRE.value,
                isEnable: controller.isEnucleationRE.value,
                onSelect: (value) {
                  controller.isArtificialRE.value = value;
                  print(controller.isArtificialRE.value);
                }).paddingSymmetric(horizontal: Dimens.paddingX2),
          ),
        ],
      ),
    );
  }
}
