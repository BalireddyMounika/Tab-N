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

class LeftHypochondrium extends GetView<AlimentaryAndUrinaryController> {
  const LeftHypochondrium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              subHeading(
                  text: 'Left Hypochondrium',),
            ],
          ),
          buildDoubleOptionSelector(
              "Pain", "No", "Yes", controller.isLeftHypochondriumPain),
          painYes(),
          buildDoubleOptionSelector("Tenderness", 'Absent', 'Present',
              controller.isLeftHypochondriumTenderness),
          tendernessPresent(),
          buildDoubleOptionSelector("Swelling/Lumps", "Absent", 'Present',
              controller.isLeftHypoSwelling),
          swellingPresent(),
          buildDoubleOptionSelector("Spleen", 'Not Palpable', 'Palpable',
              controller.isLeftHypoSpleen),
          spleenPalpable(),
          Dimens.heightGap3,
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
        visible: !controller.isLeftHypochondriumTenderness.value,
        child: commonMultipleWidget(
          list: controller.commonTendernessPresentList,
          selectedValue: controller.selectedLeftHypoPresentTenderness.value,
          onSelect: (name) =>
              controller.onSelectLeftHypoPresentTenderness(name: name),
        ).paddingOnly(top: Dimens.gapX1, left: Dimens.gapX3),
      ),
    );
  }

  Widget spleenPalpable() {
    return Obx(
      () => Visibility(
        visible: !controller.isLeftHypoSpleen.value,
        child: StaggeredGrid.count(
          crossAxisCount: Get.width < 600 ? 1 : 2,
          mainAxisSpacing: 24,
          crossAxisSpacing: 12,
          children: List.generate(
            controller.commonHypoLiverSpleenList.length,
            (i) {
              bool isSelected = controller.selectedLeftHypoSpleen.value ==
                  controller.commonHypoLiverSpleenList[i];
              return CommonCheckBox(
                name: controller.commonHypoLiverSpleenList[i],
                isSelected: isSelected,
                onTap: () => controller.selectedLeftHypoSpleen.value =
                    controller.commonHypoLiverSpleenList[i],
              );
            },
          ),
        ),
      ).paddingOnly(top: Dimens.gapX1, left: Dimens.paddingX4),
    );
  }

  Widget swellingPresent() {
    return Obx(
      () => Visibility(
        visible: !controller.isLeftHypoSwelling.value,
        child: SwellingLumps(
          swellingDescription: controller.leftHypoSwellingDescription,
          swellingSize: controller.leftHypoSwellingSize,
          selectedTexture: controller.selectedLeftHypoTexture,
        ),
      ).paddingOnly(top: Dimens.gapX1),
    );
  }

  Widget painYes() {
    return Obx(
      () => Visibility(
        visible: !controller.isLeftHypochondriumPain.value,
        child: CustomRangeSlider(
            lowerValueController: controller.lowerPainLeftHypochondrium,
            upperValueController: controller.upperPainLeftHypochondrium,
            sliderStreamController:
                controller.sliderStreamControllerPainLeftHypochondrium),
      ),
    );
  }
}
