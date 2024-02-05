import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_G/controllers/pubertal_assessment_boys_controller.dart';
import 'package:nivish/app/modules/station_G/widget/common_container.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/common_check_box.dart';
import 'package:nivish/widgets/common_input_field.dart';
import 'package:nivish/widgets/text/common_text.dart';
import 'package:nivish/widgets/toggle/common_switch.dart';
import 'package:nivish/widgets/toggle/two_option_selector_widget.dart';

import '../../../../widgets/Age_Gender_validations.dart';

class PubertalAssessmentBoysTab
    extends GetView<PubertalAssessmentBoysController> {
  const PubertalAssessmentBoysTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          subHeading(
            text: 'Pubertal Assessment-Boys',
          ),
          if (StudentInfo.calculateAge() >= 5 &&
              StudentInfo.calculateAge() < 10)
            buildDoubleOptionSelector('', 'Not Indicated', 'Indicated',
                controller.isPubertalAssessmentBoys),
          Dimens.heightGap1,
          title(text: 'Tanner Score'),
          Dimens.heightGap2,
          StreamBuilder<double>(
            stream: controller.sliderStreamTannerScoreBoys
                .map((range) => range.start),
            initialData: controller.lowerTannerScoreBoys.value,
            builder: (context, snapshot) {
              double min = 0;
              double max = 6;
              int divisions = 6;

              double startFraction = (snapshot.data! - min) / (max - min);
              int startLabel = (startFraction * divisions).round();

              return Column(
                children: [
                  Slider(
                    value: snapshot.data!,
                    min: min,
                    max: max,
                    divisions: divisions,
                    label: (startLabel == 0) ? '$startLabel' : '0$startLabel',
                    onChanged: (value) {
                      controller.updateTannerScoreRangeBoys(
                          RangeValues(value, value));
                      controller.updateSliderStreamTannerScoreBoys(
                          RangeValues(value, value));
                    },
                    activeColor: AppColors.baseColor,
                    inactiveColor: AppColors.greyColor,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('0'),
                        Text('01'),
                        Text('02'),
                        Text('03'),
                        Text('04'),
                        Text('05'),
                        Text('06'),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
          buildDoubleOptionSelector("Cracking In Voice Or Change In Voice",
              "No", 'Yes', controller.isCrackingVoiceBoys),
          buildDoubleOptionSelector(
              "Nightly Emissions", "No", 'Yes', controller.isNightlyEmissions),
          Dimens.heightGap2,
          Row(
            children: [
              const Expanded(
                child: Text(
                  "Have You Experienced A Change In Behaviour Recently",
                  style: AppStyles.tsBlackSemi20,
                ),
              ),
              Dimens.widthGap4,
              CommonSwitch(
                onTap: (value) {
                  controller.isHaveYouExperiencedBoys.value = value;
                  controller.selectedHaveYouExperiencedBoys.clear();
                  controller.selectedQuietBoys.value = '';
                  controller.selectedOutgoingBoys.value = '';
                  controller.selectedAggressiveBoys.value = '';
                  controller.selectedBoldBoys.value = '';
                  controller.selectedCarelessBoys.value = '';
                },
                initialSwitchValue: controller.isHaveYouExperiencedBoys.value,
              ),
            ],
          ),
          haveYouExperiencedBoys(),
          Dimens.heightGap2,
          title(text: 'Prefer Of Company'),
          Dimens.heightGap2,
          preferOfCompany(),
          Row(
            children: [
              const Expanded(
                child: Text(
                  "Any Abnormal finding: eg- Breast Lump, Testicular Lump, Abnormal Genitalia, Pain, Discharge etc",
                  style: AppStyles.tsBlackSemi20,
                ),
              ),
              Dimens.widthGap4,
              CommonSwitch(
                onTap: (value) {

                  controller.isAnyAbnormalFindingsBoys.value = value;
                  controller.anyAbnormalFindingsWrapperBoys.controller.clear();
                },
                initialSwitchValue: controller.isAnyAbnormalFindingsBoys.value,
              ),
            ],
          ),
          anyAbnormalFindings(),
        ],
      ).paddingAll(Dimens.gapX3),
    );
  }

  Widget buildDoubleOptionSelector(String label, String optionOne,
      String optionTwo, RxBool isOptionOneSelected) {
    return Obx(
      () => DoubleOptionSelector(
        label: label,
        optionOne: optionOne,
        optionTwo: optionTwo,
        isOptionOneSelected: isOptionOneSelected.value,
        onSelectOption: (v) {
          isOptionOneSelected.value = v;
        },
      ).paddingOnly(top: Dimens.gapX3),
    );
  }

  Widget anyAbnormalFindings() {
    return Obx(() => Visibility(
          visible: controller.isAnyAbnormalFindingsBoys.value,
          child: CommonInputField(
            wrapper: controller.anyAbnormalFindingsWrapperBoys,
            maxLine: 6,
            maxLength: 250,
            hintText: ' Type here upto 250 characters',
          )
              .paddingSymmetric(
                horizontal: Dimens.gapX2,
                vertical: Dimens.gapX2,
              )
              .paddingOnly(bottom: Dimens.gapX2),
        ));
  }

  Widget preferOfCompany() {
    return Obx(
      () => StaggeredGrid.count(
        crossAxisCount: Get.width < 600 ? 1 : 2,
        mainAxisSpacing: 24,
        crossAxisSpacing: 12,
        children: List.generate(
          controller.preferOfCompanyBoys.length,
          (i) {
            bool isSelected = controller.selectedPreferOfCompanyBoys.value ==
                controller.preferOfCompanyBoys[i];
            return CommonCheckBox(
              name: controller.preferOfCompanyBoys[i],
              isSelected: isSelected,
              onTap: () => controller.selectedPreferOfCompanyBoys.value =
                  controller.preferOfCompanyBoys[i],
            );
          },
        ),
      )
          .paddingSymmetric(horizontal: Dimens.gapX4)
          .paddingOnly(bottom: Dimens.gapX2),
    );
  }

  Widget commonMultipleWidget({
    required List<String> list,
    required String selectedValue,
    required Function(String) onSelect,
  }) {
    return Obx(
      () => StaggeredGrid.count(
        crossAxisCount: Get.width < 600 ? 1 : 3,
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
        children: List.generate(
          list.length,
          (i) => CommonCheckBox(
            isActive: true, // You may need to set this based on your logic
            name: list[i],
            isSelected: list[i] == selectedValue,
            onTap: () => onSelect(list[i]),
          ).paddingSymmetric(horizontal: Dimens.gapX2),
        ),
      ),
    );
  }

  Widget haveYouExperiencedBoys() {
    return Obx(
      () => Visibility(
        visible: controller.isHaveYouExperiencedBoys.value,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            controller.haveYouExperiencedOptionsBoys.length,
            (i) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonCheckBox(
                    isActive: controller.isHaveYouExperiencedBoys.value,
                    checkedIcon: Icons.check_box,
                    unCheckedIcon: Icons.check_box_outline_blank,
                    onTap: () {
                      if (controller.selectedHaveYouExperiencedBoys.contains(
                          controller.haveYouExperiencedOptionsBoys[i])) {
                        controller.selectedHaveYouExperiencedBoys.remove(
                            controller.haveYouExperiencedOptionsBoys[i]);
                      } else {
                        controller.selectedHaveYouExperiencedBoys
                            .add(controller.haveYouExperiencedOptionsBoys[i]);
                      }
                    },
                    isSelected: controller.selectedHaveYouExperiencedBoys
                        .contains(controller.haveYouExperiencedOptionsBoys[i]),
                    name: controller.haveYouExperiencedOptionsBoys[i],
                  ).paddingOnly(bottom: Dimens.gapX1),
                  Visibility(
                    visible: controller.selectedHaveYouExperiencedBoys
                            .contains('Quiet and Withdrawn') &&
                        controller.haveYouExperiencedOptionsBoys[i] ==
                            'Quiet and Withdrawn' &&
                        controller.isHaveYouExperiencedBoys.value,
                    child: commonMultipleWidget(
                      list: controller.haveYouCommonOptionsBoys,
                      selectedValue: controller.selectedQuietBoys.value,
                      onSelect: (name) =>
                          controller.onSelectQuietBoys(name: name),
                    ).paddingOnly(bottom: Dimens.gapX1),
                  ),
                  Visibility(
                    visible: controller.selectedHaveYouExperiencedBoys
                            .contains('Outgoing') &&
                        controller.haveYouExperiencedOptionsBoys[i] ==
                            'Outgoing' &&
                        controller.isHaveYouExperiencedBoys.value,
                    child: commonMultipleWidget(
                      list: controller.haveYouCommonOptionsBoys,
                      selectedValue: controller.selectedOutgoingBoys.value,
                      onSelect: (name) =>
                          controller.onSelectOutgoingBoys(name: name),
                    ).paddingOnly(bottom: Dimens.gapX1),
                  ),
                  Visibility(
                    visible: controller.selectedHaveYouExperiencedBoys
                            .contains('Aggressive') &&
                        controller.haveYouExperiencedOptionsBoys[i] ==
                            'Aggressive' &&
                        controller.isHaveYouExperiencedBoys.value,
                    child: commonMultipleWidget(
                      list: controller.haveYouCommonOptionsBoys,
                      selectedValue: controller.selectedAggressiveBoys.value,
                      onSelect: (name) =>
                          controller.onSelectAggressiveBoys(name: name),
                    ).paddingOnly(bottom: Dimens.gapX1),
                  ),
                  Visibility(
                    visible: controller.selectedHaveYouExperiencedBoys
                            .contains('Bold and Daring') &&
                        controller.haveYouExperiencedOptionsBoys[i] ==
                            'Bold and Daring' &&
                        controller.isHaveYouExperiencedBoys.value,
                    child: commonMultipleWidget(
                      list: controller.haveYouCommonOptionsBoys,
                      selectedValue: controller.selectedBoldBoys.value,
                      onSelect: (name) =>
                          controller.onSelectBoldBoys(name: name),
                    ).paddingOnly(bottom: Dimens.gapX1),
                  ),
                  Visibility(
                    visible: controller.selectedHaveYouExperiencedBoys
                            .contains('Careless') &&
                        controller.haveYouExperiencedOptionsBoys[i] ==
                            'Careless' &&
                        controller.isHaveYouExperiencedBoys.value,
                    child: commonMultipleWidget(
                      list: controller.haveYouCommonOptionsBoys,
                      selectedValue: controller.selectedCarelessBoys.value,
                      onSelect: (name) =>
                          controller.onSelectCarelessBoys(name: name),
                    ).paddingOnly(bottom: Dimens.gapX1),
                  ),
                ],
              );
            },
          ),
        ).paddingOnly(left: Dimens.gapX3, top: Dimens.gapX2),
      ),
    );
  }
}
