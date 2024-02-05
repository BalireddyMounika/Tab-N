import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_styles.dart';
import '../../controllers/station_f_controller.dart';

class StationFRashView extends GetView<StationFController> {
  const StationFRashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Rash",
          style: AppStyles.tsBlackSemi20,
        ),
        const SizedBox(
          height: Dimens.gapX2,
        ),
        Row(
          children: [
            Obx(() => CommonCheckBox(
                textStyle: AppStyles.tsBlackMedium20,
                name: "Absent",
                isSelected: controller.isRashAbsent.value,
                onTap: () {
                  controller.onCheckedRashAbsent();
                  controller.selectedRashPresent.clear();
                  controller.selectedFace.clear();
                  controller.selectedNeck.clear();
                  controller.selectedChest.clear();
                  controller.selectedAbdomen.clear();
                  controller.selectedGroin.clear();
                  controller.selectedBack.clear();
                  controller.selectedArms.clear();
                  controller.selectedHands.clear();
                  controller.selectedLegs.clear();
                  controller.selectedFeet.clear();
                })),
            const SizedBox(
              width: Dimens.gapX5,
            ),
            Obx(() => CommonCheckBox(
                  textStyle: AppStyles.tsBlackMedium20,
                  name: "Present",
                  isSelected: !controller.isRashAbsent.value,
                  onTap: () => controller.onCheckedRashAbsent(),
                )),
          ],
        ),
        const SizedBox(height: Dimens.gapX1),
        Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              controller.rashPresentList.length,
              (i) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonCheckBox(
                      isActive: !controller.isRashAbsent.value,
                      checkedIcon: Icons.check_box,
                      unCheckedIcon: Icons.check_box_outline_blank,
                      onTap: () {
                        if (controller.selectedRashPresent
                            .contains(controller.rashPresentList[i])) {
                          controller.selectedRashPresent
                              .remove(controller.rashPresentList[i]);
                        } else {
                          controller.selectedRashPresent
                              .add(controller.rashPresentList[i]);
                        }
                      },
                      isSelected: controller.selectedRashPresent
                          .contains(controller.rashPresentList[i]),
                      name: controller.rashPresentList[i],
                    ).paddingOnly(bottom: Dimens.gapX1),
                    Visibility(
                        visible:
                            controller.selectedRashPresent.contains('Face') &&
                                controller.rashPresentList[i] == 'Face' &&
                                !controller.isRashAbsent.value,
                        child: Obx(() => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                List.generate(controller.faceList.length, (i) {
                              return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CommonCheckBox(
                                      checkedIcon: Icons.check_box,
                                      unCheckedIcon:
                                          Icons.check_box_outline_blank,
                                      onTap: () {
                                        if (controller.selectedFace
                                            .contains(controller.faceList[i])) {
                                          controller.selectedFace
                                              .remove(controller.faceList[i]);
                                        } else {
                                          controller.selectedFace
                                              .add(controller.faceList[i]);
                                        }
                                      },
                                      isSelected: controller.selectedFace
                                          .contains(controller.faceList[i]),
                                      name: controller.faceList[i],
                                    ).paddingOnly(
                                        bottom: Dimens.gapX1,
                                        left: Dimens.gapX3),
                                  ]);
                            })))),
                    Visibility(
                        visible:
                            controller.selectedRashPresent.contains('Neck') &&
                                controller.rashPresentList[i] == 'Neck' &&
                                !controller.isRashAbsent.value,
                        child: Obx(() => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                List.generate(controller.faceList.length, (i) {
                              return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CommonCheckBox(
                                      checkedIcon: Icons.check_box,
                                      unCheckedIcon:
                                          Icons.check_box_outline_blank,
                                      onTap: () {
                                        if (controller.selectedNeck
                                            .contains(controller.faceList[i])) {
                                          controller.selectedNeck
                                              .remove(controller.faceList[i]);
                                        } else {
                                          controller.selectedNeck
                                              .add(controller.faceList[i]);
                                        }
                                      },
                                      isSelected: controller.selectedNeck
                                          .contains(controller.faceList[i]),
                                      name: controller.faceList[i],
                                    ).paddingOnly(
                                        bottom: Dimens.gapX1,
                                        left: Dimens.gapX3),
                                  ]);
                            })))),
                    Visibility(
                        visible:
                            controller.selectedRashPresent.contains('Chest') &&
                                controller.rashPresentList[i] == 'Chest' &&
                                !controller.isRashAbsent.value,
                        child: Obx(() => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                List.generate(controller.faceList.length, (i) {
                              return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CommonCheckBox(
                                      checkedIcon: Icons.check_box,
                                      unCheckedIcon:
                                          Icons.check_box_outline_blank,
                                      onTap: () {
                                        if (controller.selectedChest
                                            .contains(controller.faceList[i])) {
                                          controller.selectedChest
                                              .remove(controller.faceList[i]);
                                        } else {
                                          controller.selectedChest
                                              .add(controller.faceList[i]);
                                        }
                                      },
                                      isSelected: controller.selectedChest
                                          .contains(controller.faceList[i]),
                                      name: controller.faceList[i],
                                    ).paddingOnly(
                                        bottom: Dimens.gapX1,
                                        left: Dimens.gapX3),
                                  ]);
                            })))),
                    Visibility(
                        visible: controller.selectedRashPresent
                                .contains('Abdomen') &&
                            controller.rashPresentList[i] == 'Abdomen' &&
                            !controller.isRashAbsent.value,
                        child: Obx(() => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                List.generate(controller.faceList.length, (i) {
                              return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CommonCheckBox(
                                      checkedIcon: Icons.check_box,
                                      unCheckedIcon:
                                          Icons.check_box_outline_blank,
                                      onTap: () {
                                        if (controller.selectedAbdomen
                                            .contains(controller.faceList[i])) {
                                          controller.selectedAbdomen
                                              .remove(controller.faceList[i]);
                                        } else {
                                          controller.selectedAbdomen
                                              .add(controller.faceList[i]);
                                        }
                                      },
                                      isSelected: controller.selectedAbdomen
                                          .contains(controller.faceList[i]),
                                      name: controller.faceList[i],
                                    ).paddingOnly(
                                        bottom: Dimens.gapX1,
                                        left: Dimens.gapX3),
                                  ]);
                            })))),
                    Visibility(
                        visible:
                            controller.selectedRashPresent.contains('Groin') &&
                                controller.rashPresentList[i] == 'Groin' &&
                                !controller.isRashAbsent.value,
                        child: Obx(() => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                List.generate(controller.faceList.length, (i) {
                              return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CommonCheckBox(
                                      checkedIcon: Icons.check_box,
                                      unCheckedIcon:
                                          Icons.check_box_outline_blank,
                                      onTap: () {
                                        if (controller.selectedGroin
                                            .contains(controller.faceList[i])) {
                                          controller.selectedGroin
                                              .remove(controller.faceList[i]);
                                        } else {
                                          controller.selectedGroin
                                              .add(controller.faceList[i]);
                                        }
                                      },
                                      isSelected: controller.selectedGroin
                                          .contains(controller.faceList[i]),
                                      name: controller.faceList[i],
                                    ).paddingOnly(
                                        bottom: Dimens.gapX1,
                                        left: Dimens.gapX3),
                                  ]);
                            })))),
                    Visibility(
                        visible:
                            controller.selectedRashPresent.contains('Back') &&
                                controller.rashPresentList[i] == 'Back' &&
                                !controller.isRashAbsent.value,
                        child: Obx(() => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                List.generate(controller.faceList.length, (i) {
                              return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CommonCheckBox(
                                      checkedIcon: Icons.check_box,
                                      unCheckedIcon:
                                          Icons.check_box_outline_blank,
                                      onTap: () {
                                        if (controller.selectedBack
                                            .contains(controller.faceList[i])) {
                                          controller.selectedBack
                                              .remove(controller.faceList[i]);
                                        } else {
                                          controller.selectedBack
                                              .add(controller.faceList[i]);
                                        }
                                      },
                                      isSelected: controller.selectedBack
                                          .contains(controller.faceList[i]),
                                      name: controller.faceList[i],
                                    ).paddingOnly(
                                        bottom: Dimens.gapX1,
                                        left: Dimens.gapX3),
                                  ]);
                            })))),
                    Visibility(
                        visible:
                            controller.selectedRashPresent.contains('Arms') &&
                                controller.rashPresentList[i] == 'Arms' &&
                                !controller.isRashAbsent.value,
                        child: Obx(() => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                List.generate(controller.faceList.length, (i) {
                              return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CommonCheckBox(
                                      checkedIcon: Icons.check_box,
                                      unCheckedIcon:
                                          Icons.check_box_outline_blank,
                                      onTap: () {
                                        if (controller.selectedArms
                                            .contains(controller.faceList[i])) {
                                          controller.selectedArms
                                              .remove(controller.faceList[i]);
                                        } else {
                                          controller.selectedArms
                                              .add(controller.faceList[i]);
                                        }
                                      },
                                      isSelected: controller.selectedArms
                                          .contains(controller.faceList[i]),
                                      name: controller.faceList[i],
                                    ).paddingOnly(
                                        bottom: Dimens.gapX1,
                                        left: Dimens.gapX3),
                                  ]);
                            })))),
                    Visibility(
                        visible:
                            controller.selectedRashPresent.contains('Hands') &&
                                controller.rashPresentList[i] == 'Hands' &&
                                !controller.isRashAbsent.value,
                        child: Obx(() => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                List.generate(controller.faceList.length, (i) {
                              return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CommonCheckBox(
                                      checkedIcon: Icons.check_box,
                                      unCheckedIcon:
                                          Icons.check_box_outline_blank,
                                      onTap: () {
                                        if (controller.selectedHands
                                            .contains(controller.faceList[i])) {
                                          controller.selectedHands
                                              .remove(controller.faceList[i]);
                                        } else {
                                          controller.selectedHands
                                              .add(controller.faceList[i]);
                                        }
                                      },
                                      isSelected: controller.selectedHands
                                          .contains(controller.faceList[i]),
                                      name: controller.faceList[i],
                                    ).paddingOnly(
                                        bottom: Dimens.gapX1,
                                        left: Dimens.gapX3),
                                  ]);
                            })))),
                    Visibility(
                        visible:
                            controller.selectedRashPresent.contains('Legs') &&
                                controller.rashPresentList[i] == 'Legs' &&
                                !controller.isRashAbsent.value,
                        child: Obx(() => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                List.generate(controller.faceList.length, (i) {
                              return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CommonCheckBox(
                                      checkedIcon: Icons.check_box,
                                      unCheckedIcon:
                                          Icons.check_box_outline_blank,
                                      onTap: () {
                                        if (controller.selectedLegs
                                            .contains(controller.faceList[i])) {
                                          controller.selectedLegs
                                              .remove(controller.faceList[i]);
                                        } else {
                                          controller.selectedLegs
                                              .add(controller.faceList[i]);
                                        }
                                      },
                                      isSelected: controller.selectedLegs
                                          .contains(controller.faceList[i]),
                                      name: controller.faceList[i],
                                    ).paddingOnly(
                                        bottom: Dimens.gapX1,
                                        left: Dimens.gapX3),
                                  ]);
                            })))),
                    Visibility(
                        visible:
                            controller.selectedRashPresent.contains('Feet') &&
                                controller.rashPresentList[i] == 'Feet' &&
                                !controller.isRashAbsent.value,
                        child: Obx(() => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                List.generate(controller.faceList.length, (i) {
                              return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CommonCheckBox(
                                      checkedIcon: Icons.check_box,
                                      unCheckedIcon:
                                          Icons.check_box_outline_blank,
                                      onTap: () {
                                        if (controller.selectedFeet
                                            .contains(controller.faceList[i])) {
                                          controller.selectedFeet
                                              .remove(controller.faceList[i]);
                                        } else {
                                          controller.selectedFeet
                                              .add(controller.faceList[i]);
                                        }
                                      },
                                      isSelected: controller.selectedFeet
                                          .contains(controller.faceList[i]),
                                      name: controller.faceList[i],
                                    ).paddingOnly(
                                        bottom: Dimens.gapX1,
                                        left: Dimens.gapX3),
                                  ]);
                            })))),
                  ],
                );
              },
            ),
          ).paddingOnly(left: Dimens.gapX3),
        ),
      ],
    );
  }

  Widget commonMultipleWidget({
    required List<String> list,
    required String selectedValue,
    required Function(String) onSelect,
  }) {
    return Obx(
      () => StaggeredGrid.count(
        crossAxisCount: Get.width < 600 ? 1 : 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
        children: List.generate(
          list.length,
          (i) => CommonCheckBox(
            checkedIcon: Icons.check_box,
            unCheckedIcon: Icons.check_box_outline_blank,
            isActive: true,
            name: list[i],
            isSelected: list[i] == selectedValue,
            onTap: () => onSelect(list[i]),
          ).paddingSymmetric(horizontal: Dimens.gapX2),
        ),
      ),
    );
  }
}
