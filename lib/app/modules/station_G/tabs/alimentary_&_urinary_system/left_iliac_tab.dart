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

class LeftIliac extends GetView<AlimentaryAndUrinaryController> {
  const LeftIliac({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              subHeading(text: 'Left Iliac',),
            ],
          ),
          Dimens.heightGap2,
          buildDoubleOptionSelector(
              "Pain", "No", "Yes", controller.isLeftIliacPain),
          painYes(),
          Dimens.heightGap2,
          buildDoubleOptionSelector("Tenderness", "Absent", "Present",
              controller.isLeftIliacTenderness),
          tendernessPresent(),
          Dimens.heightGap2,
          buildDoubleOptionSelector("Swelling/Lumps", "Absent", 'Present',
              controller.isLeftIliacSwelling),
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
        visible: !controller.isLeftIliacTenderness.value,
        child: commonMultipleWidget(
          list: controller.commonTendernessPresentList,
          selectedValue: controller.selectedLeftIliacTenderness.value,
          onSelect: (name) =>
              controller.onSelectLeftIliacTenderness(name: name),
        ).paddingOnly(top: Dimens.gapX1, left: Dimens.gapX3),
      ),
    );
  }

  Widget swellingPresent() {
    return Obx(
      () => Visibility(
        visible: !controller.isLeftIliacSwelling.value,
        child: SwellingLumps(
            swellingSize: controller.leftIliacSwellingSize,
            swellingDescription: controller.leftIliacSwellingDescription,
            selectedTexture: controller.selectedLeftIliacTexture),
      ),
    );
  }

  Widget painYes() {
    return Obx(
      () => Visibility(
        visible: !controller.isLeftIliacPain.value,
        child: CustomRangeSlider(
          lowerValueController: controller.lowerPainLeftIliac,
          upperValueController: controller.upperPainLeftIliac,
          sliderStreamController:
              controller.sliderStreamControllerPainLeftIliac,
        ),
      ),
    );
  }
}
