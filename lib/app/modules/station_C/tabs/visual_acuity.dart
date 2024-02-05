import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/modules/station_C/controllers/station_c_controller.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/utils/helper/text_field_wrapper.dart';
import '../../../../utils/helper/validators.dart';
import '../../../../widgets/common_check_box.dart';
import '../../../../widgets/common_input_field.dart';
import '../../../../widgets/common_text.dart';
import '../../../../widgets/text/common_text.dart';
import '../../../../widgets/toggle/common_switch.dart';
import '../../../data/values/dimens.dart';
import '../../../themes/app_colors.dart';

class StationCVisualAcuityView extends GetView<StationCController> {
  const StationCVisualAcuityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        boxShadow: [BoxShadow(blurRadius: 15, color: AppColors.greyColor)],
      ),
      child: Form(
        key: controller.visualAcuityFormKey,
        child: Get.width < 600
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CommonText(text: "Visual Acuity With Glasses / Lenses"),
                  const SizedBox(
                    height: Dimens.gapX2,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: Dimens.gapX3),
                        child: Text(
                          "Distant Vision",
                          style: AppStyles.tsBlackSemi20,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset(
                            AppImages.farPoint,
                            width: Dimens.screenWidthXFourth,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: Dimens.gapX2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      optionValueWidget(
                        name: 'Right',
                        wrapper: controller.distantRightVisionWrapper,
                        withGlasses: true,
                      ),
                      Dimens.heightGap2,
                      optionValueWidget(
                        name: 'Left',
                        wrapper: controller.distantLeftVisionWrapper,
                        withGlasses: true,
                      ),
                    ],
                  ).paddingSymmetric(horizontal: Dimens.gapX2),
                  const SizedBox(
                    height: Dimens.gapX3,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: Dimens.gapX3),
                        child: Text(
                          "Near Vision",
                          style: AppStyles.tsBlackSemi20,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset(
                            AppImages.nearPoint,
                            width: Dimens.screenWidthXFourth,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: Dimens.gapX2,
                  ),
                  Column(
                    children: [
                      optionValueWidget(
                        name: 'Right',
                        wrapper: controller.nearRightVisionWrapper,
                        withGlasses: true,
                      ),
                      Dimens.heightGap2,
                      optionValueWidget(
                        name: 'Left',
                        wrapper: controller.nearLeftVisionWrapper,
                        withGlasses: true,
                      ),
                    ],
                  ).paddingSymmetric(horizontal: Dimens.gapX2),
                  const SizedBox(
                    height: Dimens.gapX4,
                  ),
                  const CommonText(
                      text: "Visual Acuity WithOut Glasses / Lenses"),
                  const SizedBox(
                    height: Dimens.gapX0_5,
                  ),
                  const Text("(When Needed)", style: AppStyles.tsBrownMedium24),
                  const SizedBox(
                    height: Dimens.gapX2,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: Dimens.gapX3),
                        child: Text(
                          "Distant Vision",
                          style: AppStyles.tsBlackSemi20,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset(
                            AppImages.farPoint,
                            width: Dimens.screenWidthXFourth,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: Dimens.gapX2,
                  ),
                  Column(
                    children: [
                      optionValueWidget(
                        name: 'Right',
                        wrapper:
                            controller.distantRightWithOutGlassVisionWrapper,
                        withGlasses: false,
                      ),
                      Dimens.heightGap2,
                      optionValueWidget(
                        name: 'Left',
                        wrapper:
                            controller.distantLeftWithOutGlassVisionWrapper,
                        withGlasses: false,
                      ),
                    ],
                  ).paddingSymmetric(horizontal: Dimens.gapX2),
                  const SizedBox(
                    height: Dimens.gapX2,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: Dimens.gapX3),
                        child: Text(
                          "Near Vision",
                          style: AppStyles.tsBlackSemi20,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset(
                            AppImages.nearPoint,
                            width: Dimens.screenWidthXFourth,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: Dimens.gapX2,
                  ),
                  Column(
                    children: [
                      optionValueWidget(
                        name: 'Right',
                        wrapper: controller.nearRightWithOutGlassVisionWrapper,
                        withGlasses: false,
                      ),
                      Dimens.heightGap2,
                      optionValueWidget(
                        name: 'Left',
                        wrapper: controller.nearLeftWithOutGlassVisionWrapper,
                        withGlasses: false,
                      ),
                    ],
                  ).paddingSymmetric(horizontal: Dimens.gapX2),
                  const SizedBox(
                    height: Dimens.gapX3,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: heading(
                        text: "Color Blindness",
                      )),
                      const SizedBox(width: Dimens.gapX4),
                      CommonSwitch(
                        onTap: (value) {
                          controller.isColorBlind.value = value;
                        },
                        initialSwitchValue: controller.isColorBlind.value,
                      ),
                    ],
                  ),
                  const SizedBox(height: Dimens.gapX2),
                  Obx(() => Visibility(
                      visible: controller.isColorBlind.value,
                      child: Obx(
                        () => StaggeredGrid.count(
                          crossAxisCount: Get.width < 600 ? 1 : 2,
                          mainAxisSpacing: 24,
                          crossAxisSpacing: 12,
                          children: List.generate(
                            controller.colorBlindOptionList.length,
                            (i) => CommonCheckBox(
                              isActive: controller.isColorBlind.value,
                              name: controller.colorBlindOptionList[i],
                              isSelected: controller.colorBlindOptionList[i] ==
                                  controller.selectedColorBlindOption.value,
                              onTap: () {
                                controller.selectedColorBlindOption.value =
                                    controller.colorBlindOptionList[i];
                              },
                            ),
                          ),
                        ).paddingSymmetric(horizontal: Dimens.gapX2),
                      ))),
                ],
              ).paddingAll(Dimens.gapX3)
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CommonText(text: "Visual Acuity With Glasses / Lenses"),
                  const SizedBox(
                    height: Dimens.gapX2,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: Dimens.gapX3),
                        child: Text(
                          "Distant Vision",
                          style: AppStyles.tsBlackSemi20,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset(
                            AppImages.farPoint,
                            width: Dimens.screenWidthXFourth,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: Dimens.gapX2,
                  ),
                  Row(
                    children: [
                      optionValueWidget(
                        name: 'Right',
                        wrapper: controller.distantRightVisionWrapper,
                        withGlasses: true,
                      ),
                      optionValueWidget(
                        name: 'Left',
                        wrapper: controller.distantLeftVisionWrapper,
                        withGlasses: true,
                      ),
                    ],
                  ).paddingSymmetric(horizontal: Dimens.gapX2),
                  const SizedBox(
                    height: Dimens.gapX3,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: Dimens.gapX3),
                        child: Text(
                          "Near Vision",
                          style: AppStyles.tsBlackSemi20,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset(
                            AppImages.nearPoint,
                            width: Dimens.screenWidthXFourth,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: Dimens.gapX2,
                  ),
                  Row(
                    children: [
                      optionValueWidget(
                        name: 'Right',
                        wrapper: controller.nearRightVisionWrapper,
                        withGlasses: true,
                      ),
                      optionValueWidget(
                        name: 'Left',
                        wrapper: controller.nearLeftVisionWrapper,
                        withGlasses: true,
                      ),
                    ],
                  ).paddingSymmetric(horizontal: Dimens.gapX2),
                  const SizedBox(
                    height: Dimens.gapX4,
                  ),
                  const CommonText(
                      text: "Visual Acuity WithOut Glasses / Lenses"),
                  const SizedBox(
                    height: Dimens.gapX0_5,
                  ),
                  const Text("(When Needed)", style: AppStyles.tsBrownMedium24),
                  const SizedBox(
                    height: Dimens.gapX2,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: Dimens.gapX3),
                        child: Text(
                          "Distant Vision",
                          style: AppStyles.tsBlackSemi20,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset(
                            AppImages.farPoint,
                            width: Dimens.screenWidthXFourth,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: Dimens.gapX2,
                  ),
                  Row(
                    children: [
                      optionValueWidget(
                        name: 'Right',
                        wrapper:
                            controller.distantRightWithOutGlassVisionWrapper,
                        withGlasses: false,
                      ),
                      optionValueWidget(
                        name: 'Left',
                        wrapper:
                            controller.distantLeftWithOutGlassVisionWrapper,
                        withGlasses: false,
                      ),
                    ],
                  ).paddingSymmetric(horizontal: Dimens.gapX2),
                  const SizedBox(
                    height: Dimens.gapX2,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: Dimens.gapX3),
                        child: Text(
                          "Near Vision",
                          style: AppStyles.tsBlackSemi20,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset(
                            AppImages.nearPoint,
                            width: Dimens.screenWidthXFourth,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: Dimens.gapX2,
                  ),
                  Row(
                    children: [
                      optionValueWidget(
                        name: 'Right',
                        wrapper: controller.nearRightWithOutGlassVisionWrapper,
                        withGlasses: false,
                      ),
                      optionValueWidget(
                        name: 'Left',
                        wrapper: controller.nearLeftWithOutGlassVisionWrapper,
                        withGlasses: false,
                      ),
                    ],
                  ).paddingSymmetric(horizontal: Dimens.gapX2),
                  const SizedBox(
                    height: Dimens.gapX3,
                  ),
                  Row(
                    children: [
                      heading(
                        text: "Color Blindness",
                      ),
                      const SizedBox(width: Dimens.gapX4),
                      CommonSwitch(
                        onTap: (value) {
                          controller.isColorBlind.value = value;
                        },
                        initialSwitchValue: controller.isColorBlind.value,
                      ),
                    ],
                  ),
                  const SizedBox(height: Dimens.gapX2),
                  Obx(() => Visibility(
                      visible: controller.isColorBlind.value,
                      child: Obx(
                        () => StaggeredGrid.count(
                          crossAxisCount: Get.width < 600 ? 1 : 2,
                          mainAxisSpacing: 24,
                          crossAxisSpacing: 12,
                          children: List.generate(
                            controller.colorBlindOptionList.length,
                            (i) => CommonCheckBox(
                              isActive: controller.isColorBlind.value,
                              name: controller.colorBlindOptionList[i],
                              isSelected: controller.colorBlindOptionList[i] ==
                                  controller.selectedColorBlindOption.value,
                              onTap: () {
                                controller.selectedColorBlindOption.value =
                                    controller.colorBlindOptionList[i];
                              },
                            ),
                          ),
                        ).paddingSymmetric(horizontal: Dimens.gapX2),
                      ))),
                ],
              ).paddingAll(Dimens.gapX4),
      ),
    ).paddingSymmetric(horizontal: Dimens.gapX3);
  }

  Widget optionValueWidget({
    required String name,
    required TextFieldWrapper wrapper,
    bool withGlasses = true,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: Dimens.gapX3),
      child: Row(
        children: [
          Text(
            name,
            style: AppStyles.tsBlackMedium18,
          ),
          const SizedBox(
            width: Dimens.gapX5,
          ),
          SizedBox(
            width: Dimens.gapX5,
            child: CommonInputField(
              validator: withGlasses ? mandatoryValidator : null,
              inputType: TextInputType.number,
              maxLength: 1,
              wrapper: wrapper,
            ),
          ),
          const SizedBox(
            width: Dimens.gapX1,
          ),
          const Text(
            " / 6",
            style: AppStyles.tsBlackMedium20,
          ),
        ],
      ),
    );
  }
}
