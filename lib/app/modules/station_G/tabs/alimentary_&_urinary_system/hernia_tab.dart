import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_G/controllers/alimentary_&_urinary_first_controller.dart';
import 'package:nivish/app/modules/station_G/widget/common_container.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/widgets/common_check_box.dart';
import 'package:nivish/widgets/toggle/two_option_selector_widget.dart';

class Hernia extends GetView<AlimentaryAndUrinaryController> {
  const Hernia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              buildDoubleOptionSelector(
                  "Hernia", "Absent", "Present", controller.isHernia)
            ],
          ),
          Dimens.heightGap1,
          herniaPresent(),
          Dimens.heightGap2,
          buildDoubleOptionSelector("Urinary Bladder", 'Not Palpable',
              "Palpable", controller.isUrinaryBladder),
          Dimens.heightGap1,
          urinaryPalpable(),
          Dimens.heightGap2,
        ],
      ).paddingAll(Dimens.gapX3),
    );
  }

  Widget urinaryPalpable() {
    return Obx(
      () => Visibility(
        visible: !controller.isUrinaryBladder.value,
        child: commonMultipleWidget(
          list: controller.urinaryBladderPalpableList,
          selectedValue: controller.selectedUrinaryBladderPalpable.value,
          onSelect: (name) =>
              controller.onSelectUrinaryBladderPalpable(name: name),
        ).paddingOnly(top: Dimens.gapX1, left: Dimens.gapX3),
      ),
    );
  }

  Widget herniaPresent() {
    return Obx(
      () => Visibility(
        visible: !controller.isHernia.value,
        child: StaggeredGrid.count(
          crossAxisCount: Get.width < 600 ? 1 : 1,
          mainAxisSpacing: 24,
          crossAxisSpacing: 12,
          children: List.generate(
            controller.herniaPresent.length,
            (i) {
              bool isSelected = controller.selectedHerniaPresent
                  .contains(controller.herniaPresent[i]);
              return CommonCheckBox(
                checkedIcon: Icons.check_box,
                unCheckedIcon: Icons.check_box_outline_blank,
                isActive: true,
                name: controller.herniaPresent[i],
                isSelected: isSelected,
                onTap: () => controller
                    .onSelectHerniaPresent(controller.herniaPresent[i]),
              );
            },
          ),
        ).paddingSymmetric(horizontal: Dimens.gapX2, vertical: Dimens.gapX1),
      ).paddingOnly(left: Dimens.gapX2),
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
    return StaggeredGrid.count(
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
    );
  }
}
