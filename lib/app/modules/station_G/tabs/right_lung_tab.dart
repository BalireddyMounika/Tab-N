import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/modules/station_G/widget/common_container.dart';
import 'package:nivish/widgets/common_check_box.dart';
import 'package:nivish/widgets/common_input_field.dart';
import 'package:nivish/widgets/text/common_text.dart';
import 'package:nivish/widgets/toggle/two_option_selector_widget.dart';
import '../controllers/right_lung_controller.dart';

class RightLungTab extends GetView<RightLungController> {
  const RightLungTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              subHeading(
                text: 'Right Lung',
              ),
              Expanded(
                child: Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset(
                      AppImages.rightLung,
                      width: Dimens.screenWidthX7,
                    )),
              )
            ],
          ),
          Dimens.heightGap2,

          Obx(
            () => DoubleOptionSelector(
              label: 'Air Entry Normal',
              isOptionOneSelected: controller.isRightAirEntryNormal.value,
              onSelectOption: (v) => controller.isRightAirEntryNormal.value = v,
            ),
          ),

          SizedBox(height: Dimens.gapX3),
          Obx(
            () => DoubleOptionSelector(
              label: 'Breath Sound',
              optionOne: 'Normal',
              optionTwo: 'Abnormal',
              isOptionOneSelected: controller.isRightBreathSoundNormal.value,
              onSelectOption: (v) =>
                  controller.isRightBreathSoundNormal.value = v,
            ),
          ),
          // ),
          const SizedBox(height: Dimens.gapX1),
          Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                controller.abNormalRightBreathSoundList.length,
                (i) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonCheckBox(
                        isActive: !controller.isRightBreathSoundNormal.value,
                        checkedIcon: Icons.check_box,
                        unCheckedIcon: Icons.check_box_outline_blank,
                        onTap: () {
                          if (controller.selectedRightAbNormalBreathSound
                              .contains(
                                  controller.abNormalRightBreathSoundList[i])) {
                            controller.selectedRightAbNormalBreathSound.remove(
                                controller.abNormalRightBreathSoundList[i]);
                          } else {
                            controller.selectedRightAbNormalBreathSound.add(
                                controller.abNormalRightBreathSoundList[i]);
                          }
                        },
                        isSelected: controller.selectedRightAbNormalBreathSound
                            .contains(
                                controller.abNormalRightBreathSoundList[i]),
                        name: controller.abNormalRightBreathSoundList[i],
                      ) .paddingOnly(bottom: Dimens.gapX1),
                      SizedBox(height: Dimens.gapX1),
                      Visibility(
                        visible: controller.selectedRightAbNormalBreathSound
                                .contains('Apical') &&
                            controller.abNormalRightBreathSoundList[i] ==
                                'Apical' &&
                            !controller.isRightBreathSoundNormal.value,
                        child: commonMultipleWidget1(
                          list: controller.breathSoundRightCommanList,
                          selectedValue: controller
                              .selectedRightBreathSoundApicalList.value,
                          onSelect: (name) => controller
                              .onSelectRightBreathSoundApicalList(name: name),
                        ),
                      ),
                      Visibility(
                        visible: controller.selectedRightAbNormalBreathSound
                                .contains('Mid Zone') &&
                            controller.abNormalRightBreathSoundList[i] ==
                                'Mid Zone' &&
                            !controller.isRightBreathSoundNormal.value,
                        child: commonMultipleWidget1(
                          list: controller.breathSoundRightCommanList,
                          selectedValue: controller
                              .selectedRightBreathSoundMidZoneList.value,
                          onSelect: (name) => controller
                              .onSelectRightBreathSoundMidZoneList(name: name),
                        ),
                      ),
                      Visibility(
                        visible: controller.selectedRightAbNormalBreathSound
                                .contains('Basal') &&
                            controller.abNormalRightBreathSoundList[i] ==
                                'Basal' &&
                            !controller.isRightBreathSoundNormal.value,
                        child: commonMultipleWidget1(
                          list: controller.breathSoundRightCommanList,
                          selectedValue: controller
                              .selectedRightBreathSoundBasalList.value,
                          onSelect: (name) => controller
                              .onSelectRightBreathSoundBasalList(name: name),
                        ),
                      ),
                      Visibility(
                        visible: controller.selectedRightAbNormalBreathSound
                                .contains('Sub Scapular') &&
                            controller.abNormalRightBreathSoundList[i] ==
                                'Sub Scapular' &&
                            !controller.isRightBreathSoundNormal.value,
                        child: commonMultipleWidget1(
                          list: controller.breathSoundRightCommanList,
                          selectedValue: controller
                              .selectedRightBreathSoundSubScapularList.value,
                          onSelect: (name) => controller
                              .onSelectRightBreathSoundSubScapularList(
                                  name: name),
                        ),
                      ),
                      Visibility(
                        visible: controller.selectedRightAbNormalBreathSound
                                .contains('Diffuse') &&
                            controller.abNormalRightBreathSoundList[i] ==
                                'Diffuse' &&
                            !controller.isRightBreathSoundNormal.value,
                        child: commonMultipleWidget1(
                          list: controller.breathSoundRightCommanList,
                          selectedValue: controller
                              .selectedRightBreathSoundDiffuseList.value,
                          onSelect: (name) => controller
                              .onSelectRightBreathSoundDiffuseList(name: name),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ).paddingOnly(left: Dimens.gapX3),
          ),
          SizedBox(height: Dimens.gapX1),
          Obx(
            () => DoubleOptionSelector(
              label: 'Rales/Crepts',
              optionOne: 'Absent',
              optionTwo: 'Present',
              isOptionOneSelected: controller.isRightRalesAbsent.value,
              onSelectOption: (v) => controller.isRightRalesAbsent.value = v,
            ),
          ),
          // ),
          const SizedBox(height: Dimens.gapX1),
          Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                controller.presentRightRalesList.length,
                (i) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonCheckBox(
                        isActive: !controller.isRightRalesAbsent.value,
                        checkedIcon: Icons.check_box,
                        unCheckedIcon: Icons.check_box_outline_blank,
                        onTap: () {
                          if (controller.selectedRightPresentRales
                              .contains(controller.presentRightRalesList[i])) {
                            controller.selectedRightPresentRales
                                .remove(controller.presentRightRalesList[i]);
                          } else {
                            controller.selectedRightPresentRales
                                .add(controller.presentRightRalesList[i]);
                          }
                        },
                        isSelected: controller.selectedRightPresentRales
                            .contains(controller.presentRightRalesList[i]),
                        name: controller.presentRightRalesList[i],
                      ).paddingOnly(bottom: Dimens.gapX1),
                      Visibility(
                        visible: controller.selectedRightPresentRales
                                .contains('Apical') &&
                            controller.presentRightRalesList[i] == 'Apical' &&
                            !controller.isRightRalesAbsent.value,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            commonMultipleWidget(
                                list: controller.ralesRightCommonlList,
                                selectedValue: controller
                                    .selectedRightRalesApicalList.value,
                                onSelect: (name) {
                                  controller.onSelectRightRalesApicalList(
                                      name: name);
                                }),
                            const SizedBox(height: Dimens.gapX1),
                            Visibility(
                                    visible:
                                        controller.selectedRightRalesApicalList
                                                        .value ==
                                                    'Fine' ||
                                                controller
                                                        .selectedRightRalesApicalList
                                                        .value ==
                                                    'Coarse'
                                            ? true
                                            : false,
                                    child: Obx(
                                      () => DoubleOptionSelector(
                                        label: 'Lable :Quality',
                                        optionOne: 'Wet',
                                        optionTwo: 'Dry',
                                        isOptionOneSelected:
                                            controller.isRightApical.value,
                                        onSelectOption: (v) =>
                                            controller.isRightApical.value = v,
                                      ),
                                    ))
                                .paddingOnly(
                                    left: Dimens.gapX3, bottom: Dimens.gapX2),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: controller.selectedRightPresentRales
                                .contains('Mid Zone') &&
                            controller.presentRightRalesList[i] == 'Mid Zone' &&
                            !controller.isRightRalesAbsent.value,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            commonMultipleWidget(
                              list: controller.ralesRightCommonlList,
                              selectedValue: controller
                                  .selectedRightRalesMidZoneList.value,
                              onSelect: (name) => controller
                                  .onSelectRightRalesMidZoneList(name: name),
                            ),
                            const SizedBox(height: Dimens.gapX1),
                            Visibility(
                              visible: controller.selectedRightRalesMidZoneList
                                              .value ==
                                          'Fine' ||
                                      controller.selectedRightRalesMidZoneList
                                              .value ==
                                          'Coarse'
                                  ? true
                                  : false,
                              child: Obx(
                                () => DoubleOptionSelector(
                                  label: ' Lable :Quality',
                                  optionOne: 'Wet',
                                  optionTwo: 'Dry',
                                  isOptionOneSelected:
                                      controller.isRightMidZone.value,
                                  onSelectOption: (v) =>
                                      controller.isRightMidZone.value = v,
                                ).paddingOnly(
                                    left: Dimens.gapX1, bottom: Dimens.gapX2),
                              ),
                            ).paddingOnly(left: Dimens.gapX3),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: controller.selectedRightPresentRales
                                .contains('Basal') &&
                            controller.presentRightRalesList[i] == 'Basal' &&
                            !controller.isRightRalesAbsent.value,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            commonMultipleWidget(
                              list: controller.ralesRightCommonlList,
                              selectedValue:
                                  controller.selectedRightRalesBasalList.value,
                              onSelect: (name) => controller
                                  .onSelectRightRalesBasalList(name: name),
                            ),
                            const SizedBox(height: Dimens.gapX1),
                            Visibility(
                              visible: controller.selectedRightRalesBasalList
                                              .value ==
                                          'Fine' ||
                                      controller.selectedRightRalesBasalList
                                              .value ==
                                          'Coarse'
                                  ? true
                                  : false,
                              child: Obx(
                                () => DoubleOptionSelector(
                                  label: 'Lable : Quality',
                                  optionOne: 'Wet',
                                  optionTwo: 'Dry',
                                  isOptionOneSelected:
                                      controller.isRightBasal.value,
                                  onSelectOption: (v) =>
                                      controller.isRightBasal.value = v,
                                ).paddingOnly(left: Dimens.gapX1),
                              ),
                            ).paddingOnly(
                                left: Dimens.gapX3, bottom: Dimens.gapX2),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: controller.selectedRightPresentRales
                                .contains('Sub Scapular') &&
                            controller.presentRightRalesList[i] ==
                                'Sub Scapular' &&
                            !controller.isRightRalesAbsent.value,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            commonMultipleWidget(
                              list: controller.ralesRightCommonlList,
                              selectedValue: controller
                                  .selectedRightRalesSubScapularList.value,
                              onSelect: (name) =>
                                  controller.onSelectRightRalesSubScapularList(
                                      name: name),
                            ),
                            const SizedBox(height: Dimens.gapX1),
                            Visibility(
                              visible: controller
                                              .selectedRightRalesSubScapularList
                                              .value ==
                                          'Fine' ||
                                      controller
                                              .selectedRightRalesSubScapularList
                                              .value ==
                                          'Coarse'
                                  ? true
                                  : false,
                              child: Obx(
                                () => DoubleOptionSelector(
                                  label: 'Lable : Quality',
                                  optionOne: 'Wet',
                                  optionTwo: 'Dry',
                                  isOptionOneSelected:
                                      controller.isRightSubScapular.value,
                                  onSelectOption: (v) =>
                                      controller.isRightSubScapular.value = v,
                                ).paddingOnly(left: Dimens.gapX1),
                              ),
                            ).paddingOnly(
                                left: Dimens.gapX3, bottom: Dimens.gapX2),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: controller.selectedRightPresentRales
                                .contains('Diffuse') &&
                            controller.presentRightRalesList[i] == 'Diffuse' &&
                            !controller.isRightRalesAbsent.value,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            commonMultipleWidget(
                              list: controller.ralesRightCommonlList,
                              selectedValue: controller
                                  .selectedRightRalesDiffuseList.value,
                              onSelect: (name) => controller
                                  .onSelectRightRalesDiffuseList(name: name),
                            ),
                            const SizedBox(height: Dimens.gapX1),
                            Visibility(
                              visible: controller.selectedRightRalesDiffuseList
                                              .value ==
                                          'Fine' ||
                                      controller.selectedRightRalesDiffuseList
                                              .value ==
                                          'Coarse'
                                  ? true
                                  : false,
                              child: Obx(
                                () => DoubleOptionSelector(
                                  label: 'Lable : Quality',
                                  optionOne: 'Wet',
                                  optionTwo: 'Dry',
                                  isOptionOneSelected:
                                      controller.isRightDiffuse.value,
                                  onSelectOption: (v) =>
                                      controller.isRightDiffuse.value = v,
                                ).paddingOnly(
                                    left: Dimens.gapX1, bottom: Dimens.gapX2),
                              ),
                            ).paddingOnly(left: Dimens.gapX3),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ).paddingOnly(left: Dimens.gapX3),
          ),
          SizedBox(height: Dimens.gapX3),
          Obx(
            () => DoubleOptionSelector(
              label: 'Rhonchi/Wheezing',
              optionOne: 'Absent',
              optionTwo: 'Present',
              isOptionOneSelected: controller.isRightRhonchiAbsent.value,
              onSelectOption: (v) => controller.isRightRhonchiAbsent.value = v,
            ),
          ),
          const SizedBox(height: Dimens.gapX2),
          Padding(
              padding: const EdgeInsets.only(left: Dimens.gapX4),
              child: Obx(
                () => StaggeredGrid.count(
                  crossAxisCount: Get.width < 600 ? 1 : 3,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 12,
                  children: List.generate(
                    controller.rhonchiRightPresentList.length,
                    (i) => CommonCheckBox(
                      isActive: !controller.isRightRhonchiAbsent.value,
                      name: controller.rhonchiRightPresentList[i],
                      isSelected: controller.rhonchiRightPresentList[i] ==
                          controller.selectedRightRhonchiPresentList.value,
                      onTap: () => controller.onSelectRightRhonchiPresentList(
                          name: controller.rhonchiRightPresentList[i]),
                    ),
                  ),
                ),
              )),
          SizedBox(height: Dimens.gapX3),
          Obx(
            () => DoubleOptionSelector(
              label: 'Added Sounds',
              optionOne: 'Absent',
              optionTwo: 'Present',
              isOptionOneSelected: controller.isRightAddedSoundAbsent.value,
              onSelectOption: (v) =>
                  controller.isRightAddedSoundAbsent.value = v,
            ),
          ),
          Obx(
            () => Visibility(
              visible: controller.isRightAddedSoundAbsent.value != true,
              child: CommonInputField(
                      hintText: 'Describe',
                      wrapper: controller.addedSoundRightPresentDescription)
                  .paddingSymmetric(vertical: Dimens.gapX2),
            ).paddingOnly(left: Dimens.gapX3, right: Dimens.gapX3),
          ),
          SizedBox(height: Dimens.gapX3),
          Obx(
            () => DoubleOptionSelector(
              label: 'Zone Of Concern',
              optionOne: 'Absent',
              optionTwo: 'Present',
              isOptionOneSelected: controller.isRightZoneOfConcernAbsent.value,
              onSelectOption: (v) =>
                  controller.isRightZoneOfConcernAbsent.value = v,
            ),
          ),
          const SizedBox(height: Dimens.gapX1),
          Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                controller.presentRightZoneOfConcernList.length,
                (i) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonCheckBox(
                        isActive: !controller.isRightZoneOfConcernAbsent.value,
                        checkedIcon: Icons.check_box,
                        unCheckedIcon: Icons.check_box_outline_blank,
                        onTap: () {
                          if (controller.selectedRightPresentZoneOfConcern
                              .contains(controller
                                  .presentRightZoneOfConcernList[i])) {
                            controller.selectedRightPresentZoneOfConcern.remove(
                                controller.presentRightZoneOfConcernList[i]);
                          } else {
                            controller.selectedRightPresentZoneOfConcern.add(
                                controller.presentRightZoneOfConcernList[i]);
                          }
                        },
                        isSelected: controller.selectedRightPresentZoneOfConcern
                            .contains(
                                controller.presentRightZoneOfConcernList[i]),
                        name: controller.presentRightZoneOfConcernList[i],
                      ).paddingOnly(bottom: Dimens.gapX1),
                    ],
                  );
                },
              ),
            ).paddingOnly(left: Dimens.gapX3),
          ),
          Row(
            children: [
              subHeading(
                text: 'Left Lung',
              ),
            ],
          ),
          Dimens.heightGap2,
          Obx(
            () => DoubleOptionSelector(
              label: 'Air Entry Normal',
              isOptionOneSelected: controller.isLeftAirEntryNormal.value,
              onSelectOption: (v) => controller.isLeftAirEntryNormal.value = v,
            ),
          ),
          SizedBox(height: Dimens.gapX3),
          Obx(
            () => DoubleOptionSelector(
              label: 'Breath Sound',
              optionOne: 'Normal',
              optionTwo: 'Abnormal',
              isOptionOneSelected: controller.isLeftBreathSoundNormal.value,
              onSelectOption: (v) =>
                  controller.isLeftBreathSoundNormal.value = v,
            ),
          ),
          const SizedBox(height: Dimens.gapX1),
          Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                controller.abNormalLeftBreathSoundList.length,
                (i) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonCheckBox(
                        isActive: !controller.isLeftBreathSoundNormal.value,
                        checkedIcon: Icons.check_box,
                        unCheckedIcon: Icons.check_box_outline_blank,
                        onTap: () {
                          if (controller.selectedLeftAbNormalBreathSound
                              .contains(
                                  controller.abNormalLeftBreathSoundList[i])) {
                            controller.selectedLeftAbNormalBreathSound.remove(
                                controller.abNormalLeftBreathSoundList[i]);
                          } else {
                            controller.selectedLeftAbNormalBreathSound
                                .add(controller.abNormalLeftBreathSoundList[i]);
                          }
                        },
                        isSelected: controller.selectedLeftAbNormalBreathSound
                            .contains(
                                controller.abNormalLeftBreathSoundList[i]),
                        name: controller.abNormalRightBreathSoundList[i],
                      ).paddingOnly(bottom: Dimens.gapX1),
                      SizedBox(height: Dimens.gapX1),
                      Visibility(
                        visible: controller.selectedLeftAbNormalBreathSound
                                .contains('Apical') &&
                            controller.abNormalLeftBreathSoundList[i] ==
                                'Apical' &&
                            !controller.isLeftBreathSoundNormal.value,
                        child: commonMultipleWidget1(
                          list: controller.breathSoundLeftCommanList,
                          selectedValue: controller
                              .selectedLeftBreathSoundApicalList.value,
                          onSelect: (name) => controller
                              .onSelectLeftBreathSoundApicalList(name: name),
                        ),
                      ),
                      Visibility(
                        visible: controller.selectedLeftAbNormalBreathSound
                                .contains('Mid Zone') &&
                            controller.abNormalLeftBreathSoundList[i] ==
                                'Mid Zone' &&
                            !controller.isLeftBreathSoundNormal.value,
                        child: commonMultipleWidget1(
                          list: controller.breathSoundLeftCommanList,
                          selectedValue: controller
                              .selectedLeftBreathSoundMidZoneList.value,
                          onSelect: (name) => controller
                              .onSelectLeftBreathSoundMidZoneList(name: name),
                        ),
                      ),
                      Visibility(
                        visible: controller.selectedLeftAbNormalBreathSound
                                .contains('Basal') &&
                            controller.abNormalLeftBreathSoundList[i] ==
                                'Basal' &&
                            !controller.isLeftBreathSoundNormal.value,
                        child: commonMultipleWidget1(
                          list: controller.breathSoundLeftCommanList,
                          selectedValue:
                              controller.selectedLeftBreathSoundBasalList.value,
                          onSelect: (name) => controller
                              .onSelectLeftBreathSoundBasalList(name: name),
                        ),
                      ),
                      Visibility(
                        visible: controller.selectedLeftAbNormalBreathSound
                                .contains('Sub Scapular') &&
                            controller.abNormalLeftBreathSoundList[i] ==
                                'Sub Scapular' &&
                            !controller.isLeftBreathSoundNormal.value,
                        child: commonMultipleWidget1(
                          list: controller.breathSoundLeftCommanList,
                          selectedValue: controller
                              .selectedLeftBreathSoundSubScapularList.value,
                          onSelect: (name) =>
                              controller.onSelectLeftBreathSoundSubScapularList(
                                  name: name),
                        ),
                      ),
                      Visibility(
                        visible: controller.selectedLeftAbNormalBreathSound
                                .contains('Diffuse') &&
                            controller.abNormalLeftBreathSoundList[i] ==
                                'Diffuse' &&
                            !controller.isLeftBreathSoundNormal.value,
                        child: commonMultipleWidget1(
                          list: controller.breathSoundLeftCommanList,
                          selectedValue: controller
                              .selectedLeftBreathSoundDiffuseList.value,
                          onSelect: (name) => controller
                              .onSelectLeftBreathSoundDiffuseList(name: name),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ).paddingOnly(left: Dimens.gapX3),
          ),
          SizedBox(height: Dimens.gapX3),
          Obx(
            () => DoubleOptionSelector(
              label: 'Rales/Crepts',
              optionOne: 'Absent',
              optionTwo: 'Present',
              isOptionOneSelected: controller.isLeftRalesAbsent.value,
              onSelectOption: (v) => controller.isLeftRalesAbsent.value = v,
            ),
          ),
          // ),
          const SizedBox(height: Dimens.gapX1),
          Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                controller.presentLeftRalesList.length,
                (i) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonCheckBox(
                        isActive: !controller.isLeftRalesAbsent.value,
                        checkedIcon: Icons.check_box,
                        unCheckedIcon: Icons.check_box_outline_blank,
                        onTap: () {
                          if (controller.selectedLeftPresentRales
                              .contains(controller.presentLeftRalesList[i])) {
                            controller.selectedLeftPresentRales
                                .remove(controller.presentLeftRalesList[i]);
                          } else {
                            controller.selectedLeftPresentRales
                                .add(controller.presentLeftRalesList[i]);
                          }
                        },
                        isSelected: controller.selectedLeftPresentRales
                            .contains(controller.presentLeftRalesList[i]),
                        name: controller.presentLeftRalesList[i],
                      ).paddingOnly(bottom: Dimens.gapX1),
                      Visibility(
                        visible: controller.selectedLeftPresentRales
                                .contains('Apical') &&
                            controller.presentLeftRalesList[i] == 'Apical' &&
                            !controller.isLeftRalesAbsent.value,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            commonMultipleWidget(
                              list: controller.ralesLeftCommonlList,
                              selectedValue:
                                  controller.selectedLeftRalesApicalList.value,
                              onSelect: (name) => controller
                                  .onSelectLeftRalesApicalList(name: name),
                            ),
                            const SizedBox(height: Dimens.gapX1),
                            Visibility(
                                visible: controller.selectedLeftRalesApicalList
                                                .value ==
                                            'Fine' ||
                                        controller.selectedLeftRalesApicalList
                                                .value ==
                                            'Coarse'
                                    ? true
                                    : false,
                                child: Obx(
                                  () => DoubleOptionSelector(
                                    label: 'Lable :Quality',
                                    optionOne: 'Wet',
                                    optionTwo: 'Dry',
                                    isOptionOneSelected:
                                        controller.isLeftApical.value,
                                    onSelectOption: (v) =>
                                        controller.isLeftApical.value = v,
                                  ),
                                )).paddingOnly(left: Dimens.gapX3),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: controller.selectedLeftPresentRales
                                .contains('Mid Zone') &&
                            controller.presentLeftRalesList[i] == 'Mid Zone' &&
                            !controller.isLeftRalesAbsent.value,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            commonMultipleWidget(
                              list: controller.ralesLeftCommonlList,
                              selectedValue:
                                  controller.selectedLeftRalesMidZoneList.value,
                              onSelect: (name) => controller
                                  .onSelectLeftRalesMidZoneList(name: name),
                            ),
                            const SizedBox(height: Dimens.gapX1),
                            Visibility(
                              visible: controller.selectedLeftRalesMidZoneList
                                              .value ==
                                          'Fine' ||
                                      controller.selectedLeftRalesMidZoneList
                                              .value ==
                                          'Coarse'
                                  ? true
                                  : false,
                              child: Obx(
                                () => DoubleOptionSelector(
                                  label: ' Lable :Quality',
                                  optionOne: 'Wet',
                                  optionTwo: 'Dry',
                                  isOptionOneSelected:
                                      controller.isLeftMidZone.value,
                                  onSelectOption: (v) =>
                                      controller.isLeftMidZone.value = v,
                                ).paddingOnly(left: Dimens.gapX1),
                              ),
                            ).paddingOnly(left: Dimens.gapX3),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: controller.selectedLeftPresentRales
                                .contains('Basal') &&
                            controller.presentLeftRalesList[i] == 'Basal' &&
                            !controller.isLeftRalesAbsent.value,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            commonMultipleWidget(
                              list: controller.ralesLeftCommonlList,
                              selectedValue:
                                  controller.selectedLeftRalesBasalList.value,
                              onSelect: (name) => controller
                                  .onSelectLeftRalesBasalList(name: name),
                            ),
                            const SizedBox(height: Dimens.gapX1),
                            Visibility(
                              visible:
                                  controller.selectedLeftRalesBasalList.value ==
                                              'Fine' ||
                                          controller.selectedLeftRalesBasalList
                                                  .value ==
                                              'Coarse'
                                      ? true
                                      : false,
                              child: Obx(
                                () => DoubleOptionSelector(
                                  label: 'Lable : Quality',
                                  optionOne: 'Wet',
                                  optionTwo: 'Dry',
                                  isOptionOneSelected:
                                      controller.isLeftBasal.value,
                                  onSelectOption: (v) =>
                                      controller.isLeftBasal.value = v,
                                ).paddingOnly(left: Dimens.gapX1),
                              ),
                            ).paddingOnly(left: Dimens.gapX3),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: controller.selectedLeftPresentRales
                                .contains('Sub Scapular') &&
                            controller.presentLeftRalesList[i] ==
                                'Sub Scapular' &&
                            !controller.isLeftRalesAbsent.value,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            commonMultipleWidget(
                              list: controller.ralesLeftCommonlList,
                              selectedValue: controller
                                  .selectedLeftRalesSubScapularList.value,
                              onSelect: (name) => controller
                                  .onSelectLeftRalesSubScapularList(name: name),
                            ),
                            const SizedBox(height: Dimens.gapX1),
                            Visibility(
                              visible: controller
                                              .selectedLeftRalesSubScapularList
                                              .value ==
                                          'Fine' ||
                                      controller
                                              .selectedLeftRalesSubScapularList
                                              .value ==
                                          'Coarse'
                                  ? true
                                  : false,
                              child: Obx(
                                () => DoubleOptionSelector(
                                  label: 'Lable : Quality',
                                  optionOne: 'Wet',
                                  optionTwo: 'Dry',
                                  isOptionOneSelected:
                                      controller.isLeftSubScapular.value,
                                  onSelectOption: (v) =>
                                      controller.isLeftSubScapular.value = v,
                                ).paddingOnly(left: Dimens.gapX1),
                              ),
                            ).paddingOnly(left: Dimens.gapX3),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: controller.selectedLeftPresentRales
                                .contains('Diffuse') &&
                            controller.presentLeftRalesList[i] == 'Diffuse' &&
                            !controller.isLeftRalesAbsent.value,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            commonMultipleWidget(
                              list: controller.ralesLeftCommonlList,
                              selectedValue:
                                  controller.selectedLeftRalesDiffuseList.value,
                              onSelect: (name) => controller
                                  .onSelectLeftRalesDiffuseList(name: name),
                            ),
                            const SizedBox(height: Dimens.gapX1),
                            Visibility(
                              visible: controller.selectedLeftRalesDiffuseList
                                              .value ==
                                          'Fine' ||
                                      controller.selectedLeftRalesDiffuseList
                                              .value ==
                                          'Coarse'
                                  ? true
                                  : false,
                              child: Obx(
                                () => DoubleOptionSelector(
                                  label: 'Lable : Quality',
                                  optionOne: 'Wet',
                                  optionTwo: 'Dry',
                                  isOptionOneSelected:
                                      controller.isLeftDiffuse.value,
                                  onSelectOption: (v) =>
                                      controller.isLeftDiffuse.value = v,
                                ).paddingOnly(left: Dimens.gapX1),
                              ),
                            ).paddingOnly(left: Dimens.gapX3),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ).paddingOnly(left: Dimens.gapX3),
          ),
          SizedBox(height: Dimens.gapX3),
          Obx(
            () => DoubleOptionSelector(
              label: 'Rhonchi/Wheezing',
              optionOne: 'Absent',
              optionTwo: 'Present',
              isOptionOneSelected: controller.isLeftRhonchiAbsent.value,
              onSelectOption: (v) => controller.isLeftRhonchiAbsent.value = v,
            ),
          ),
          const SizedBox(height: Dimens.gapX2),
          Padding(
              padding: const EdgeInsets.only(left: Dimens.gapX3),
              child: Obx(
                () => StaggeredGrid.count(
                  crossAxisCount: Get.width < 600 ? 1 : 3,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 12,
                  children: List.generate(
                    controller.rhonchiRightPresentList.length,
                    (i) => CommonCheckBox(
                      isActive: !controller.isLeftRhonchiAbsent.value,
                      name: controller.rhonchiLeftPresentList[i],
                      isSelected: controller.rhonchiLeftPresentList[i] ==
                          controller.selectedLeftRhonchiPresentList.value,
                      onTap: () => controller.onSelectLeftRhonchiPresentList(
                          name: controller.rhonchiLeftPresentList[i]),
                    ),
                  ),
                ),
              )),
          SizedBox(height: Dimens.gapX3),
          Obx(
            () => DoubleOptionSelector(
              label: 'Added Sounds',
              optionOne: 'Absent',
              optionTwo: 'Present',
              isOptionOneSelected: controller.isLeftAddedSoundAbsent.value,
              onSelectOption: (v) =>
                  controller.isLeftAddedSoundAbsent.value = v,
            ),
          ),
          Obx(
            () => Visibility(
              visible: controller.isLeftAddedSoundAbsent.value != true,
              child: CommonInputField(
                      hintText: 'Describe',
                      wrapper: controller.addedSoundLeftPresentDescription)
                  .paddingSymmetric(vertical: Dimens.gapX2),
            ).paddingOnly(left: Dimens.gapX3, right: Dimens.gapX3),
          ),

          SizedBox(height: Dimens.gapX3),
          Obx(
            () => DoubleOptionSelector(
              label: 'Zone Of Concern',
              optionOne: 'Absent',
              optionTwo: 'Present',
              isOptionOneSelected: controller.isLeftZoneOfConcernAbsent.value,
              onSelectOption: (v) =>
                  controller.isLeftZoneOfConcernAbsent.value = v,
            ),
          ),
          const SizedBox(height: Dimens.gapX1),
          Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                controller.presentLeftZoneOfConcernList.length,
                (i) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonCheckBox(
                        isActive: !controller.isLeftZoneOfConcernAbsent.value,
                        checkedIcon: Icons.check_box,
                        unCheckedIcon: Icons.check_box_outline_blank,
                        onTap: () {
                          if (controller.selectedLeftPresentZoneOfConcern
                              .contains(
                                  controller.presentLeftZoneOfConcernList[i])) {
                            controller.selectedLeftPresentZoneOfConcern.remove(
                                controller.presentLeftZoneOfConcernList[i]);
                          } else {
                            controller.selectedLeftPresentZoneOfConcern.add(
                                controller.presentLeftZoneOfConcernList[i]);
                          }
                        },
                        isSelected: controller.selectedLeftPresentZoneOfConcern
                            .contains(
                                controller.presentLeftZoneOfConcernList[i]),
                        name: controller.presentLeftZoneOfConcernList[i],
                      ).paddingOnly(bottom: Dimens.gapX1),
                    ],
                  );
                },
              ),
            ).paddingOnly(left: Dimens.gapX3),
          ),
        ],
      ).paddingAll(Dimens.gapX3),
    );
  }

  Widget commonMultipleWidget1({
    required List<String> list,
    required String selectedValue,
    required Function(String) onSelect,
  }) {
    return Obx(
      () => StaggeredGrid.count(
        crossAxisCount: Get.width < 600 ? 1 : 1,
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
        children: List.generate(
          list.length,
          (i) => CommonCheckBox(
            isActive: true,
            name: list[i],
            isSelected: list[i] == selectedValue,
            onTap: () => onSelect(list[i]),
          ).paddingSymmetric(horizontal: Dimens.gapX2),
        ),
      ).paddingSymmetric(vertical: Dimens.gapX1),
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
            isActive: true,
            name: list[i],
            isSelected: list[i] == selectedValue,
            onTap: () => onSelect(list[i]),
          ).paddingSymmetric(horizontal: Dimens.gapX3),
        ),
      ),
    );
  }
}
