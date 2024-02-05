import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/toggle/common_switch.dart';
import '../../../../widgets/common_check_box.dart';
import '../../../../widgets/common_input_field.dart';
import '../../../data/values/dimens.dart';
import '../../../themes/app_colors.dart';
import '../controllers/station_e_controller.dart';

class StationEWear extends GetView<StationEController> {
  const StationEWear({Key? key}) : super(key: key);

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
                        const SizedBox(height: Dimens.gapX3),
                        Row(
                          children: [
                            const Expanded(
                                child: Text(
                              "Wear Brace / Support",
                              style: AppStyles.tsBlackSemi20,
                            )),
                            Dimens.widthGap4,
                            CommonSwitch(
                              onTap: (value) {
                                controller.isWearBraceSupport.value = value;
                                controller.selectedWearBrace.clear();
                              },
                              initialSwitchValue:
                                  controller.isWearBraceSupport.value,
                            ),
                          ],
                        ),
                        const SizedBox(height: Dimens.gapX3),
                        Obx(() => Visibility(
                            visible: controller.isWearBraceSupport.value,
                            child: Padding(
                                padding:
                                    const EdgeInsets.only(left: Dimens.gapX3),
                                child: Obx(
                                  () => StaggeredGrid.count(
                                    crossAxisCount: Get.width < 600 ? 1 : 2,
                                    mainAxisSpacing: 24,
                                    crossAxisSpacing: 12,
                                    children: List.generate(
                                      controller.wearBraceListsName.length,
                                      (i) => CommonCheckBox(
                                        checkedIcon: Icons.check_box,
                                        unCheckedIcon:
                                            Icons.check_box_outline_blank,
                                        isActive:
                                            controller.isWearBraceSupport.value,
                                        name: controller
                                            .wearBraceListsName.values
                                            .elementAt(i),
                                        isSelected: controller.selectedWearBrace
                                            .contains(controller
                                                .wearBraceListsName.keys
                                                .elementAt(i)),
                                        onTap: () => controller
                                            .onSelectWearBraceSupport(idx: i),
                                      ),
                                    ),
                                  ),
                                )))),
                        Row(
                          children: [
                            const Expanded(
                                child: Text(
                              "Prosthesis",
                              style: AppStyles.tsBlackSemi20,
                            )),
                            Dimens.widthGap4,
                            CommonSwitch(
                              onTap: (value) {
                                controller.selectedProsthesis.clear();
                                controller.otherProsthesisTextField.controller
                                    .text = '';
                                controller.isProsthesis.value = value;
                              },
                              initialSwitchValue: controller.isProsthesis.value,
                            ),
                          ],
                        ),
                        Obx(
                          () => Visibility(
                              visible: controller.isProsthesis.value,
                              child: Column(children: [
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: Dimens.gapX3),
                                    child: Obx(
                                      () => StaggeredGrid.count(
                                        crossAxisCount: Get.width < 600 ? 1 : 1,
                                        mainAxisSpacing: 24,
                                        crossAxisSpacing: 12,
                                        children: List.generate(
                                          controller.prosthesisListName.length,
                                          (i) => CommonCheckBox(
                                            checkedIcon: Icons.check_box,
                                            unCheckedIcon:
                                                Icons.check_box_outline_blank,
                                            isActive:
                                                controller.isProsthesis.value,
                                            name: controller
                                                .prosthesisListName.values
                                                .elementAt(i),
                                            isSelected: controller
                                                .selectedProsthesis
                                                .contains(controller
                                                    .prosthesisListName.keys
                                                    .elementAt(i)),
                                            onTap: () => controller
                                                .onSelectProsthesis(idx: i),
                                          ),
                                        ),
                                      ),
                                    )),
                                const SizedBox(
                                  height: Dimens.gapX1,
                                ),
                                Obx(() => Visibility(
                                      visible: controller.selectedProsthesis
                                          .contains('Other'),
                                      child: SizedBox(
                                        width: 400,
                                        child: CommonInputField(
                                          isEnabled: controller
                                                  .selectedProsthesis
                                                  .contains('Other') &&
                                              controller.isProsthesis.value,
                                          wrapper: controller
                                              .otherProsthesisTextField,
                                          hintText: 'Type here',
                                        ).paddingSymmetric(
                                            horizontal: Dimens.gapX4),
                                      ),
                                    ))
                              ])),
                        ),
                        Align(
                            alignment: Alignment.topRight,
                            child: SvgPicture.asset(
                              AppImages.knee,
                              height: Dimens.screenHeightX11,
                              width: Dimens.screenWidthX44,
                            ))
                      ]).paddingAll(Dimens.gapX4)
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        const SizedBox(height: Dimens.gapX3),
                        Row(
                          children: [
                            const Text(
                              "Wear Brace / Support",
                              style: AppStyles.tsBlackMedium24,
                            ),
                            Dimens.widthGap4,
                            CommonSwitch(
                              onTap: (value) {
                                controller.isWearBraceSupport.value = value;
                                controller.selectedWearBrace.clear();
                              },
                              initialSwitchValue:
                                  controller.isWearBraceSupport.value,
                            ),
                          ],
                        ),
                        const SizedBox(height: Dimens.gapX3),
                        Obx(() => Visibility(
                            visible: controller.isWearBraceSupport.value,
                            child: Padding(
                                padding:
                                    const EdgeInsets.only(left: Dimens.gapX3),
                                child: Obx(
                                  () => StaggeredGrid.count(
                                    crossAxisCount: Get.width < 600 ? 1 : 2,
                                    mainAxisSpacing: 24,
                                    crossAxisSpacing: 12,
                                    children: List.generate(
                                      controller.wearBraceListsName.length,
                                      (i) => CommonCheckBox(
                                        checkedIcon: Icons.check_box,
                                        unCheckedIcon:
                                            Icons.check_box_outline_blank,
                                        isActive:
                                            controller.isWearBraceSupport.value,
                                        name: controller
                                            .wearBraceListsName.values
                                            .elementAt(i),
                                        isSelected: controller.selectedWearBrace
                                            .contains(controller
                                                .wearBraceListsName.keys
                                                .elementAt(i)),
                                        onTap: () => controller
                                            .onSelectWearBraceSupport(idx: i),
                                      ),
                                    ),
                                  ),
                                )))),
                        Row(
                          children: [
                            const Text(
                              "Prosthesis",
                              style: AppStyles.tsBlackMedium24,
                            ),
                            Dimens.widthGap4,
                            CommonSwitch(
                              onTap: (value) {
                                controller.otherProsthesisTextField.controller
                                    .text = '';
                                controller.selectedProsthesis.clear();
                                controller.isProsthesis.value = value;
                              },
                              initialSwitchValue: controller.isProsthesis.value,
                            ),
                            Expanded(
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: SvgPicture.asset(
                                      AppImages.knee,
                                      height: Dimens.screenHeightX11,
                                      width: Dimens.screenWidthX44,
                                    )))
                          ],
                        ),
                        Obx(() => Visibility(
                            visible: controller.isProsthesis.value,
                            child: Column(children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.only(left: Dimens.gapX3),
                                  child: Obx(
                                    () => StaggeredGrid.count(
                                      crossAxisCount: Get.width < 600 ? 1 : 1,
                                      mainAxisSpacing: 24,
                                      crossAxisSpacing: 12,
                                      children: List.generate(
                                        controller.prosthesisListName.length,
                                        (i) => CommonCheckBox(
                                          checkedIcon: Icons.check_box,
                                          unCheckedIcon:
                                              Icons.check_box_outline_blank,
                                          isActive:
                                              controller.isProsthesis.value,
                                          name: controller
                                              .prosthesisListName.values
                                              .elementAt(i),
                                          isSelected: controller
                                              .selectedProsthesis
                                              .contains(controller
                                                  .prosthesisListName.keys
                                                  .elementAt(i)),
                                          onTap: () => controller
                                              .onSelectProsthesis(idx: i),
                                        ),
                                      ),
                                    ),
                                  )),
                              const SizedBox(
                                height: Dimens.gapX1,
                              ),
                              Obx(
                                () => Visibility(
                                  visible: controller.selectedProsthesis
                                      .contains('Other'),
                                  child: SizedBox(
                                    width: 400,
                                    child: CommonInputField(
                                      isEnabled: controller.selectedProsthesis
                                              .contains('Other') &&
                                          controller.isProsthesis.value,
                                      wrapper:
                                          controller.otherProsthesisTextField,
                                      hintText: 'Type here',
                                    ).paddingSymmetric(
                                        horizontal: Dimens.gapX4),
                                  ),
                                ),
                              )
                            ])))
                      ]).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
