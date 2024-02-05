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

class RightIliac extends GetView<AlimentaryAndUrinaryController> {
  const RightIliac({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              subHeading(text: 'Right Iliac',),
            ],
          ),
          Dimens.heightGap2,
          buildDoubleOptionSelector(
              "Pain", "No", "Yes", controller.isRightIliacPain),
          painYes(),
          Dimens.heightGap2,
          buildDoubleOptionSelector("Mc Burney's point", "Not Tender", "Tender",
              controller.isRightIliacBurneys),
          burneyspointTender(),
          Dimens.heightGap2,
          buildDoubleOptionSelector("Tenderness", "Absent", "Present",
              controller.isRightIliacTenderness),
          tendernessPresent(),
          Dimens.heightGap2,
          buildDoubleOptionSelector("Swelling/Lumps", "Absent", 'Present',
              controller.isRightIliacSwelling),
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
        visible: !controller.isRightIliacTenderness.value,
        child: commonMultipleWidget(
          list: controller.commonTendernessPresentList,
          selectedValue: controller.selectedRightIliacTenderness.value,
          onSelect: (name) =>
              controller.onSelectRightIliacTenderness(name: name),
        ).paddingOnly(top: Dimens.gapX1, left: Dimens.gapX3),
      ),
    );
  }

  Widget swellingPresent() {
    return Obx(
      () => Visibility(
        visible: !controller.isRightIliacSwelling.value,
        child: SwellingLumps(
            swellingSize: controller.rightIliacSwellingSize,
            swellingDescription: controller.rightIliacSwellingDescription,
            selectedTexture: controller.selectedRightIliacTexture),
      ),
    );
  }

  Widget burneyspointTender() {
    return Obx(
      () => Visibility(
        visible: !controller.isRightIliacBurneys.value,
        child: CustomRangeSlider(
          lowerValueController: controller.lowerBurneysRightIliac,
          upperValueController: controller.upperBurneysRightIliac,
          sliderStreamController:
              controller.sliderStreamControllerBurneysRightIliac,
        ),
      ),
    );
  }

  Widget painYes() {
    return Obx(
      () => Visibility(
        visible: !controller.isRightIliacPain.value,
        child: CustomRangeSlider(
          lowerValueController: controller.lowerPainRightIliac,
          upperValueController: controller.upperPainRightIliac,
          sliderStreamController:
              controller.sliderStreamControllerPainRightIliac,
        ),
      ),
    );
  }
}
