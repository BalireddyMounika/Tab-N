import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../../widgets/common_input_field.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/app_styles.dart';
import '../../controllers/station_f_controller.dart';

class StationFTonsilsView extends GetView<StationFController> {
  const StationFTonsilsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        "Tonsils",
        style: AppStyles.tsBlackSemi20,
      ),
      const SizedBox(height: Dimens.gapX2),
      Row(
        children: [
          Obx(() => CommonCheckBox(
                textStyle: AppStyles.tsBlackMedium20,
                name: "Normal",
                isSelected: controller.isTonsils.value,
                onTap: () => controller.onCheckedTonsils(),
              )),
          const SizedBox(
            width: Dimens.gapX4,
          ),
          Obx(() => CommonCheckBox(
                textStyle: AppStyles.tsBlackMedium20,
                name: "Abnormal",
                isSelected: !controller.isTonsils.value,
                onTap: () => controller.onCheckedTonsils(),
              )),
        ],
      ),
      Padding(
          padding: EdgeInsets.only(left: Dimens.gapX3, top: Dimens.gapX1_5),
          child: Obx(
            () => StaggeredGrid.count(
              crossAxisCount: Get.width < 600 ? 1 : 1,
              mainAxisSpacing: 24,
              crossAxisSpacing: 12,
              children: List.generate(
                controller.tonsilsList.length,
                (i) => CommonCheckBox(
                  checkedIcon: Icons.check_box,
                  unCheckedIcon: Icons.check_box_outline_blank,
                  isActive: !controller.isTonsils.value,
                  name: controller.tonsilsList.elementAt(i),
                  isSelected: controller.selectedTonsils
                      .contains(controller.tonsilsList.elementAt(i)),
                  onTap: () => controller.onSelectTonsils(idx: i),
                ),
              ),
            ),
          )),
      const SizedBox(height: Dimens.gapX2),
      const Text(
        "Uvula",
        style: AppStyles.tsBlackSemi20,
      ),
      const SizedBox(height: Dimens.gapX2),
      Obx(
        () => StaggeredGrid.count(
          crossAxisCount: Get.width < 600 ? 1 : 2,
          mainAxisSpacing: 24,
          crossAxisSpacing: 12,
          children: List.generate(
            controller.uvulaList.length,
            (i) => CommonCheckBox(
              name: controller.uvulaList[i],
              isSelected:
                  controller.uvulaList[i] == controller.selectedUvula.value,
              onTap: () =>
                  controller.onSelectUvula(name: controller.uvulaList[i]),
            ),
          ),
        ),
      ),
      const SizedBox(height: Dimens.gapX2),
      Obx(
        () => Row(
          children: [
            CommonCheckBox(
                name: 'Abnormal',
                isSelected: controller.selectedUvula.value == 'Abnormal',
                onTap: () {
                  controller.selectedUvula.value = 'Abnormal';
                  controller.uvulaList.refresh();
                }),
            const SizedBox(width: Dimens.gapX2),
            Expanded(
                child: CommonInputField(
              isEnabled: controller.selectedUvula.value == 'Abnormal',
              hintText: "Type here",
              wrapper: controller.otherUvulaWrapper,
            )),
          ],
        ),
      ),
      const SizedBox(height: Dimens.gapX2),
      const Text(
        "Palate",
        style: AppStyles.tsBlackSemi20,
      ),
      const SizedBox(height: Dimens.gapX2),
      Obx(
        () => StaggeredGrid.count(
          crossAxisCount: Get.width < 600 ? 1 : 2,
          mainAxisSpacing: 24,
          crossAxisSpacing: 12,
          children: List.generate(
            controller.palateList.length,
            (i) => CommonCheckBox(
              name: controller.palateList[i],
              isSelected:
                  controller.palateList[i] == controller.selectedPalate.value,
              onTap: () =>
                  controller.onSelectPalate(name: controller.palateList[i]),
            ),
          ),
        ),
      ),
      const SizedBox(height: Dimens.gapX2),
      Obx(
        () => Row(
          children: [
            CommonCheckBox(
                name: 'Cleft Palate',
                isSelected: controller.selectedPalate.value == 'Cleft Palate',
                onTap: () {
                  controller.selectedPalate.value = 'Cleft Palate';
                  controller.palateList.refresh();
                }),
            const SizedBox(width: Dimens.gapX2),
            Expanded(
                child: CommonInputField(
              isEnabled: controller.selectedPalate.value == 'Cleft Palate',
              hintText: "Type here",
              wrapper: controller.otherCleftWrapper,
            )),
          ],
        ),
      ),
      const SizedBox(height: Dimens.gapX2),
      Obx(
        () => Row(
          children: [
            CommonCheckBox(
                name: 'Cleft Lip & Palate',
                isSelected:
                    controller.selectedPalate.value == 'Cleft Lip & Palate',
                onTap: () {
                  controller.selectedPalate.value = 'Cleft Lip & Palate';
                  controller.palateList.refresh();
                }),
            const SizedBox(width: Dimens.gapX2),
            Expanded(
                child: CommonInputField(
              isEnabled:
                  controller.selectedPalate.value == 'Cleft Lip & Palate',
              hintText: "Type here",
              wrapper: controller.otherCleftLipWrapper,
            )),
          ],
        ),
      ),
      const SizedBox(height: Dimens.gapX2),
      Obx(
        () => Row(
          children: [
            CommonCheckBox(
                name: 'Other',
                isSelected: controller.selectedPalate.value == 'Other',
                onTap: () {
                  controller.selectedPalate.value = 'Other';
                  controller.palateList.refresh();
                }),
            const SizedBox(width: Dimens.gapX2),
            Expanded(
                child: CommonInputField(
              isEnabled: controller.selectedPalate.value == 'Other',
              hintText: "Type here",
              wrapper: controller.palateOthersWrapper,
            )),
          ],
        ),
      ),
    ]);
  }
}
