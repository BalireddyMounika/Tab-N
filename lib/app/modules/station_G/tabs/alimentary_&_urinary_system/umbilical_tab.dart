import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_G/controllers/alimentary_&_urinary_first_controller.dart';
import 'package:nivish/app/modules/station_G/widget/alimentary_&_urinary_widgets/swelling_lumps.dart';
import 'package:nivish/app/modules/station_G/widget/common_container.dart';
import 'package:nivish/app/modules/station_G/widget/alimentary_&_urinary_widgets/range_slider.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/widgets/common_check_box.dart';
import 'package:nivish/widgets/text/common_text.dart';
import 'package:nivish/widgets/toggle/two_option_selector_widget.dart';

class Umbilical extends GetView<AlimentaryAndUrinaryController> {
  const Umbilical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              subHeading(text: 'Umbilical',),
            ],
          ),
          Dimens.heightGap2,
          buildDoubleOptionSelector(
              "Pain", "No", "Yes", controller.isUmbilicalPain),
          painYes(),
          Dimens.heightGap2,
          Obx(
            () => tendernessThreeOptionWidget(
                name: 'Tenderness',
                selectedOption:
                    controller.selectedRightUmbilicalTenderness.value,
                optionOne: 'Absent',
                optionTwo: 'Present',
                optionThree: 'Present Rebound',
                onTap: (value) {
                  controller.selectedRightUmbilicalTenderness.value = value;
                }),
          ),
          Dimens.heightGap2,
          buildDoubleOptionSelector("Swelling/Lumps", "Absent", 'Present',
              controller.isUmbilicalSwelling),
          swellingPresent(),
          Dimens.heightGap2,
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
        crossAxisSpacing: 10,
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
        visible: controller.selectedRightUmbilicalTenderness.value == 'Present',
        child: commonMultipleWidget(
          list: controller.commonTendernessPresentList,
          selectedValue: controller.selectedUmbilicalPresentTenderness.value,
          onSelect: (name) =>
              controller.onSelectUmbilicalPresentTenderness(name: name),
        ).paddingOnly(top: Dimens.gapX1, left: Dimens.gapX3),
      ),
    );
  }

  Widget tendernessPresentRe() {
    return Obx(
      () => Visibility(
        visible: controller.selectedRightUmbilicalTenderness.value ==
            'Present Rebound',
        child: commonMultipleWidget(
          list: controller.commonTendernessPresentList,
          selectedValue: controller.selectedUmbilicalPresentReTenderness.value,
          onSelect: (name) =>
              controller.onSelectUmbilicalPresentReTenderness(name: name),
        ).paddingOnly(top: Dimens.gapX1, left: Dimens.gapX3),
      ),
    );
  }

  Widget swellingPresent() {
    return Obx(
      () => Visibility(
        visible: !controller.isUmbilicalSwelling.value,
        child: SwellingLumps(
            swellingSize: controller.umbilicalSwellingSize,
            swellingDescription: controller.umbilicalSwellingDescription,
            selectedTexture: controller.selectedUmbilicalTexture),
      ),
    );
  }

  Widget painYes() {
    return Obx(
      () => Visibility(
        visible: !controller.isUmbilicalPain.value,
        child: CustomRangeSlider(
          lowerValueController: controller.lowerUmbilical,
          upperValueController: controller.upperUmbilical,
          sliderStreamController: controller.sliderStreamControllerUmbilical,
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
