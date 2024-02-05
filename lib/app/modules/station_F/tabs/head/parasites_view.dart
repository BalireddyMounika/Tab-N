import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nivish/widgets/toggle/common_switch.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../../widgets/common_input_field.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_styles.dart';
import '../../controllers/station_f_controller.dart';

class StationFParasitesView extends GetView<StationFController> {
  const StationFParasitesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Get.width < 600
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "Parasites",
                    style: AppStyles.tsBlackSemi20,
                  ),
                  Dimens.widthGap4,
                  CommonSwitch(
                    onTap: (value) {
                      controller.isParasites.value = value;
                      controller.selectedParasites.clear();
                      controller.otherParasitesWrapper.controller.clear();
                    },
                    initialSwitchValue: controller.isParasites.value,
                  ),
                ],
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: Dimens.gapX3),
                  child: Obx(
                    () => StaggeredGrid.count(
                      crossAxisCount: Get.width < 600 ? 1 : 1,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 12,
                      children: List.generate(
                        controller.parasitesList.length,
                        (i) => CommonCheckBox(
                            checkedIcon: Icons.check_box,
                            unCheckedIcon: Icons.check_box_outline_blank,
                            isActive: controller.isParasites.value,
                            name: controller.parasitesList.values.elementAt(i),
                            isSelected: controller.selectedParasites.contains(
                                controller.parasitesList.keys.elementAt(i)),
                            onTap: () => controller.onSelectParasites(idx: i)),
                      ),
                    ),
                  )),
              const SizedBox(height: Dimens.gapX1),
              Obx(
                () => Visibility(
                  visible: controller.selectedParasites.contains('Other'),
                  child: SizedBox(
                    width: 400,
                    child: CommonInputField(
                            isEnabled: controller.selectedParasites
                                    .contains('Other') &&
                                controller.isParasites.value,
                            hintText: "Type here",
                            wrapper: controller.otherParasitesWrapper)
                        .paddingSymmetric(horizontal: Dimens.gapX4),
                  ),
                ),
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              Row(
                children: [
                  Expanded(
                      child: const Text(
                    "Hair Loss (Alopecia)",
                    style: AppStyles.tsBlackSemi20,
                  )),
                  Dimens.widthGap4,
                  CommonSwitch(
                    onTap: (value) {
                      controller.isHairLoss.value = value;
                      controller.selectedHairLoss.clear();
                    },
                    initialSwitchValue: controller.isHairLoss.value,
                  ),
                ],
              ),
              const SizedBox(height: Dimens.gapX2),
              Padding(
                  padding: const EdgeInsets.only(left: Dimens.gapX3),
                  child: Obx(
                    () => StaggeredGrid.count(
                      crossAxisCount: Get.width < 600 ? 1 : 2,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 12,
                      children: List.generate(
                        controller.hairLossList.length,
                        (i) => CommonCheckBox(
                            checkedIcon: Icons.check_box,
                            unCheckedIcon: Icons.check_box_outline_blank,
                            isActive: controller.isHairLoss.value,
                            name: controller.hairLossList.values.elementAt(i),
                            isSelected: controller.selectedHairLoss.contains(
                                controller.hairLossList.keys.elementAt(i)),
                            onTap: () => controller.onSelectHairLoss(idx: i)),
                      ),
                    ),
                  )),
              const SizedBox(height: Dimens.gapX2),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "Parasites",
                    style: AppStyles.tsBlackSemi20,
                  ),
                  Dimens.widthGap4,
                  CommonSwitch(
                    onTap: (value) {
                      controller.isParasites.value = value;
                      controller.selectedParasites.clear();
                      controller.otherParasitesWrapper.controller.clear();
                    },
                    initialSwitchValue: controller.isParasites.value,
                  ),
                ],
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: Dimens.gapX3),
                  child: Obx(
                    () => StaggeredGrid.count(
                      crossAxisCount: Get.width < 600 ? 1 : 1,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 12,
                      children: List.generate(
                        controller.parasitesList.length,
                        (i) => CommonCheckBox(
                            checkedIcon: Icons.check_box,
                            unCheckedIcon: Icons.check_box_outline_blank,
                            isActive: controller.isParasites.value,
                            name: controller.parasitesList.values.elementAt(i),
                            isSelected: controller.selectedParasites.contains(
                                controller.parasitesList.keys.elementAt(i)),
                            onTap: () => controller.onSelectParasites(idx: i)),
                      ),
                    ),
                  )),
              const SizedBox(height: Dimens.gapX1),
              Obx(
                () => Visibility(
                  visible: controller.selectedParasites.contains('Other'),
                  child: SizedBox(
                    width: 400,
                    child: CommonInputField(
                            isEnabled: controller.selectedParasites
                                    .contains('Other') &&
                                controller.isParasites.value,
                            hintText: "Type here",
                            wrapper: controller.otherParasitesWrapper)
                        .paddingSymmetric(horizontal: Dimens.gapX4),
                  ),
                ),
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              Row(
                children: [
                  const Text(
                    "Hair Loss (Alopecia)",
                    style: AppStyles.tsBlackSemi20,
                  ),
                  Dimens.widthGap4,
                  CommonSwitch(
                    onTap: (value) {
                      controller.isHairLoss.value = value;
                      controller.selectedHairLoss.clear();
                    },
                    initialSwitchValue: controller.isHairLoss.value,
                  ),
                ],
              ),
              const SizedBox(height: Dimens.gapX2),
              Padding(
                  padding: const EdgeInsets.only(left: Dimens.gapX3),
                  child: Obx(
                    () => StaggeredGrid.count(
                      crossAxisCount: Get.width < 600 ? 1 : 2,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 12,
                      children: List.generate(
                        controller.hairLossList.length,
                        (i) => CommonCheckBox(
                            checkedIcon: Icons.check_box,
                            unCheckedIcon: Icons.check_box_outline_blank,
                            isActive: controller.isHairLoss.value,
                            name: controller.hairLossList.values.elementAt(i),
                            isSelected: controller.selectedHairLoss.contains(
                                controller.hairLossList.keys.elementAt(i)),
                            onTap: () => controller.onSelectHairLoss(idx: i)),
                      ),
                    ),
                  )),
              const SizedBox(height: Dimens.gapX2),
            ],
          );
  }
}
