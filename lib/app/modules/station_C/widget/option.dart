import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_C/controllers/station_C_visually_right_eye_controller.dart';
import 'package:nivish/widgets/common_check_box.dart';

class Option extends GetView<VisuallyChallengedController> {
  final bool isActive;
  final RxString selectedValue;
  const Option({
    Key? key,
    required this.isActive,
    required this.selectedValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Dimens.gapX3),
      child: Obx(
        () => StaggeredGrid.count(
          crossAxisCount: Get.width < 600 ? 1 : 1,
          mainAxisSpacing: 24,
          crossAxisSpacing: 12,
          children: List.generate(
            controller.noEnucleationOptinList.length,
            (i) => CommonCheckBox(
              isActive: isActive,
              name: controller.noEnucleationOptinList[i],
              isSelected:
                  controller.noEnucleationOptinList[i] == selectedValue.value,
              onTap: () {
                selectedValue.value = controller.noEnucleationOptinList[i];
              },
            ),
          ),
        ),
      ),
    );
  }
}
