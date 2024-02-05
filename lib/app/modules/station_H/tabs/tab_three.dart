import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/modules/station_H/controllers/station_h_controller.dart';
import 'package:nivish/app/modules/station_H/widget/station_h_option_widget.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/widgets/common_check_box.dart';

import '../../../../widgets/toggle/two_option_selector_widget.dart';

class TabThree extends GetView<StationHController> {
  const TabThree({Key? key}) : super(key: key);

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
          Row(
            children: [
              Obx(
                () => DoubleOptionSelector(
                  label: 'Sensitivity',
                  optionOne: 'Yes',
                  optionTwo: 'No',
                  isOptionOneSelected: controller.isSensitivity.value,
                  onSelectOption: (v) {
                    controller.isSensitivity.value = v;
                  },
                ),
              ),
              const Spacer(),
              SvgPicture.asset(
                AppImages.sensitivity,
                height: Dimens.gapX6,
                width: Dimens.screenWidthX10,
              )
            ],
          ),
          // stationHOptionWidget(
          //     name: 'Sensitivity',
          //     isOptionOneSelected: controller.isSensitivity,
          //     onSelect: (v) {
          //       controller.isSensitivity.value = v;
          //     },
          //     image: AppImages.sensitivity),
          const SizedBox(height: Dimens.gapX4),
          stationHOptionWidget(
            name: 'Untreated Caries',
            isOptionOneSelected: controller.isUntreatedCaries,
            onSelect: (v) {
              controller.isUntreatedCaries.value = v;
            },
          ),
          const SizedBox(height: Dimens.gapX4),
          stationHOptionWidget(
            name: 'Caries Experience',
            isOptionOneSelected: controller.isCariesExperience,
            onSelect: (v) {
              controller.isCariesExperience.value = v;
            },
          ),
          const SizedBox(height: Dimens.gapX4),
          stationHOptionWidget(
            name: 'Dental Sealants Present',
            isOptionOneSelected: controller.isDentalSealantsPresent,
            onSelect: (v) {
              controller.isDentalSealantsPresent.value = v;
            },
          ),
          const SizedBox(height: Dimens.gapX4),
          Column(
            children: [
              stationHOptionWidget(
                name: 'Braces',
                isOptionOneSelected: controller.isBraces,
                onSelect: (v) {
                  controller.isBraces.value = v;
                },
              ),
              nestedCheckboxOption(
                      isActive: controller.isBraces,
                      selectedList: controller.bracesOn,
                      optionOne: 'Upper Teeth',
                      optionTwo: 'Lower Teeth')
                  .paddingOnly(top: Dimens.gapX2),
            ],
          ),
          const SizedBox(height: Dimens.gapX3),
          Column(
            children: [
              stationHOptionWidget(
                name: 'Bridges',
                isOptionOneSelected: controller.isBridges,
                onSelect: (v) {
                  controller.isBridges.value = v;
                },
              ),
              nestedCheckboxOption(
                      isActive: controller.isBridges,
                      selectedList: controller.bridgesOn,
                      optionOne: 'Upper Teeth',
                      optionTwo: 'Lower Teeth')
                  .paddingOnly(top: Dimens.gapX2),
            ],
          ),
          const SizedBox(height: Dimens.gapX3),
          Column(
            children: [
              stationHOptionWidget(
                name: 'Dentures',
                isOptionOneSelected: controller.isDentures,
                onSelect: (v) {
                  controller.isDentures.value = v;
                },
              ),
              nestedCheckboxOption(
                      isActive: controller.isDentures,
                      selectedList: controller.denturesOn,
                      optionOne: 'Upper Jaw',
                      optionTwo: 'Lower Jaw')
                  .paddingOnly(top: Dimens.gapX2),
            ],
          ),
        ],
      ).paddingAll(Dimens.gapX4),
    ).paddingSymmetric(horizontal: Dimens.gapX3);
  }

  Widget nestedCheckboxOption(
      {required RxBool isActive,
      required RxList selectedList,
      required String optionOne,
      required String optionTwo}) {
    return Obx(
      () => Visibility(
        visible: isActive.value,
        child: Row(children: [
          Obx(
            () => CommonCheckBox(
              isActive: isActive.value,
              checkedIcon: Icons.check_box,
              unCheckedIcon: Icons.check_box_outline_blank,
              onTap: () {
                if (!selectedList.contains(optionOne)) {
                  selectedList.add(optionOne);
                } else {
                  selectedList.remove(optionOne);
                }
              },
              // onTap: () => controller.bracesOn.add('Upper Teeth'),
              isSelected: selectedList.contains(optionOne),
              name: optionOne,
            ),
          ),
          const SizedBox(width: Dimens.gapX4),
          Obx(
            () => CommonCheckBox(
              isActive: isActive.value,
              checkedIcon: Icons.check_box,
              unCheckedIcon: Icons.check_box_outline_blank,
              onTap: () {
                if (!selectedList.contains(optionTwo)) {
                  selectedList.add(optionTwo);
                } else {
                  selectedList.remove(optionTwo);
                }
              },
              // onTap: () => controller.bracesOn.add('Upper Teeth'),
              isSelected: selectedList.contains(optionTwo),
              name: optionTwo,
            ),
          )
        ]).paddingSymmetric(horizontal: Dimens.gapX2),
      ),
    );
  }
}
