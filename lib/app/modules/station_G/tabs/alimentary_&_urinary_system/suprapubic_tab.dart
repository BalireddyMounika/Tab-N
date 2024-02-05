import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_G/controllers/alimentary_&_urinary_first_controller.dart';
import 'package:nivish/app/modules/station_G/widget/alimentary_&_urinary_widgets/swelling_lumps.dart';
import 'package:nivish/app/modules/station_G/widget/common_container.dart';
import 'package:nivish/app/modules/station_G/widget/alimentary_&_urinary_widgets/range_slider.dart';
import 'package:nivish/widgets/common_check_box.dart';
import 'package:nivish/widgets/text/common_text.dart';
import 'package:nivish/widgets/toggle/two_option_selector_widget.dart';

import '../../../../../widgets/Age_Gender_validations.dart';

class Suprapubic extends GetView<AlimentaryAndUrinaryController> {
  const Suprapubic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              subHeading(
                text: 'Suprapubic',
              ),
            ],
          ),
          Dimens.heightGap2,
          buildDoubleOptionSelector(
              "Pain", "No", "Yes", controller.isSuprapubicPain),
          painYes(),
          Dimens.heightGap2,
          Obx(
            () => tendernessThreeOptionWidget(
              name: "Tenderness",
              selectedOption: controller.selectedSuprapubicTenderness.value,
              optionOne: "Absent",
              optionTwo: "Present",
              optionThree: "Present Rebound",
              onTap: (value) {
                controller.selectedSuprapubicTenderness.value = value;
              },
            ),
          ),
          Dimens.heightGap2,
          buildDoubleOptionSelector("Swelling/Lumps", "Absent", 'Present',
              controller.isSuprapubicSwelling),
          swellingPresent(),
          Dimens.heightGap2,
          if (StudentInfo.calculateAge() > 10 &&
              StudentInfo.getGender() == 'Female')
            buildDoubleOptionSelector("Uterus", 'Not Palpable', 'Palpable',
                controller.isSuprapubicUterus),
          uterusPalpable(),
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
      ),
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
        crossAxisSpacing: 1,
        children: List.generate(
          list.length,
          (i) => CommonCheckBox(
            isActive: true, // You may need to set this based on your logic
            name: list[i],
            isSelected: list[i] == selectedValue,
            onTap: () => onSelect(list[i]),
          ),
        ),
      ),
    );
  }

  Widget tendernessPresent() {
    return Obx(
      () => Visibility(
        visible: controller.selectedSuprapubicTenderness.value == 'Present',
        child: commonMultipleWidget(
          list: controller.commonTendernessPresentList,
          selectedValue: controller.selectedSuprapubicPresentTenderness.value,
          onSelect: (name) =>
              controller.onSelectSuprapubicPresentTenderness(name: name),
        ).paddingOnly(top: Dimens.gapX1, left: Dimens.gapX3),
      ),
    );
  }

  Widget tendernessPresentRe() {
    return Obx(
      () => Visibility(
        visible:
            controller.selectedSuprapubicTenderness.value == 'Present Rebound',
        child: commonMultipleWidget(
          list: controller.commonTendernessPresentList,
          selectedValue: controller.selectedSuprapubicPresentReTenderness.value,
          onSelect: (name) =>
              controller.onSelectSuprapubicPresentReTenderness(name: name),
        ).paddingOnly(top: Dimens.gapX1, left: Dimens.gapX3),
      ),
    );
  }

  Widget swellingPresent() {
    return Obx(
      () => Visibility(
        visible: !controller.isSuprapubicSwelling.value,
        child: SwellingLumps(
            swellingSize: controller.suprapubicSwellingSize,
            swellingDescription: controller.suprapubicSwellingDescription,
            selectedTexture: controller.selectedSuprapubicTexture),
      ),
    );
  }

  Widget uterusPalpable() {
    return Obx(
      () => Visibility(
        visible: !controller.isSuprapubicUterus.value,
        child: commonMultipleWidget(
          list: controller.palpableList,
          selectedValue: controller.selectedUterus.value,
          onSelect: (name) => controller.onSelectUterusPalpable(name: name),
        ).paddingOnly(left: Dimens.gapX3, top: Dimens.gapX1),
      ),
    );
  }

  Widget painYes() {
    return Obx(
      () => Visibility(
        visible: !controller.isSuprapubicPain.value,
        child: CustomRangeSlider(
          lowerValueController: controller.lowerSuprapubic,
          upperValueController: controller.upperSuprapubic,
          sliderStreamController: controller.sliderStreamControllerSuprapubic,
        ),
      ),
    );
  }

  Widget tendernessThreeOptionWidget({
    required String name,
    Color? labelColor,
    required String selectedOption,
    required String optionOne,
    required String optionTwo,
    required String optionThree,
    required Function(String) onTap,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title(text: name, textColor: labelColor),
        const SizedBox(height: Dimens.gapX2),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonCheckBox(
              isSelected: selectedOption == optionOne,
              name: optionOne,
              onTap: () => onTap(optionOne),
            ),
            Dimens.heightGap1,
            CommonCheckBox(
              isSelected: selectedOption == optionTwo,
              name: optionTwo,
              onTap: () => onTap(optionTwo),
            ),
            tendernessPresent(),
            Dimens.heightGap1,
            CommonCheckBox(
              isSelected: selectedOption == optionThree,
              name: optionThree,
              onTap: () => onTap(optionThree),
            ),
            tendernessPresentRe(),
          ],
        ).paddingSymmetric(horizontal: Dimens.gapX1),
      ],
    );
  }
}
