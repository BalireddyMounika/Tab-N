import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_G/controllers/pubertal_assessment_girls_controller.dart';
import 'package:nivish/app/modules/station_G/widget/common_container.dart';
import 'package:nivish/app/modules/station_G/widget/three_option_selector.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/common_check_box.dart';
import 'package:nivish/widgets/common_input_field.dart';
import 'package:nivish/widgets/text/common_text.dart';
import 'package:nivish/widgets/toggle/common_switch.dart';
import 'package:nivish/widgets/toggle/two_option_selector_widget.dart';

import '../../../../widgets/Age_Gender_validations.dart';

class PubertalAssessmentGirlsTab
    extends GetView<PubertalAssessmentGirlsController> {
  const PubertalAssessmentGirlsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      child: Get.width < 600
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                subHeading(
                  text: 'Pubertal Assessment-Girls',
                ),

                indicated(),
                Dimens.heightGap1,
                title(text: 'Tanner Score'),
                Dimens.heightGap2,
                StreamBuilder<double>(
                  stream: controller.sliderStreamTannerScore
                      .map((range) => range.start),
                  initialData: controller.lowerTannerScore.value,
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
                          label: (startLabel == 0)
                              ? '$startLabel'
                              : '0$startLabel',
                          onChanged: (value) {
                            controller.updateTannerScoreRange(
                                RangeValues(value, value));
                            controller.updateSliderStreamTannerScore(
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
                menarcheAge(),
                Dimens.heightGap2,
                menarche(),
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
                        controller.isHaveYouExperienced.value = value;
                        controller.selectedHaveYouExperienced.clear();
                        controller.selectedQuiet.value = '';
                        controller.selectedOutgoing.value = '';
                        controller.selectedAggressive.value = '';
                        controller.selectedBold.value = '';
                        controller.selectedCareless.value = '';
                      },
                      initialSwitchValue: controller.isHaveYouExperienced.value,
                    ),
                  ],
                ),
                haveYouExperienced(),
                Dimens.heightGap2,
                title(text: 'Prefer Of Company'),
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
                        controller.isAnyAbnormalFindings.value = value;
                        controller.anyAbnormalFindingsWrapper.controller
                            .clear();
                      },
                      initialSwitchValue:
                          controller.isAnyAbnormalFindings.value,
                    ),
                  ],
                ),
                anyAbnormalFindings(),
              ],
            ).paddingAll(Dimens.gapX3)
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                subHeading(
                  text: 'Pubertal Assessment-Girls',
                ),
                indicated(),
                Dimens.heightGap1,
                title(text: 'Tanner Score'),
                Dimens.heightGap2,
                StreamBuilder<double>(
                  stream: controller.sliderStreamTannerScore
                      .map((range) => range.start),
                  initialData: controller.lowerTannerScore.value,
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
                          label: (startLabel == 0)
                              ? '$startLabel'
                              : '0$startLabel',
                          onChanged: (value) {
                            controller.updateTannerScoreRange(
                                RangeValues(value, value));
                            controller.updateSliderStreamTannerScore(
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
                menarcheAge(),
                Dimens.heightGap2,
                menarche(),
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
                        controller.isHaveYouExperienced.value = value;
                        controller.selectedHaveYouExperienced.clear();
                        controller.selectedQuiet.value = '';
                        controller.selectedOutgoing.value = '';
                        controller.selectedAggressive.value = '';
                        controller.selectedBold.value = '';
                        controller.selectedCareless.value = '';
                      },
                      initialSwitchValue: controller.isHaveYouExperienced.value,
                    ),
                  ],
                ),
                haveYouExperienced(),
                Dimens.heightGap2,
                title(text: 'Prefer Of Company'),
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
                        controller.isAnyAbnormalFindings.value = value;
                        controller.anyAbnormalFindingsWrapper.controller
                            .clear();
                      },
                      initialSwitchValue:
                          controller.isAnyAbnormalFindings.value,
                    ),
                  ],
                ),
                anyAbnormalFindings(),
              ],
            ).paddingAll(Dimens.gapX3),
    );
  }

  Widget buildThreeOptionSelector(String name, RxString selectedOption) {
    return Obx(
      () => ThreeOptionSelector(
        name: name,
        selectedOption: selectedOption.value,
        onTap: (String selectedValue) {
          selectedOption.value = selectedValue;
        },
      ).paddingOnly(top: Dimens.gapX3),
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
          visible: controller.isAnyAbnormalFindings.value,
          child: CommonInputField(

            wrapper: controller.anyAbnormalFindingsWrapper,
            maxLine: 6,
            maxLength: 250,
            hintText: 'Type here upto 250 characters',
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
          controller.preferOfCompany.length,
          (i) {
            bool isSelected = controller.selectedPreferOfCompany.value ==
                controller.preferOfCompany[i];
            return CommonCheckBox(
              name: controller.preferOfCompany[i],
              isSelected: isSelected,
              onTap: () => controller.selectedPreferOfCompany.value =
                  controller.preferOfCompany[i],
            );
          },
        ),
      )
          .paddingSymmetric(horizontal: Dimens.gapX4)
          .paddingOnly(bottom: Dimens.gapX2, top: Dimens.gapX1),
    );
  }

  Widget indicated() {
    if (StudentInfo.calculateAge() >= 5 && StudentInfo.calculateAge() < 10) {
      return buildDoubleOptionSelector('', 'Not Indicated', 'Indicated',
          controller.isPubertalAssessmentGirls);
    } else {
      controller.isPubertalAssessmentGirls = RxBool(false);
      return const CommonCheckBox(isSelected: true, name: 'Indicated')
          .paddingOnly(left: Dimens.gapX1,top: Dimens.gapX2);
    }
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

  Widget haveYouExperienced() {
    return Obx(
      () => Visibility(
        visible: controller.isHaveYouExperienced.value,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            controller.haveYouExperiencedOptions.length,
            (i) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonCheckBox(
                    isActive: controller.isHaveYouExperienced.value,
                    checkedIcon: Icons.check_box,
                    unCheckedIcon: Icons.check_box_outline_blank,
                    onTap: () {
                      if (controller.selectedHaveYouExperienced
                          .contains(controller.haveYouExperiencedOptions[i])) {
                        controller.selectedHaveYouExperienced
                            .remove(controller.haveYouExperiencedOptions[i]);
                      } else {
                        controller.selectedHaveYouExperienced
                            .add(controller.haveYouExperiencedOptions[i]);
                      }
                    },
                    isSelected: controller.selectedHaveYouExperienced
                        .contains(controller.haveYouExperiencedOptions[i]),
                    name: controller.haveYouExperiencedOptions[i],
                  ).paddingOnly(bottom: Dimens.gapX1),
                  Visibility(
                    visible: controller.selectedHaveYouExperienced
                            .contains('Quiet and Withdrawn') &&
                        controller.haveYouExperiencedOptions[i] ==
                            'Quiet and Withdrawn' &&
                        controller.isHaveYouExperienced.value,
                    child: commonMultipleWidget(
                      list: controller.haveYouCommonOptions,
                      selectedValue: controller.selectedQuiet.value,
                      onSelect: (name) => controller.onSelectQuiet(name: name),
                    ).paddingOnly(bottom: Dimens.gapX1),
                  ),
                  Visibility(
                    visible: controller.selectedHaveYouExperienced
                            .contains('Outgoing') &&
                        controller.haveYouExperiencedOptions[i] == 'Outgoing' &&
                        controller.isHaveYouExperienced.value,
                    child: commonMultipleWidget(
                      list: controller.haveYouCommonOptions,
                      selectedValue: controller.selectedOutgoing.value,
                      onSelect: (name) =>
                          controller.onSelectOutgoing(name: name),
                    ).paddingOnly(bottom: Dimens.gapX1),
                  ),
                  Visibility(
                    visible: controller.selectedHaveYouExperienced
                            .contains('Aggressive') &&
                        controller.haveYouExperiencedOptions[i] ==
                            'Aggressive' &&
                        controller.isHaveYouExperienced.value,
                    child: commonMultipleWidget(
                      list: controller.haveYouCommonOptions,
                      selectedValue: controller.selectedAggressive.value,
                      onSelect: (name) =>
                          controller.onSelectAggressive(name: name),
                    ).paddingOnly(bottom: Dimens.gapX1),
                  ),
                  Visibility(
                    visible: controller.selectedHaveYouExperienced
                            .contains('Bold and Daring') &&
                        controller.haveYouExperiencedOptions[i] ==
                            'Bold and Daring' &&
                        controller.isHaveYouExperienced.value,
                    child: commonMultipleWidget(
                      list: controller.haveYouCommonOptions,
                      selectedValue: controller.selectedBold.value,
                      onSelect: (name) => controller.onSelectBold(name: name),
                    ).paddingOnly(bottom: Dimens.gapX1),
                  ),
                  Visibility(
                    visible: controller.selectedHaveYouExperienced
                            .contains('Careless') &&
                        controller.haveYouExperiencedOptions[i] == 'Careless' &&
                        controller.isHaveYouExperienced.value,
                    child: commonMultipleWidget(
                      list: controller.haveYouCommonOptions,
                      selectedValue: controller.selectedCareless.value,
                      onSelect: (name) =>
                          controller.onSelectCareless(name: name),
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

  Widget threeOptionWidget(
      {required String name,
      Color? labelColor,
      required String selectedOption,
      required String optionOne,
      required String optionTwo,
      required String optionThree,
      required Function(String) onTap}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title(text: name, textColor: labelColor),
        Dimens.heightGap2,
        Wrap(
          runSpacing: Dimens.gapX2,
          spacing: Dimens.gapX3,
          children: [
            CommonCheckBox(
              isSelected: selectedOption == optionOne,
              name: optionOne,
              onTap: () => onTap(optionOne),
            ),
            CommonCheckBox(
              isSelected: selectedOption == optionTwo,
              name: optionTwo,
              onTap: () => onTap(optionTwo),
            ),
            CommonCheckBox(
              isSelected: selectedOption == optionThree,
              name: optionThree,
              onTap: () => onTap(optionThree),
            ),
          ],
        ).paddingSymmetric(horizontal: Dimens.gapX1)
      ],
    );
  }

  Widget menarcheAge() {
    if (StudentInfo.calculateAge() < 7) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Dimens.heightGap3,
          title(text: 'Menarche Attained (In Years)'),
          Dimens.heightGap2,
          const CommonCheckBox(isSelected: true, name: 'No')
              .paddingOnly(left: Dimens.gapX1),
        ],
      );
    } else {
      return buildDoubleOptionSelector(
          "Menarche Attained (In Years)", "No", 'Yes', controller.isMenarche);
    }
  }

  Widget menarche() {
    return Get.width < 600
        ? Obx(() => Visibility(
            visible: !controller.isMenarche.value,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                title(text: 'Age Of Menarche'),
                Dimens.heightGap1,
                CommonInputField(
                  hintText: "Type here",
                  wrapper: controller.ageOfMenarche,
                  inputType: TextInputType.number,
                ).paddingOnly(left: Dimens.gapX2, right: Dimens.gapX15),
                Dimens.heightGap2,
                Dimens.heightGap1,
                const Text(
                  "LMP Date",
                  style: TextStyle(fontSize: 16),
                ),
                Dimens.heightGap1,
                GestureDetector(
                  child: AbsorbPointer(
                    child: CommonInputField(
                      wrapper: controller.lMPdate,
                      prefixIcon: const Icon(
                        Icons.calendar_month_outlined,
                        size: 24,
                      ),
                    ).paddingOnly(right: Dimens.gapX7),
                  ),
                  onTap: () {
                    controller.chooseLMPdate();
                  },
                ).paddingSymmetric(horizontal: Dimens.gapX2),
                Dimens.heightGap2,
                subHeading(text: 'Character'),
                buildDoubleOptionSelector("Regularity", 'Regular', 'Irregular',
                    controller.isRegularity),
                Dimens.heightGap2,
                title(text: 'Frequency In Days'),
                Dimens.heightGap2,
                Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 4,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.frequencyInDays.length,
                      (i) {
                        bool isSelected =
                            controller.selectedFrequencyInDays.value ==
                                controller.frequencyInDays[i];
                        return CommonCheckBox(
                          name: controller.frequencyInDays[i],
                          isSelected: isSelected,
                          onTap: () => controller.selectedFrequencyInDays
                              .value = controller.frequencyInDays[i],
                        );
                      },
                    ),
                  ).paddingSymmetric(horizontal: Dimens.gapX1),
                ),
                Dimens.heightGap2,
                title(text: 'Duration In Days'),
                Dimens.heightGap2,
                Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 4,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.durationInDays.length,
                      (i) {
                        bool isSelected =
                            controller.selectedDurationInDays.value ==
                                controller.durationInDays[i];
                        return CommonCheckBox(
                          name: controller.durationInDays[i],
                          isSelected: isSelected,
                          onTap: () => controller.selectedDurationInDays.value =
                              controller.durationInDays[i],
                        );
                      },
                    ),
                  ).paddingSymmetric(horizontal: Dimens.gapX1),
                ),
                Dimens.heightGap2,
                Obx(
                  () => threeOptionWidget(
                    name: 'Flow',
                    selectedOption: controller.selectedFlow.value,
                    optionOne: 'Scanty',
                    optionTwo: 'Moderate',
                    optionThree: 'Heavy',
                    onTap: (value) {
                      controller.selectedFlow.value = value;
                    },
                  ),
                ),
                Dimens.heightGap2,
                title(text: 'Comfort'),
                Dimens.heightGap2,
                Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.comfort.length,
                      (i) {
                        bool isSelected = controller.selectedComfort.value ==
                            controller.comfort[i];
                        return CommonCheckBox(
                          name: controller.comfort[i],
                          isSelected: isSelected,
                          onTap: () => controller.selectedComfort.value =
                              controller.comfort[i],
                        );
                      },
                    ),
                  ).paddingSymmetric(horizontal: Dimens.gapX1),
                ),
                Dimens.heightGap2,
                buildDoubleOptionSelector(
                    "Pain In Other Parts Of The Body During Menses",
                    "No",
                    'Yes',
                    controller.isPain),
                Obx(
                  () => Visibility(
                    visible: !controller.isPain.value,
                    child: StaggeredGrid.count(
                      crossAxisCount: Get.width < 600 ? 1 : 2,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 12,
                      children: List.generate(
                        controller.painYesOptions.length,
                        (i) {
                          bool isSelected = controller.selectedPainYes
                              .contains(controller.painYesOptions[i]);
                          return CommonCheckBox(
                            checkedIcon: Icons.check_box,
                            unCheckedIcon: Icons.check_box_outline_blank,
                            isActive: true,
                            name: controller.painYesOptions[i],
                            isSelected: isSelected,
                            onTap: () => controller.onSelectPainYesOptions(
                                controller.painYesOptions[i]),
                          );
                        },
                      ),
                    ).paddingSymmetric(
                        horizontal: Dimens.gapX2, vertical: Dimens.gapX1),
                  ),
                ),
                Obx(
                  () => Visibility(
                    visible: controller.selectedPainYes.contains('Other') &&
                        !controller.isPain.value,
                    child: CommonInputField(
                        hintText: "Type here",wrapper: controller.otherPainYes)
                        .paddingSymmetric(
                      horizontal: Dimens.gapX2,
                      vertical: Dimens.gapX2,
                    ),
                  ),
                ),
                buildDoubleOptionSelector(
                    "Cracking In Voice Or Change In Voice",
                    "No",
                    'Yes',
                    controller.isCrackingVoice),
              ],
            ).paddingOnly(left: Dimens.gapX3)))
        : Obx(() => Visibility(
            visible: !controller.isMenarche.value,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    title(text: 'Age Of Menarche'),
                    Expanded(
                        child: CommonInputField(
                          hintText: "Type here",
                      wrapper: controller.ageOfMenarche,
                      inputType: TextInputType.number,
                    ).paddingOnly(left: Dimens.gapX2, right: Dimens.gapX15))
                  ],
                ),
                Dimens.heightGap2,
                Row(
                  children: [
                    Dimens.heightGap1,
                    const Text(
                      "LMP Date",
                      style: TextStyle(fontSize: 16),
                    ),
                    Expanded(
                      child: GestureDetector(
                        child: AbsorbPointer(
                          child: CommonInputField(
                            wrapper: controller.lMPdate,
                            prefixIcon: const Icon(
                              Icons.calendar_month_outlined,
                              size: 24,
                            ),
                          ).paddingOnly(right: Dimens.gapX15),
                        ),
                        onTap: () {
                          controller.chooseLMPdate();
                        },
                      ).paddingSymmetric(horizontal: Dimens.gapX2),
                    ),
                  ],
                ),
                Dimens.heightGap2,
                subHeading(text: 'Character'),
                buildDoubleOptionSelector("Regularity", 'Regular', 'Irregular',
                    controller.isRegularity),
                Dimens.heightGap2,
                title(text: 'Frequency In Days'),
                Dimens.heightGap2,
                Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 4,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.frequencyInDays.length,
                      (i) {
                        bool isSelected =
                            controller.selectedFrequencyInDays.value ==
                                controller.frequencyInDays[i];
                        return CommonCheckBox(
                          name: controller.frequencyInDays[i],
                          isSelected: isSelected,
                          onTap: () => controller.selectedFrequencyInDays
                              .value = controller.frequencyInDays[i],
                        );
                      },
                    ),
                  ).paddingSymmetric(horizontal: Dimens.gapX1),
                ),
                Dimens.heightGap2,
                title(text: 'Duration In Days'),
                Dimens.heightGap2,
                Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 4,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.durationInDays.length,
                      (i) {
                        bool isSelected =
                            controller.selectedDurationInDays.value ==
                                controller.durationInDays[i];
                        return CommonCheckBox(
                          name: controller.durationInDays[i],
                          isSelected: isSelected,
                          onTap: () => controller.selectedDurationInDays.value =
                              controller.durationInDays[i],
                        );
                      },
                    ),
                  ).paddingSymmetric(horizontal: Dimens.gapX1),
                ),
                Dimens.heightGap2,
                Obx(
                  () => threeOptionWidget(
                    name: 'Flow',
                    selectedOption: controller.selectedFlow.value,
                    optionOne: 'Scanty',
                    optionTwo: 'Moderate',
                    optionThree: 'Heavy',
                    onTap: (value) {
                      controller.selectedFlow.value = value;
                    },
                  ),
                ),
                Dimens.heightGap2,
                title(text: 'Comfort'),
                Dimens.heightGap2,
                Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.comfort.length,
                      (i) {
                        bool isSelected = controller.selectedComfort.value ==
                            controller.comfort[i];
                        return CommonCheckBox(
                          name: controller.comfort[i],
                          isSelected: isSelected,
                          onTap: () => controller.selectedComfort.value =
                              controller.comfort[i],
                        );
                      },
                    ),
                  ).paddingSymmetric(horizontal: Dimens.gapX1),
                ),
                Dimens.heightGap2,
                buildDoubleOptionSelector(
                    "Pain In Other Parts Of The Body During Menses",
                    "No",
                    'Yes',
                    controller.isPain),
                Obx(
                  () => Visibility(
                    visible: !controller.isPain.value,
                    child: StaggeredGrid.count(
                      crossAxisCount: Get.width < 600 ? 1 : 2,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 12,
                      children: List.generate(
                        controller.painYesOptions.length,
                        (i) {
                          bool isSelected = controller.selectedPainYes
                              .contains(controller.painYesOptions[i]);
                          return CommonCheckBox(
                            checkedIcon: Icons.check_box,
                            unCheckedIcon: Icons.check_box_outline_blank,
                            isActive: true,
                            name: controller.painYesOptions[i],
                            isSelected: isSelected,
                            onTap: () => controller.onSelectPainYesOptions(
                                controller.painYesOptions[i]),
                          );
                        },
                      ),
                    ).paddingSymmetric(
                        horizontal: Dimens.gapX2, vertical: Dimens.gapX1),
                  ),
                ),
                Obx(
                  () => Visibility(
                    visible: controller.selectedPainYes.contains('Other') &&
                        !controller.isPain.value,
                    child: CommonInputField(wrapper: controller.otherPainYes)
                        .paddingSymmetric(
                      horizontal: Dimens.gapX2,
                      vertical: Dimens.gapX2,
                    ),
                  ),
                ),
                buildDoubleOptionSelector(
                    "Cracking In Voice Or Change In Voice",
                    "No",
                    'Yes',
                    controller.isCrackingVoice),
              ],
            ).paddingOnly(left: Dimens.gapX3)));
  }
}
