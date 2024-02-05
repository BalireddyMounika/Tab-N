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

class RightHypochondrium extends GetView<AlimentaryAndUrinaryController> {
  const RightHypochondrium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              subHeading(
                  text: 'Right Hypochondrium',
              ),
            ],
          ),
          buildDoubleOptionSelector(
              "Pain", "No", "Yes", controller.isRightHypochondriumPain),
          painYes(),
          buildDoubleOptionSelector("Tenderness", "Absent", "Present",
              controller.isRightHypochondriumTenderness),
          tendernessPresent(),
          buildDoubleOptionSelector("Swelling/Lumps", "Absent", 'Present',
              controller.isRightHypoSwelling),
          swellingPresent(),
          buildDoubleOptionSelector(
              "Liver", 'Not Palpable', 'Palpable', controller.isRightHypoLiver),
          liverPalpable(),
          buildDoubleOptionSelector("Gall Baldder", 'Not Tender', 'Tender',
              controller.isRightHypoGall),
          gallBaldderTender(),
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

  Widget tendernessPresent() {
    return Obx(
      () => Visibility(
        visible: !controller.isRightHypochondriumTenderness.value,
        child: commonMultipleWidget(
          list: controller.commonTendernessPresentList,
          selectedValue: controller.selectedRightHypoTenderness.value,
          onSelect: (name) =>
              controller.onSelectRightHypoTenderness(name: name),
        ),
      ).paddingOnly(top: Dimens.gapX1,left: Dimens.gapX2),
    );
  }

  Widget liverPalpable() {
    return Obx(
      () => Visibility(
        visible: !controller.isRightHypoLiver.value,
        child: StaggeredGrid.count(
          crossAxisCount: Get.width < 600 ? 1 : 2,
          mainAxisSpacing: 24,
          crossAxisSpacing: 12,
          children: List.generate(
            controller.commonHypoLiverSpleenList.length,
            (i) {
              bool isSelected = controller.selectedRightHypoLiver.value ==
                  controller.commonHypoLiverSpleenList[i];
              return CommonCheckBox(
                name: controller.commonHypoLiverSpleenList[i],
                isSelected: isSelected,
                onTap: () => controller.selectedRightHypoLiver.value =
                    controller.commonHypoLiverSpleenList[i],
              );
            },
          ),
        ),
      ).paddingOnly(top: Dimens.gapX1, left: Dimens.gapX4),
    );
  }

  Widget swellingPresent() {
    return Obx(
      () => Visibility(
        visible: !controller.isRightHypoSwelling.value,
        child: SwellingLumps(
          swellingDescription: controller.rightHypoSwellingDescription,
          swellingSize: controller.rightHypoSwellingSize,
          selectedTexture: controller.selectedRightHypoTexture,
        ),
      ).paddingOnly(top: Dimens.gapX1),
    );
  }

  Widget painYes() {
    return Obx(
      () => Visibility(
        visible: !controller.isRightHypochondriumPain.value,
        child: CustomRangeSlider(
            lowerValueController: controller.lowerPainRightHypochondrium,
            upperValueController: controller.upperPainRightHypochondrium,
            sliderStreamController:
                controller.sliderStreamControllerPainRightHypochondrium),
      ),
    );
  }

  Widget gallBaldderTender() {
    return Obx(() => Visibility(
          visible: !controller.isRightHypoGall.value,
          child: CustomRangeSlider(
              lowerValueController: controller.lowerGallPainRightHypochondrium,
              upperValueController: controller.upperGallPainRightHypochondrium,
              sliderStreamController:
                  controller.sliderStreamControllerGallPainRightHypochondrium),
        ));
  }
}
