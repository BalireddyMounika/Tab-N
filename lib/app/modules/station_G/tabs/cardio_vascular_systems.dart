import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/modules/station_G/controllers/cardio_vascular_systems_controller.dart';
import 'package:nivish/app/modules/station_G/widget/common_container.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/utils/helper/text_field_wrapper.dart';
import 'package:nivish/widgets/common_check_box.dart';
import 'package:nivish/widgets/common_input_field.dart';
import 'package:nivish/widgets/text/common_text.dart';
import 'package:nivish/widgets/toggle/two_option_selector_widget.dart';

import '../../../../widgets/Age_Gender_validations.dart';

class CardioVascularSystemsTab
    extends GetView<CardioVascularSystemsController> {
  const CardioVascularSystemsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            subHeading(
              text: 'Cardio-Vascular Systems',
            ),
            Expanded(
              child: Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset(
                    AppImages.cardio,
                    width: Dimens.screenWidthX7,
                  )),
            )
          ],
        ),
        Dimens.heightGap2,
        if (StudentInfo.calculateAge() >= 2)
          Obx(
            () => DoubleOptionSelector(
                label: 'Do you get Palpitation?',
                isOptionOneSelected: controller.doYouGetPalpitation.value,
                onSelectOption: (v) =>
                    controller.doYouGetPalpitation.value = v),
          ),
        Dimens.heightGap2,
        if (StudentInfo.calculateAge() >= 2)
          Obx(
            () => DoubleOptionSelector(
                label:
                    'Have you Fainted in the Home/School/ Workplace at any time?',
                isOptionOneSelected: controller.haveYouFainted.value,
                onSelectOption: (v) => controller.haveYouFainted.value = v),
          ),
        Dimens.heightGap2,
        jugularPulsations(),
        Dimens.heightGap2,
        suprasternalPulsations(),
        Dimens.heightGap2,
        peripheralPulsations(),
        Dimens.heightGap3,
        commonSWidget(name: 'S1', isNormal: controller.isS1Normal),
        Dimens.heightGap2,
        commonSWidget(name: 'S2', isNormal: controller.isS2Normal),
        Dimens.heightGap2,
        Obx(
          () => DoubleOptionSelector(
              label: 'S3',
              optionOne: 'Absent',
              optionTwo: 'Present',
              isOptionOneSelected: controller.isS3Normal.value,
              onSelectOption: (v) => controller.isS3Normal.value = v),
        ),
        Dimens.heightGap2,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => DoubleOptionSelector(
                  label: 'Murmur',
                  optionOne: 'Absent',
                  optionTwo: 'Present',
                  isOptionOneSelected: controller.isMurmurAbsent.value,
                  onSelectOption: (v) => controller.isMurmurAbsent.value = v),
            ),
            Dimens.heightGap2,
            murmurWidget(),
            Dimens.heightGap2,
            clickApexCommonWidget(
              lable: 'Click',
              isOptionOneSelected: controller.isClickAbsent,
              optionOne: 'Absent',
              optionTwo: 'Present',
              wrapper: controller.clickPosition,
            ),
            Dimens.heightGap2,
            clickApexCommonWidget(
              lable: 'Apex Beat',
              isOptionOneSelected: controller.isApexBeatNormal,
              optionOne: 'Normal',
              optionTwo: 'Displaced',
              wrapper: controller.apexBeatPosition,
            ),
          ],
        ),
      ],
    ).paddingAll(Dimens.gapX3));
  }

  Widget clickApexCommonWidget({
    required String lable,
    required RxBool isOptionOneSelected,
    required String optionOne,
    required String optionTwo,
    required TextFieldWrapper wrapper,
  }) {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DoubleOptionSelector(
            label: lable,
            isOptionOneSelected: isOptionOneSelected.value,
            optionOne: optionOne,
            optionTwo: optionTwo,
            onSelectOption: (v) => isOptionOneSelected.value = v,
          ),
          Visibility(
            visible: !isOptionOneSelected.value,
            child: Row(
              children: [
                label(text: 'Position'),
                Dimens.widthGap1,
                Expanded(
                  child: CommonInputField(
                      hintText: "Type here",wrapper: wrapper),
                )
              ],
            ).paddingSymmetric(
                horizontal: Dimens.gapX3, vertical: Dimens.gapX2),
          )
        ],
      ),
    );
  }

  Widget murmurWidget() {
    return Obx(
      () => !controller.isMurmurAbsent.value
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  children: List.generate(
                    controller.murmurPresentOption.length,
                    (idx) => Obx(
                      () {
                        final option = controller.murmurPresentOption[idx];
                        final isSelected = controller
                            .selectedMurmurPresentOption
                            .contains(option);
                        return CommonCheckBox(
                          isMultipleSelection: true,
                          isSelected: isSelected,
                          name: option,
                          onTap: () => controller.onMurmurPresent(name: option),
                        ).paddingSymmetric(horizontal: Dimens.gapX1);
                      },
                    ).paddingOnly(left: Dimens.gapX1),
                  ),
                ),
                Dimens.heightGap2,
                Obx(() => controller.selectedMurmurPresentOption
                        .contains('Other')
                    ? CommonInputField(
                    hintText: "Type here",wrapper: controller.otherMurmurPresent)
                    : const SizedBox.shrink()).paddingOnly(left: Dimens.gapX2)
              ],
            ).paddingSymmetric(horizontal: Dimens.gapX2)
          : const SizedBox.shrink(),
    );
  }

  Widget commonSWidget({
    required String name,
    required RxBool isNormal,
  }) {
    return Obx(
      () => DoubleOptionSelector(
        label: name,
        optionOne: 'Normal',
        optionTwo: 'Abnormal',
        isOptionOneSelected: isNormal.value,
        onSelectOption: (v) {
          isNormal.value = v;
        },
      ),
    );
  }

  Widget jugularPulsations() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => DoubleOptionSelector(
              label: 'Jugular Pulsations',
              optionOne: 'Visible',
              optionTwo: 'Not visible',
              isOptionOneSelected: controller.isJugularPulsationsVisible.value,
              onSelectOption: (v) =>
                  controller.isJugularPulsationsVisible.value = v),
        ),
        Obx(
          () => Visibility(
            visible: controller.isJugularPulsationsVisible.value,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CommonCheckBox(
                          onTap: () => controller
                              .isNotVisibleJugularPulsationsNormal.value = true,
                          isSelected: controller
                              .isNotVisibleJugularPulsationsNormal.value,
                          name: 'Normal'),
                      Dimens.widthGap2,
                      CommonCheckBox(
                          onTap: () => controller
                              .isNotVisibleJugularPulsationsNormal
                              .value = false,
                          isSelected: !controller
                              .isNotVisibleJugularPulsationsNormal.value,
                          name: 'Abnormal'),
                    ],
                  ).paddingSymmetric(horizontal: Dimens.gapX2),
                ),
                Obx(
                  () => Visibility(
                    visible:
                        !controller.isNotVisibleJugularPulsationsNormal.value,
                    child: Wrap(
                      children: List.generate(
                        controller.abnormalJugularPulsationsOption.length,
                        (index) => Obx(
                          () {
                            bool isSelected = controller
                                .selectedAbnormalJugularPulsations
                                .contains(controller
                                    .abnormalJugularPulsationsOption[index]);
                            String name = controller
                                .abnormalJugularPulsationsOption[index];
                            return CommonCheckBox(
                              isMultipleSelection: true,
                              isSelected: isSelected,
                              name: name,
                              onTap: () =>
                                  controller.onSelectAbnormalJugularPulsations(
                                      name: name),
                            ).paddingSymmetric(
                                horizontal: Dimens.gapX1,
                                vertical: Dimens.gapX1);
                          },
                        ),
                      ),
                    ).paddingSymmetric(
                        horizontal: Dimens.gapX3, vertical: Dimens.gapX1),
                  ),
                ),
              ],
            ).paddingOnly(top: Dimens.gapX2, left: Dimens.gapX2),
          ),
        ),
      ],
    );
  }

  Widget suprasternalPulsations() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => DoubleOptionSelector(
              label: 'Suprasternal Pulsations',
              optionOne: 'Absent',
              optionTwo: 'Present',
              isOptionOneSelected:
                  controller.isSuprasternalPulsationsAbsent.value,
              onSelectOption: (v) =>
                  controller.isSuprasternalPulsationsAbsent.value = v),
        ),
        Obx(
          () => Visibility(
            visible: !controller.isSuprasternalPulsationsAbsent.value,
            child: Wrap(
              children: List.generate(
                controller.suprasternalPulsatiosOption.length,
                (index) => Obx(
                  () {
                    bool isSelected =
                        controller.selectedSuprasternalPresentOption.contains(
                            controller.suprasternalPulsatiosOption[index]);
                    String name = controller.suprasternalPulsatiosOption[index];
                    return CommonCheckBox(
                      isMultipleSelection: true,
                      isSelected: isSelected,
                      name: name,
                      onTap: () => controller.onSuprasternalPresent(name: name),
                    ).paddingSymmetric(
                        horizontal: Dimens.gapX1, vertical: Dimens.gapX1);
                  },
                ),
              ),
            ).paddingSymmetric(
                horizontal: Dimens.gapX2, vertical: Dimens.gapX1),
          ).paddingOnly(left: Dimens.gapX1),
        ),
      ],
    );
  }

  Widget peripheralPulsations() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title(text: 'Peripheral Pulsations'),
        Dimens.heightGap2,
        radialDorsalisCommon(
          isPresent: controller.isPeripheralRadialPresent,
          label: 'Radial',
          isNormal: controller.isPeripheralRadialNormal,
          selectedList: controller.selectedPeripheralRadialAbnormal,
          onTap: (v) {
            if (controller.selectedPeripheralRadialAbnormal.contains(v)) {
              controller.selectedPeripheralRadialAbnormal.remove(v);
            } else {
              controller.selectedPeripheralRadialAbnormal.add(v);
            }
          },
        ),
        Dimens.heightGap2,
        radialDorsalisCommon(
          isPresent: controller.isPeripheralDorsalisPresent,
          label: 'Dorsalis Pedis',
          isNormal: controller.isPeripheralDorsalisNormal,
          selectedList: controller.selectedPeripheralDorsalisAbnormal,
          onTap: (v) {
            if (controller.selectedPeripheralDorsalisAbnormal.contains(v)) {
              controller.selectedPeripheralDorsalisAbnormal.remove(v);
            } else {
              controller.selectedPeripheralDorsalisAbnormal.add(v);
            }
          },
        ),
        Dimens.heightGap1,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title(text: 'Other abnormality'),
            Dimens.heightGap1,
            CommonInputField(
                hintText: "Type here",wrapper: controller.otherAbnormality)
                .paddingOnly(left: Dimens.gapX2),
          ],
        ).paddingSymmetric(horizontal: Dimens.gapX2),
      ],
    );
  }

  Widget radialDorsalisCommon({
    required RxBool isPresent,
    required String label,
    required RxBool isNormal,
    required RxList selectedList,
    required Function(String) onTap,
  }) {
    return Obx(
      () {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DoubleOptionSelector(
                label: label,
                optionOne: 'Present',
                optionTwo: 'Absent',
                isOptionOneSelected: isPresent.value,
                onSelectOption: (v) => isPresent.value = v),
            Visibility(
              visible: isPresent.value,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Row(
                      children: [
                        CommonCheckBox(
                            onTap: () => isNormal.value = true,
                            isSelected: isNormal.value,
                            name: 'Normal'),
                        Dimens.widthGap2,
                        CommonCheckBox(
                            onTap: () => isNormal.value = false,
                            isSelected: !isNormal.value,
                            name: 'Abnormal'),
                      ],
                    ).paddingSymmetric(vertical: Dimens.gapX2),
                  ),
                  Obx(
                    () => Visibility(
                      visible: !isNormal.value,
                      child: Wrap(
                        children: List.generate(
                          controller.abnormalPeripheralPulsations.length,
                          (index) => Obx(
                            () {
                              bool isSelected = selectedList.contains(controller
                                  .abnormalPeripheralPulsations[index]);
                              String name = controller
                                  .abnormalPeripheralPulsations[index];
                              return CommonCheckBox(
                                isMultipleSelection: true,
                                isSelected: isSelected,
                                name: name,
                                onTap: () {
                                  onTap(name);
                                },
                              ).paddingSymmetric(vertical: Dimens.gapX1);
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ).paddingOnly(left: Dimens.gapX3),
          ],
        ).paddingSymmetric(horizontal: Dimens.gapX2);
      },
    );
  }
}
