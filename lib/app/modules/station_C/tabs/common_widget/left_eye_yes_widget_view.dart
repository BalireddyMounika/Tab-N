import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_C/controllers/station_C_visually_right_eye_controller.dart';
import 'package:nivish/widgets/common_input_field.dart';
import 'package:nivish/widgets/text/common_text.dart';
import 'package:nivish/widgets/toggle/yes_no_value_selector.dart';

import '../../../../../widgets/common_check_box.dart';

class YesLeftEyeWidget extends GetView<VisuallyChallengedController> {
  YesLeftEyeWidget({Key? key}) : super(key: key);

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
                wrapper: controller.dateLE,
                hintText: "MM/YYYY",
                prefixIcon: const Icon(Icons.calendar_month),
              ),
            ),
            onTap: () {
              controller.chooseDateOfBirthLE();
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
                          controller.yesRemoveLE.length,
                          (i) => CommonCheckBox(
                            checkedIcon: Icons.check_box,
                            unCheckedIcon: Icons.check_box_outline_blank,
                            onTap: () {
                              if (controller.selectedYesRemoveLE
                                  .contains(controller.yesRemoveLE[i])) {
                                controller.selectedYesRemoveLE
                                    .remove(controller.yesRemoveLE[i]);
                              } else {
                                controller.selectedYesRemoveLE
                                    .add(controller.yesRemoveLE[i]);
                              }
                            },
                            isSelected: controller.selectedYesRemoveLE
                                .contains(controller.yesRemoveLE[i]),
                            name: controller.yesRemoveLE[i],
                          ).paddingOnly(bottom: Dimens.gapX1),
                        ),
                      ).paddingSymmetric(horizontal: Dimens.gapX2),
                    ),
                    Obx(
                      () => Visibility(
                        visible:
                            controller.selectedYesRemoveLE.contains('Other'),
                        child: SizedBox(
                          width: 400,
                          child: CommonInputField(
                                  hintText: "Type here",
                                  wrapper: controller.typeHereLE)
                              .paddingSymmetric(horizontal: Dimens.gapX4),
                        ),
                      ),
                    ),
                    // Obx(() => CheckboxListTile(
                    //   title: const Text("Tumor"),
                    //   value: controller.tumorLE.value,
                    //   checkColor: AppColors.white,
                    //   activeColor: AppColors.baseColor,
                    //   onChanged: (value) {
                    //     controller.tumorLE(value!);
                    //   },
                    //   controlAffinity: ListTileControlAffinity.leading,
                    // )),
                    // Obx(() => CheckboxListTile(
                    //   title: const Text("Injury"),
                    //   value: controller.injuryLE.value,
                    //   checkColor: AppColors.white,
                    //   activeColor: AppColors.baseColor,
                    //   onChanged: (value) {
                    //     controller.injuryLE(value!);
                    //   },
                    //   controlAffinity: ListTileControlAffinity.leading,
                    // )),
                    // Obx(() => CheckboxListTile(
                    //   title: const Text("Accident"),
                    //   value: controller.accidentLE.value,
                    //   checkColor: AppColors.white,
                    //   activeColor: AppColors.baseColor,
                    //   onChanged: (value) {
                    //     controller.accidentLE(value!);
                    //   },
                    //   controlAffinity: ListTileControlAffinity.leading,
                    // )),
                    // Obx(
                    //       () => CheckboxListTile(
                    //     title: const Text("other"),
                    //     value: controller.isOtherCheckboxCheckedLE.value,
                    //     checkColor: AppColors.white,
                    //     activeColor: AppColors.baseColor,
                    //     onChanged: (value) {
                    //       controller.isOtherCheckboxCheckedLE(value!);
                    //     },
                    //     controlAffinity: ListTileControlAffinity.leading,
                    //   ),
                    // ),
                    // Obx(
                    //       () => CommonInputField(
                    //       wrapper: controller.typeHereLE,
                    //       hintText: "Type here",
                    //       isEnabled:
                    //       controller.isOtherCheckboxCheckedLE.value)
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
                isYes: controller.isArtificialLE.value,
                isEnable: controller.isEnucleationLE.value,
                onSelect: (value) {
                  controller.isArtificialLE.value = value;
                }).paddingSymmetric(horizontal: Dimens.paddingX2),
          ),
        ],
      ),
    );
  }
}
