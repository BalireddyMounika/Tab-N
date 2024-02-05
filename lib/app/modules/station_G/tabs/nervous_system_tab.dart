import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_G/controllers/nervous_system_controller.dart';
import 'package:nivish/app/modules/station_G/widget/common_container.dart';
import 'package:nivish/app/modules/station_G/widget/three_option_selector.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/utils/helper/text_field_wrapper.dart';
import 'package:nivish/utils/helper/validators.dart';
import 'package:nivish/widgets/common_check_box.dart';
import 'package:nivish/widgets/common_input_field.dart';
import 'package:nivish/widgets/text/common_text.dart';
import 'package:nivish/widgets/toggle/two_option_selector_widget.dart';
import '../../../../widgets/Age_Gender_validations.dart';
import '../../../../widgets/toggle/common_switch.dart';
import '../../../data/values/images.dart';

class NervesSystemTab extends GetView<NervesSystemController> {
  const NervesSystemTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      child: Get.width < 600
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    subHeading(
                      text: 'Central Nervous System',
                    ),
                    Expanded(
                      child: Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset(
                            AppImages.nervousSystem,
                            width: Dimens.screenWidthX7,
                          )),
                    )
                  ],
                ),
                Dimens.heightGap1,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildThreeOptionSelector('Alert', controller.selectedAlert),
                    buildThreeOptionSelector(
                        'Oriented', controller.selectedOriented),
                    buildThreeOptionSelector(
                        'Listens', controller.selectedListens),
                    buildThreeOptionSelector(
                        'Understands', controller.selectedUnderstands),
                    buildThreeOptionSelector(
                        'Responds', controller.selectedResponds),
                    if (StudentInfo.calculateAge() >= 2) speechVisibility(),
                    Dimens.heightGap1,
                  ],
                ).paddingOnly(left: Dimens.gapX1),
                Dimens.heightGap1,
                if (StudentInfo.calculateAge() >= 5)
                  Row(
                    children: [
                      const Expanded(
                          child: Text(
                        "History Of Headache",
                        style: AppStyles.tsBlackMedium20,
                      )),
                      Dimens.widthGap4,
                      CommonSwitch(
                        onTap: (value) {
                          controller.isHistoryOfHeadache.value = value;
                          controller.selectedHeadacheAssociatedWithOptions
                              .clear();
                          controller.selectedHeadachePartOfDayOptions.clear();
                          controller
                              .otherHeadacheAssociatedWithOptions.controller
                              .clear();
                          controller.selectedHeadacheFrom.value = '< 1 Month';
                          controller.selectedHeadacheDuration.value =
                              'Less than 1 hour';
                          controller.isContinuousHeadacheFrequency.value = true;
                          controller.selectedContinuousHeadacheFrequency.value =
                              'Since 1 week';
                        },
                        initialSwitchValue:
                            controller.isHistoryOfHeadache.value,
                      ),
                    ],
                  ),
                historyOfHeadache(),
                Dimens.heightGap4,
                if (StudentInfo.calculateAge() >= 5)
                  Row(
                    children: [
                      const Expanded(
                          child: Text(
                        "History Of Dizziness",
                        style: AppStyles.tsBlackMedium20,
                      )),
                      Dimens.widthGap4,
                      CommonSwitch(
                        onTap: (value) {
                          controller.isHistoryOfDizziness.value = value;
                          controller.selectedDizzinessAssociatedWithOptions
                              .clear();
                          controller.selectedDizzinessPartOfDayOptions.clear();
                          controller
                              .otherDizzinessAssociatedWithOptions.controller
                              .clear();
                          controller.isContinuousDizzinessFrequency.value =
                              true;
                          controller.selectedContinuousDizzinessFrequency
                              .value = 'Since 1 week';
                        },
                        initialSwitchValue:
                            controller.isHistoryOfDizziness.value,
                      ),
                    ],
                  ),
                historyOfDizziness(),
              ],
            ).paddingAll(Dimens.gapX3)
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    subHeading(
                      text: 'Central Nervous System',
                    ),
                    Expanded(
                      child: Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset(
                            AppImages.nervousSystem,
                            width: Dimens.screenWidthX7,
                          )),
                    )
                  ],
                ),
                Dimens.heightGap1,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildThreeOptionSelector('Alert', controller.selectedAlert),
                    buildThreeOptionSelector(
                        'Oriented', controller.selectedOriented),
                    buildThreeOptionSelector(
                        'Listens', controller.selectedListens),
                    buildThreeOptionSelector(
                        'Understands', controller.selectedUnderstands),
                    buildThreeOptionSelector(
                        'Responds', controller.selectedResponds),
                    if (StudentInfo.calculateAge() >= 2) speechVisibility(),
                  ],
                ).paddingOnly(left: Dimens.gapX1),
                Dimens.heightGap1,
                if (StudentInfo.calculateAge() >= 5)
                  Row(
                    children: [
                      const Text(
                        "History Of Headache",
                        style: AppStyles.tsBlackMedium20,
                      ),
                      Dimens.widthGap4,
                      CommonSwitch(
                        onTap: (value) {
                          controller.isHistoryOfHeadache.value = value;
                          controller.selectedHeadacheAssociatedWithOptions
                              .clear();
                          controller.selectedHeadachePartOfDayOptions.clear();
                          controller
                              .otherHeadacheAssociatedWithOptions.controller
                              .clear();
                          controller.selectedHeadacheFrom.value = '< 1 Month';
                          controller.selectedHeadacheDuration.value =
                              'Less than 1 hour';
                          controller.isContinuousHeadacheFrequency.value = true;
                          controller.selectedContinuousHeadacheFrequency.value =
                              'Since 1 week';
                        },
                        initialSwitchValue:
                            controller.isHistoryOfHeadache.value,
                      ),
                    ],
                  ),
                historyOfHeadache(),
                Dimens.heightGap4,
                if (StudentInfo.calculateAge() >= 5)
                  Row(
                    children: [
                      const Text(
                        "History Of Dizziness",
                        style: AppStyles.tsBlackMedium20,
                      ),
                      Dimens.widthGap4,
                      CommonSwitch(
                        onTap: (value) {
                          controller.isHistoryOfDizziness.value = value;
                          controller.selectedDizzinessAssociatedWithOptions
                              .clear();
                          controller.selectedDizzinessPartOfDayOptions.clear();
                          controller
                              .otherDizzinessAssociatedWithOptions.controller
                              .clear();
                          controller.isContinuousDizzinessFrequency.value =
                              true;
                          controller.selectedContinuousDizzinessFrequency
                              .value = 'Since 1 week';
                        },
                        initialSwitchValue:
                            controller.isHistoryOfDizziness.value,
                      ),
                    ],
                  ),
                historyOfDizziness(),
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

  Widget historyOfHeadache() {
    List<String> selectedAssociatedWithOptions;

    if (StudentInfo.getGender() == 'Female') {
      if (StudentInfo.calculateAge() < 18) {
        selectedAssociatedWithOptions =
            List.from(controller.associatedWithHeadacheOptions)
              ..remove('Driving')
              ..remove('Pregnancy');

        if (StudentInfo.calculateAge() <= 7) {
          selectedAssociatedWithOptions.remove('Menstrual Cycle');
        }
      } else {
        selectedAssociatedWithOptions =
            List.from(controller.associatedWithHeadacheOptions);
      }
    } else {
      selectedAssociatedWithOptions =
          List.from(controller.associatedWithHeadacheOptions)
            ..remove('Pregnancy')
            ..remove('Menstrual Cycle');

      if (StudentInfo.calculateAge() < 18) {
        selectedAssociatedWithOptions.remove('Driving');
      }
    }

    return Obx(
      () => Visibility(
        visible: controller.isHistoryOfHeadache.value,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            associateAndFrequencyCommonWidget(
                isContinuousFrequency: controller.isContinuousHeadacheFrequency,
                selectedContinuousFrequency:
                    controller.selectedContinuousHeadacheFrequency,
                selectedAssociatedWithOptions:
                    controller.selectedHeadacheAssociatedWithOptions,
                onSelectAssociateOption: (value) {
                  controller.onSelectHeadacheAssociatedWithOptions(value);
                },
                otherAssociateWithOptionWrapper:
                    controller.otherHeadacheAssociatedWithOptions,
                selectedPartOfDayOptions:
                    controller.selectedHeadachePartOfDayOptions,
                onSelectPartOfDayOptions: (value) {
                  controller.onSelectHeadachePartOfDayOptions(value);
                },
                associatedWithOptions: selectedAssociatedWithOptions),
            Dimens.heightGap2,
            title(text: 'From'),
            Dimens.heightGap2,
            Obx(
              () => StaggeredGrid.count(
                crossAxisCount: Get.width < 600 ? 1 : 2,
                mainAxisSpacing: 24,
                crossAxisSpacing: 12,
                children: List.generate(
                  controller.headacheFromOptions.length,
                  (i) {
                    bool isSelected = controller.selectedHeadacheFrom.value ==
                        controller.headacheFromOptions[i];
                    return CommonCheckBox(
                      name: controller.headacheFromOptions[i],
                      isSelected: isSelected,
                      onTap: () => controller.selectedHeadacheFrom.value =
                          controller.headacheFromOptions[i],
                    );
                  },
                ),
              ).paddingSymmetric(horizontal: Dimens.gapX1),
            ),
            Dimens.heightGap3,
            title(text: 'Duration'),
            Dimens.heightGap2,
            Obx(
              () => StaggeredGrid.count(
                crossAxisCount: Get.width < 600 ? 1 : 2,
                mainAxisSpacing: 24,
                crossAxisSpacing: 12,
                children: List.generate(
                  controller.headacheDurationOptions.length,
                  (i) {
                    bool isSelected =
                        controller.selectedHeadacheDuration.value ==
                            controller.headacheDurationOptions[i];
                    return CommonCheckBox(
                      name: controller.headacheDurationOptions[i],
                      isSelected: isSelected,
                      onTap: () => controller.selectedHeadacheDuration.value =
                          controller.headacheDurationOptions[i],
                    );
                  },
                ),
              ).paddingSymmetric(horizontal: Dimens.gapX1),
            ),
          ],
        ).paddingOnly(left: Dimens.gapX1),
      ),
    );
  }

  Widget historyOfDizziness() {
    List<String> selectedAssociatedWithOptions;

    if (StudentInfo.getGender() == 'Female') {
      if (StudentInfo.calculateAge() < 18) {
        selectedAssociatedWithOptions =
            List.from(controller.associatedWithDizzinessOptions)
              ..remove('Driving')
              ..remove('Pregnancy');

        if (StudentInfo.calculateAge() <= 7) {
          selectedAssociatedWithOptions.remove('Menstrual Cycle');
        }
      } else {
        selectedAssociatedWithOptions =
            List.from(controller.associatedWithDizzinessOptions);
      }
    } else {
      selectedAssociatedWithOptions =
          List.from(controller.associatedWithDizzinessOptions)
            ..remove('Pregnancy')
            ..remove('Menstrual Cycle');

      if (StudentInfo.calculateAge() < 18) {
        selectedAssociatedWithOptions.remove('Driving');
      }
    }

    return Obx(
      () => Visibility(
        visible: controller.isHistoryOfDizziness.value,
        child: associateAndFrequencyCommonWidget(
            isContinuousFrequency: controller.isContinuousDizzinessFrequency,
            selectedContinuousFrequency:
                controller.selectedContinuousDizzinessFrequency,
            selectedAssociatedWithOptions:
                controller.selectedDizzinessAssociatedWithOptions,
            onSelectAssociateOption: (value) {
              controller.onSelectDizzinessAssociatedWithOptions(value);
            },
            otherAssociateWithOptionWrapper:
                controller.otherDizzinessAssociatedWithOptions,
            onSelectPartOfDayOptions: (value) {
              controller.onSelectDizzinessPartOfDayOptions(value);
            },
            selectedPartOfDayOptions:
                controller.selectedDizzinessPartOfDayOptions,
            associatedWithOptions: selectedAssociatedWithOptions),
      ),
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

  Widget abnormalSpeechWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildCommonCheckBox(
            'Lisping', controller.selectedAbnormalSpeech.value == 'Lisping'),
        Dimens.heightGap1,
        buildCommonCheckBox('Stammering',
            controller.selectedAbnormalSpeech.value == 'Stammering'),
        Dimens.heightGap1,
        buildCommonCheckBox(
            'Other',
            controller.selectedAbnormalSpeech.value == 'Other'),
        Dimens.heightGap1,
        Visibility(
          visible: controller.selectedAbnormalSpeech.value == 'Other',
          child: Form(
            key: controller.otherAbnormalSpeechFormKey,
            child: SizedBox(
              width: Dimens.screenWidthXHalf,
              child: CommonInputField(
                validator: mandatoryValidator,
                hintText: "Type here",
                wrapper: controller.otherAbnormalSpeech,
              ),
            ),
          ),
        ),
      ],
    ).paddingSymmetric(horizontal: Dimens.gapX5);
  }

  Widget buildCommonCheckBox(String name, bool isSelected) {
    return CommonCheckBox(
      onTap: () => controller.onSelectAbnormalSpeech(value: name),
      isSelected: isSelected,
      name: name,
    );
  }

  Widget speechVisibility() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildDoubleOptionSelector(
            'Speech', 'Normal', 'Abnormal', controller.isSpeechNormal),
        Dimens.heightGap1,
        Obx(
          () => Visibility(
            visible: !controller.isSpeechNormal.value,
            child: abnormalSpeechWidget(),
          ),
        ),
      ],
    );
  }

  Widget associateAndFrequencyCommonWidget(
      {required RxBool isContinuousFrequency,
      required RxString selectedContinuousFrequency,
      required RxList<String> selectedAssociatedWithOptions,
      required Function(String) onSelectAssociateOption,
      required TextFieldWrapper otherAssociateWithOptionWrapper,
      required RxList<String> selectedPartOfDayOptions,
      required Function(String) onSelectPartOfDayOptions,
      required List<String> associatedWithOptions}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildDoubleOptionSelector(
          'Frequency',
          'Sporadic',
          'Continuous',
          isContinuousFrequency,
        ),
        const SizedBox(height: Dimens.gapX2),
        Obx(
          () => Visibility(
            visible: !isContinuousFrequency.value,
            child: StaggeredGrid.count(
              crossAxisCount: Get.width < 600 ? 1 : 2,
              mainAxisSpacing: 24,
              crossAxisSpacing: 12,
              children: List.generate(
                controller.continuousFrequencyOptions.length,
                (i) => CommonCheckBox(
                  isActive: true,
                  name: controller.continuousFrequencyOptions[i],
                  isSelected: controller.continuousFrequencyOptions[i] ==
                      selectedContinuousFrequency.value,
                  onTap: () => selectedContinuousFrequency.value =
                      controller.continuousFrequencyOptions[i],
                ).paddingOnly(left: Dimens.gapX3),
              ),
            ).paddingSymmetric(horizontal: Dimens.gapX2),
          ),
        ),
        Dimens.heightGap2,
        title(text: 'Associated With'),
        Dimens.heightGap2,
        Obx(
          () => StaggeredGrid.count(
            crossAxisCount: Get.width < 600 ? 1 : 1,
            mainAxisSpacing: 24,
            crossAxisSpacing: 12,
            children: List.generate(
              associatedWithOptions.length,
              (i) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonCheckBox(
                      checkedIcon: Icons.check_box,
                      unCheckedIcon: Icons.check_box_outline_blank,
                      onTap: () {
                        if (selectedAssociatedWithOptions
                            .contains(associatedWithOptions[i])) {
                          selectedAssociatedWithOptions
                              .remove(associatedWithOptions[i]);
                        } else {
                          selectedAssociatedWithOptions
                              .add(associatedWithOptions[i]);
                        }
                      },
                      isSelected: selectedAssociatedWithOptions
                          .contains(associatedWithOptions[i]),
                      name: associatedWithOptions[i],
                    ).paddingOnly(bottom: Dimens.gapX1),
                    Visibility(
                      visible: selectedAssociatedWithOptions
                              .contains('Occurrence') &&
                          associatedWithOptions[i] == 'Occurrence',
                      child: StaggeredGrid.count(
                        crossAxisCount: Get.width < 600 ? 1 : 1,
                        mainAxisSpacing: 24,
                        crossAxisSpacing: 12,
                        children: List.generate(
                          controller.occurrenceOptions.length,
                          (i) {
                            bool isSelected = selectedPartOfDayOptions
                                .contains(controller.occurrenceOptions[i]);
                            return CommonCheckBox(
                              checkedIcon: Icons.check_box,
                              unCheckedIcon: Icons.check_box_outline_blank,
                              isActive: true,
                              name: controller.occurrenceOptions[i],
                              isSelected: isSelected,
                              onTap: () => onSelectPartOfDayOptions(
                                controller.occurrenceOptions[i],
                              ),
                            );
                          },
                        ),
                      ).paddingSymmetric(horizontal: Dimens.gapX5),
                    ),
                  ],
                );
              },
            ),
          ).paddingSymmetric(horizontal: Dimens.gapX1),
        ),
        Obx(
          () => Visibility(
            visible: selectedAssociatedWithOptions.contains('Other'),
            child: CommonInputField(
              hintText: "Type here",
              wrapper: otherAssociateWithOptionWrapper,
            ).paddingSymmetric(
              horizontal: Dimens.gapX2,
              vertical: Dimens.gapX2,
            ),
          ),
        ),
      ],
    );
  }
}
