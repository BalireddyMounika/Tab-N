import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/modules/station_H/controllers/station_h_controller.dart';
import 'package:nivish/app/modules/station_H/widget/station_h_option_widget.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/widgets/common_check_box.dart';
import 'package:nivish/widgets/common_input_field.dart';
import 'package:nivish/widgets/toggle/two_option_selector_widget.dart';

import '../../../../widgets/Age_Gender_validations.dart';

class TabTwo extends GetView<StationHController> {
  const TabTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(blurRadius: 15, color: AppColors.greyColor),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Get.width < 600
              ? Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset(
                        AppImages.oralHygiene,
                        height: Dimens.gapX6,
                        width: Dimens.screenWidthXFourth,
                      )),
                  Obx(
                    () => DoubleOptionSelector(
                      label: 'Oral Hygiene',
                      optionOne: 'Satisfactory',
                      optionTwo: 'Poor',
                      isOptionOneSelected: controller.isSatisfactory.value,
                      onSelectOption: (v) {
                        controller.isSatisfactory.value = v;
                      },
                    ),
                  ),
                ])
              : Row(
                  children: [
                    Obx(
                      () => DoubleOptionSelector(
                        label: 'Oral Hygiene',
                        optionOne: 'Satisfactory',
                        optionTwo: 'Poor',
                        isOptionOneSelected: controller.isSatisfactory.value,
                        onSelectOption: (v) {
                          controller.isSatisfactory.value = v;
                        },
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      AppImages.oralHygiene,
                      height: Dimens.gapX6,
                      width: Dimens.screenWidthX10,
                    )
                  ],
                ),
          const SizedBox(height: Dimens.gapX4),
          stationHOptionWidget(
            name: 'Plaque',
            isOptionOneSelected: controller.isPlaque,
            onSelect: (v) {
              controller.isPlaque.value = v;
            },
          ),
          const SizedBox(height: Dimens.gapX4),
          stationHOptionWidget(
            name: 'Dental Stains',
            isOptionOneSelected: controller.isDentalStains,
            onSelect: (v) {
              controller.isDentalStains.value = v;
            },
          ),
          const SizedBox(height: Dimens.gapX4),
          stationHOptionWidget(
            name: 'Malocclusion',
            isOptionOneSelected: controller.isMalocclusion,
            onSelect: (v) {
              controller.isMalocclusion.value = v;
            },
          ),
          const SizedBox(height: Dimens.gapX4),
          stationHOptionWidget(
            name: 'Crowding',
            isOptionOneSelected: controller.isCrowding,
            onSelect: (v) {
              controller.isCrowding.value = v;
            },
          ),
          if (StudentInfo.calculateAge() >= 2)
            const SizedBox(height: Dimens.gapX4),
          if (StudentInfo.calculateAge() >= 2)
            stationHOptionWidget(
              name: 'Impacted Tooth',
              isOptionOneSelected: controller.isImpactedTooth,
              onSelect: (v) {
                controller.isImpactedTooth.value = v;
              },
            ),
          if (StudentInfo.calculateAge() >= 2)
            Obx(
              () => Visibility(
                visible: controller.isImpactedTooth.value,
                child: Form(
                  key: controller.impactedToothFormKey,
                  child: Padding(
                      padding: const EdgeInsets.only(
                          left: Dimens.gapX6, top: Dimens.gapX1),
                      child: Obx(
                        () => Row(
                          children: [
                            CommonCheckBox(
                                name: 'Position',
                                isSelected:
                                    controller.isImpactedToothPosition.value,
                                onTap: () => controller
                                    .onCheckedImpactedToothPosition()),
                            const SizedBox(width: Dimens.gapX2),
                            Expanded(
                                child:
                                CommonInputField(
                                  hintText: "Type here",
                              isEnabled:
                                  controller.isImpactedToothPosition.value,
                              wrapper: controller.impactedToothYesPosition,
                            )
                            ),
                          ],
                        ),
                      )),
                  // CommonInputField(
                  //   wrapper: controller.impactedToothYesPosition,
                  //   validator: controller.isImpactedTooth.value
                  //       ? mandatoryValidator
                  //       : null,
                  // ).paddingOnly(
                  //     top: Dimens.gapX2, left: Dimens.gapX4, right: Dimens.gapX4),
                ),
              ),
            ),
          const SizedBox(height: Dimens.gapX2),
          stationHOptionWidget(
            name: 'Worn Enamel ',
            isOptionOneSelected: controller.isWornEnamel,
            onSelect: (v) {
              controller.isWornEnamel.value = v;
            },
          ),
        ],
      ).paddingAll(Dimens.gapX4),
    ).paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
