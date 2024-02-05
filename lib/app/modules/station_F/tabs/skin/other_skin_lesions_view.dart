import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/utils/helper/validators.dart';
import 'package:nivish/widgets/toggle/common_switch.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../../widgets/common_input_field.dart';
import '../../../../data/values/dimens.dart';
import '../../controllers/station_f_controller.dart';

class StationFOtherSkinLesionsView extends GetView<StationFController> {
  const StationFOtherSkinLesionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Get.width < 600
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: Dimens.gapX3),
              Row(
                children: [
                  const Expanded(
                      child: Text(
                    "Other Skin lesions",
                    style: AppStyles.tsBlackMedium20,
                  )),
                  Dimens.widthGap4,
                  CommonSwitch(
                    onTap: (value) {
                      controller.otherSkinLesions.value = value;
                      controller.selectedOtherSkinLesions1.clear();
                      controller.selectedBirthmarks1.clear();
                      controller.otherSkinLesionsWrapper.controller.clear();
                      controller.otherSkinLesionsBIthMarksWrapper.controller
                          .clear();
                    },
                    initialSwitchValue: controller.otherSkinLesions.value,
                  ),
                ],
              ),
              const SizedBox(height: Dimens.gapX2),
              Padding(
                  padding: const EdgeInsets.only(left: Dimens.gapX3),
                  child: Obx(() => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                          controller.otherSkinLesionsList1.length, (i) {
                        return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonCheckBox(
                                checkedIcon: Icons.check_box,
                                unCheckedIcon: Icons.check_box_outline_blank,
                                isActive: controller.otherSkinLesions.value,
                                name: controller.otherSkinLesionsList1[i],
                                isSelected: controller.selectedOtherSkinLesions1
                                    .contains(
                                        controller.otherSkinLesionsList1[i]),
                                onTap: () {
                                  if (controller.selectedOtherSkinLesions1
                                      .contains(controller
                                          .otherSkinLesionsList1[i])) {
                                    controller.selectedOtherSkinLesions1.remove(
                                        controller.otherSkinLesionsList1[i]);
                                  } else {
                                    controller.selectedOtherSkinLesions1.add(
                                        controller.otherSkinLesionsList1[i]);
                                  }
                                },
                              ).paddingOnly(bottom: Dimens.gapX1),
                              Visibility(
                                  visible: controller.selectedOtherSkinLesions1
                                          .contains('Birth marks') &&
                                      controller.otherSkinLesionsList1[i] ==
                                          'Birth marks' &&
                                      controller.otherSkinLesions.value,
                                  child: Obx(() => Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: List.generate(
                                            controller.birthmarksList.length,
                                            (i) {
                                          return Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CommonCheckBox(
                                                  isActive: controller
                                                      .selectedOtherSkinLesions1
                                                      .contains('Birth marks'),
                                                  checkedIcon: Icons.check_box,
                                                  unCheckedIcon: Icons
                                                      .check_box_outline_blank,
                                                  onTap: () {
                                                    if (controller
                                                        .selectedBirthmarks1
                                                        .contains(controller
                                                                .birthmarksList[
                                                            i])) {
                                                      controller
                                                          .selectedBirthmarks1
                                                          .remove(controller
                                                              .birthmarksList[i]);
                                                    } else {
                                                      controller
                                                          .selectedBirthmarks1
                                                          .add(controller
                                                              .birthmarksList[i]);
                                                    }
                                                  },
                                                  isSelected: controller
                                                      .selectedBirthmarks1
                                                      .contains(controller
                                                          .birthmarksList[i]),
                                                  name: controller
                                                      .birthmarksList[i],
                                                ).paddingOnly(
                                                    bottom: Dimens.gapX1,
                                                    left: Dimens.gapX3),
                                                Obx(
                                                  //otherSkinLesionsWrapper
                                                  () => Visibility(
                                                    visible: controller
                                                            .selectedBirthmarks1
                                                            .contains(
                                                                'Other') &&
                                                        controller.birthmarksList[
                                                                i] ==
                                                            'Other',
                                                    child: SizedBox(
                                                      width: 400,
                                                      child: CommonInputField(
                                                              isEnabled: controller
                                                                  .selectedBirthmarks1
                                                                  .contains(
                                                                      'Other'),
                                                              hintText:
                                                                  "Type here",
                                                              wrapper: controller
                                                                  .otherSkinLesionsBIthMarksWrapper)
                                                          // child: optionInputFiled(
                                                          // maxLength: 3,
                                                          // isMandatory: true,
                                                          // name: 'Heart Rate',
                                                          // unit: 'min',
                                                          // controller: controller.otherSkinLesionsBIthMarksWrapper)

                                                          .paddingSymmetric(
                                                              horizontal:
                                                                  Dimens.gapX4),
                                                    ),
                                                  ),
                                                )
                                              ]);
                                        }),
                                      ))),
                              const SizedBox(
                                height: Dimens.gapX1,
                              ),
                              Obx(
                                () => Visibility(
                                  visible: controller.selectedOtherSkinLesions1
                                          .contains('Other') &&
                                      controller.otherSkinLesionsList1[i] ==
                                          'Other',
                                  child: SizedBox(
                                    width: 400,
                                    child: CommonInputField(
                                            validator: mandatoryValidator,
                                            isEnabled: controller
                                                .selectedOtherSkinLesions1
                                                .contains('Other'),
                                            hintText: "Type here",
                                            wrapper: controller
                                                .otherSkinLesionsWrapper)
                                        .paddingSymmetric(
                                            horizontal: Dimens.gapX4),
                                  ),
                                ),
                              )
                            ]);
                      })))),
              const SizedBox(height: Dimens.gapX2),
              Row(
                children: [
                  const Text(
                    "Acne",
                    style: AppStyles.tsBlackMedium20,
                  ),
                  Dimens.widthGap4,
                  CommonSwitch(
                    onTap: (value) {
                      controller.isAcne.value = value;
                      controller.selectAcne.value = 'Mild';
                    },
                    initialSwitchValue: controller.isAcne.value,
                  ),
                ],
              ),
              const SizedBox(height: Dimens.gapX1_5),
              Padding(
                  padding: const EdgeInsets.only(left: Dimens.gapX3),
                  child: Obx(
                    () => StaggeredGrid.count(
                      crossAxisCount: Get.width < 600 ? 1 : 3,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 12,
                      children: List.generate(
                        controller.acneList.length,
                        (i) => CommonCheckBox(
                          isActive: controller.isAcne.value,
                          name: controller.acneList[i],
                          isSelected: controller.acneList[i] ==
                              controller.selectAcne.value,
                          onTap: () => controller.onSelectedAcne(
                              name: controller.acneList[i]),
                        ),
                      ),
                    ),
                  )),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: Dimens.gapX3),
              Row(
                children: [
                  const Text(
                    "Other Skin lesions",
                    style: AppStyles.tsBlackMedium20,
                  ),
                  Dimens.widthGap4,
                  CommonSwitch(
                    onTap: (value) {
                      controller.otherSkinLesions.value = value;
                      controller.selectedOtherSkinLesions1.clear();
                      controller.selectedBirthmarks1.clear();
                      controller.otherSkinLesionsWrapper.controller.clear();
                      controller.otherSkinLesionsBIthMarksWrapper.controller
                          .clear();
                    },
                    initialSwitchValue: controller.otherSkinLesions.value,
                  ),
                ],
              ),
              const SizedBox(height: Dimens.gapX2),
              Padding(
                  padding: const EdgeInsets.only(left: Dimens.gapX3),
                  child: Obx(() => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                          controller.otherSkinLesionsList1.length, (i) {
                        return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonCheckBox(
                                checkedIcon: Icons.check_box,
                                unCheckedIcon: Icons.check_box_outline_blank,
                                isActive: controller.otherSkinLesions.value,
                                name: controller.otherSkinLesionsList1[i],
                                isSelected: controller.selectedOtherSkinLesions1
                                    .contains(
                                        controller.otherSkinLesionsList1[i]),
                                onTap: () {
                                  if (controller.selectedOtherSkinLesions1
                                      .contains(controller
                                          .otherSkinLesionsList1[i])) {
                                    controller.selectedOtherSkinLesions1.remove(
                                        controller.otherSkinLesionsList1[i]);
                                  } else {
                                    controller.selectedOtherSkinLesions1.add(
                                        controller.otherSkinLesionsList1[i]);
                                  }
                                },
                              ).paddingOnly(bottom: Dimens.gapX1),
                              Visibility(
                                  visible: controller.selectedOtherSkinLesions1
                                          .contains('Birth marks') &&
                                      controller.otherSkinLesionsList1[i] ==
                                          'Birth marks' &&
                                      controller.otherSkinLesions.value,
                                  child: Obx(() => Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: List.generate(
                                            controller.birthmarksList.length,
                                            (i) {
                                          return Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CommonCheckBox(
                                                  isActive: controller
                                                      .selectedOtherSkinLesions1
                                                      .contains('Birth marks'),
                                                  checkedIcon: Icons.check_box,
                                                  unCheckedIcon: Icons
                                                      .check_box_outline_blank,
                                                  onTap: () {
                                                    if (controller
                                                        .selectedBirthmarks1
                                                        .contains(controller
                                                                .birthmarksList[
                                                            i])) {
                                                      controller
                                                          .selectedBirthmarks1
                                                          .remove(controller
                                                              .birthmarksList[i]);
                                                    } else {
                                                      controller
                                                          .selectedBirthmarks1
                                                          .add(controller
                                                              .birthmarksList[i]);
                                                    }
                                                  },
                                                  isSelected: controller
                                                      .selectedBirthmarks1
                                                      .contains(controller
                                                          .birthmarksList[i]),
                                                  name: controller
                                                      .birthmarksList[i],
                                                ).paddingOnly(
                                                    bottom: Dimens.gapX1,
                                                    left: Dimens.gapX3),
                                                Obx(
                                                  () => Visibility(
                                                    visible: controller
                                                            .selectedBirthmarks1
                                                            .contains(
                                                                'Other') &&
                                                        controller.birthmarksList[
                                                                i] ==
                                                            'Other',
                                                    child: SizedBox(
                                                      width: 400,
                                                      child: CommonInputField(
                                                              validator:
                                                                  mandatoryValidator,
                                                              isEnabled: controller
                                                                  .selectedBirthmarks1
                                                                  .contains(
                                                                      'Other'),
                                                              hintText:
                                                                  "Type here",
                                                              wrapper: controller
                                                                  .otherSkinLesionsBIthMarksWrapper)
                                                          .paddingSymmetric(
                                                              horizontal:
                                                                  Dimens.gapX4),
                                                    ),
                                                  ),
                                                )
                                              ]);
                                        }),
                                      ))),
                              const SizedBox(
                                height: Dimens.gapX1,
                              ),
                              Obx(
                                () => Visibility(
                                  visible: controller.selectedOtherSkinLesions1
                                          .contains('Other') &&
                                      controller.otherSkinLesionsList1[i] ==
                                          'Other',
                                  child: SizedBox(
                                    width: 400,
                                    child: CommonInputField(
                                            validator: mandatoryValidator,
                                            isEnabled: controller
                                                .selectedOtherSkinLesions1
                                                .contains('Other'),
                                            hintText: "Type here",
                                            wrapper: controller
                                                .otherSkinLesionsWrapper)
                                        .paddingSymmetric(
                                            horizontal: Dimens.gapX4),
                                  ),
                                ),
                              )
                            ]);
                      })))),
              const SizedBox(height: Dimens.gapX2),
              Row(
                children: [
                  const Text(
                    "Acne",
                    style: AppStyles.tsBlackMedium20,
                  ),
                  Dimens.widthGap4,
                  CommonSwitch(
                    onTap: (value) {
                      controller.isAcne.value = value;
                      controller.selectAcne.value = 'Mild';
                    },
                    initialSwitchValue: controller.isAcne.value,
                  ),
                ],
              ),
              const SizedBox(height: Dimens.gapX1_5),
              Padding(
                  padding: const EdgeInsets.only(left: Dimens.gapX3),
                  child: Obx(
                    () => StaggeredGrid.count(
                      crossAxisCount: Get.width < 600 ? 1 : 3,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 12,
                      children: List.generate(
                        controller.acneList.length,
                        (i) => CommonCheckBox(
                          isActive: controller.isAcne.value,
                          name: controller.acneList[i],
                          isSelected: controller.acneList[i] ==
                              controller.selectAcne.value,
                          onTap: () => controller.onSelectedAcne(
                              name: controller.acneList[i]),
                        ),
                      ),
                    ),
                  )),
            ],
          );
  }
}
