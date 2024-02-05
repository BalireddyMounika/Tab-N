import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/app_styles.dart';
import '../../controllers/station_f_controller.dart';

class StationFThyroidGlandsSecondView extends GetView<StationFController> {
  const StationFThyroidGlandsSecondView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Get.width < 600
        ? Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Supraclavicular LN",
              style: AppStyles.tsBlackSemi20,
            ),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Obx(() => CommonCheckBox(
                  isSelected: controller.isNotPalpableSupraclavicular.value,
                  onTap: () {
                    controller.onCheckedNotPalpableSupraclavicular();
                    controller.selectedLN.clear();
                  },
                  name: "Not Palpable",
                  textStyle: AppStyles.tsBlackSemi20,
                )),
            const SizedBox(
              height: Dimens.gapX1,
            ),
            Obx(() => CommonCheckBox(
                  isSelected: !controller.isNotPalpableSupraclavicular.value,
                  onTap: () => controller.onCheckedNotPalpableSupraclavicular(),
                  name: "Palpable",
                  textStyle: AppStyles.tsBlackSemi20,
                )),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Padding(
                padding: const EdgeInsets.only(left: Dimens.gapX3),
                child: Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.lnList.length,
                      (i) => CommonCheckBox(
                          checkedIcon: Icons.check_box,
                          unCheckedIcon: Icons.check_box_outline_blank,
                          isActive:
                              !controller.isNotPalpableSupraclavicular.value,
                          name: controller.lnList.values.elementAt(i),
                          isSelected: controller.selectedLN
                              .contains(controller.lnList.keys.elementAt(i)),
                          onTap: () => controller.onSelectLN(idx: i)),
                    ),
                  ),
                )),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            const Text(
              "Axillary LN",
              style: AppStyles.tsBlackSemi20,
            ),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Obx(() => CommonCheckBox(
                  isSelected: controller.isNotPalpableAxillary.value,
                  onTap: () {
                    controller.onCheckedNotPalpableAxillary();
                    controller.selectedAxillaryLN.clear();
                  },
                  name: "Not Palpable",
                  textStyle: AppStyles.tsBlackSemi20,
                )),
            const SizedBox(
              height: Dimens.gapX1,
            ),
            Obx(() => CommonCheckBox(
                  isSelected: !controller.isNotPalpableAxillary.value,
                  onTap: () => controller.onCheckedNotPalpableAxillary(),
                  name: "Palpable",
                  textStyle: AppStyles.tsBlackSemi20,
                )),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Padding(
                padding: const EdgeInsets.only(left: Dimens.gapX3),
                child: Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.lnList.length,
                      (i) => CommonCheckBox(
                          checkedIcon: Icons.check_box,
                          unCheckedIcon: Icons.check_box_outline_blank,
                          isActive: !controller.isNotPalpableAxillary.value,
                          name: controller.lnList.values.elementAt(i),
                          isSelected: controller.selectedAxillaryLN
                              .contains(controller.lnList.keys.elementAt(i)),
                          onTap: () => controller.onSelectAxillaryLN(idx: i)),
                    ),
                  ),
                )),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            const Text(
              "Supratrochlear LN",
              style: AppStyles.tsBlackSemi20,
            ),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Obx(() => CommonCheckBox(
                  isSelected: controller.isNotPalpableSupratrochlear.value,
                  onTap: () {
                    controller.onCheckedNotPalpableSupratrochlear();
                    controller.selectedSupratrochlearLN.clear();
                  },
                  name: "Not Palpable",
                  textStyle: AppStyles.tsBlackSemi20,
                )),
            const SizedBox(
              height: Dimens.gapX1,
            ),
            Obx(() => CommonCheckBox(
                  isSelected: !controller.isNotPalpableSupratrochlear.value,
                  onTap: () => controller.onCheckedNotPalpableSupratrochlear(),
                  name: "Palpable",
                  textStyle: AppStyles.tsBlackSemi20,
                )),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Padding(
                padding: const EdgeInsets.only(left: Dimens.gapX3),
                child: Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.lnList.length,
                      (i) => CommonCheckBox(
                          checkedIcon: Icons.check_box,
                          unCheckedIcon: Icons.check_box_outline_blank,
                          isActive:
                              !controller.isNotPalpableSupratrochlear.value,
                          name: controller.lnList.values.elementAt(i),
                          isSelected: controller.selectedSupratrochlearLN
                              .contains(controller.lnList.keys.elementAt(i)),
                          onTap: () =>
                              controller.onSelectSupratrochlearLN(idx: i)),
                    ),
                  ),
                )),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            const Text(
              "Inguinal LN",
              style: AppStyles.tsBlackSemi20,
            ),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Obx(() => CommonCheckBox(
                  isSelected: controller.isNotPalpableInguinal.value,
                  onTap: () {
                    controller.onCheckedNotPalpableInguinal();
                    controller.selectedInguinalLN.clear();
                  },
                  name: "Not Palpable",
                  textStyle: AppStyles.tsBlackSemi20,
                )),
            const SizedBox(
              height: Dimens.gapX1,
            ),
            Obx(() => CommonCheckBox(
                  isSelected: !controller.isNotPalpableInguinal.value,
                  onTap: () => controller.onCheckedNotPalpableInguinal(),
                  name: "Palpable",
                  textStyle: AppStyles.tsBlackSemi20,
                )),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Padding(
                padding: const EdgeInsets.only(left: Dimens.gapX3),
                child: Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.lnList.length,
                      (i) => CommonCheckBox(
                          checkedIcon: Icons.check_box,
                          unCheckedIcon: Icons.check_box_outline_blank,
                          isActive: !controller.isNotPalpableInguinal.value,
                          name: controller.lnList.values.elementAt(i),
                          isSelected: controller.selectedInguinalLN
                              .contains(controller.lnList.keys.elementAt(i)),
                          onTap: () => controller.onSelectinguinalLN(idx: i)),
                    ),
                  ),
                )),
          ])
        : Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Supraclavicular LN",
              style: AppStyles.tsBlackSemi20,
            ),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Row(
              children: [
                Obx(() => CommonCheckBox(
                      isSelected: controller.isNotPalpableSupraclavicular.value,
                      onTap: () {
                        controller.onCheckedNotPalpableSupraclavicular();
                        controller.selectedLN.clear();
                      },
                      name: "Not Palpable",
                      textStyle: AppStyles.tsBlackSemi20,
                    )),
                const SizedBox(
                  width: Dimens.gapX4,
                ),
                Obx(() => CommonCheckBox(
                      isSelected:
                          !controller.isNotPalpableSupraclavicular.value,
                      onTap: () =>
                          controller.onCheckedNotPalpableSupraclavicular(),
                      name: "Palpable",
                      textStyle: AppStyles.tsBlackSemi20,
                    ))
              ],
            ),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Padding(
                padding: const EdgeInsets.only(left: Dimens.gapX3),
                child: Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.lnList.length,
                      (i) => CommonCheckBox(
                          checkedIcon: Icons.check_box,
                          unCheckedIcon: Icons.check_box_outline_blank,
                          isActive:
                              !controller.isNotPalpableSupraclavicular.value,
                          name: controller.lnList.values.elementAt(i),
                          isSelected: controller.selectedLN
                              .contains(controller.lnList.keys.elementAt(i)),
                          onTap: () => controller.onSelectLN(idx: i)),
                    ),
                  ),
                )),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            const Text(
              "Axillary LN",
              style: AppStyles.tsBlackSemi20,
            ),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Row(
              children: [
                Obx(() => CommonCheckBox(
                      isSelected: controller.isNotPalpableAxillary.value,
                      onTap: () {
                        controller.onCheckedNotPalpableAxillary();
                        controller.selectedAxillaryLN.clear();
                      },
                      name: "Not Palpable",
                      textStyle: AppStyles.tsBlackSemi20,
                    )),
                const SizedBox(
                  width: Dimens.gapX4,
                ),
                Obx(() => CommonCheckBox(
                      isSelected: !controller.isNotPalpableAxillary.value,
                      onTap: () => controller.onCheckedNotPalpableAxillary(),
                      name: "Palpable",
                      textStyle: AppStyles.tsBlackSemi20,
                    ))
              ],
            ),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Padding(
                padding: const EdgeInsets.only(left: Dimens.gapX3),
                child: Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.lnList.length,
                      (i) => CommonCheckBox(
                          checkedIcon: Icons.check_box,
                          unCheckedIcon: Icons.check_box_outline_blank,
                          isActive: !controller.isNotPalpableAxillary.value,
                          name: controller.lnList.values.elementAt(i),
                          isSelected: controller.selectedAxillaryLN
                              .contains(controller.lnList.keys.elementAt(i)),
                          onTap: () => controller.onSelectAxillaryLN(idx: i)),
                    ),
                  ),
                )),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            const Text(
              "Supratrochlear LN",
              style: AppStyles.tsBlackSemi20,
            ),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Row(
              children: [
                Obx(() => CommonCheckBox(
                      isSelected: controller.isNotPalpableSupratrochlear.value,
                      onTap: () {
                        controller.onCheckedNotPalpableSupratrochlear();
                        controller.selectedSupratrochlearLN.clear();
                      },
                      name: "Not Palpable",
                      textStyle: AppStyles.tsBlackSemi20,
                    )),
                const SizedBox(
                  width: Dimens.gapX4,
                ),
                Obx(() => CommonCheckBox(
                      isSelected: !controller.isNotPalpableSupratrochlear.value,
                      onTap: () =>
                          controller.onCheckedNotPalpableSupratrochlear(),
                      name: "Palpable",
                      textStyle: AppStyles.tsBlackSemi20,
                    ))
              ],
            ),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Padding(
                padding: const EdgeInsets.only(left: Dimens.gapX3),
                child: Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.lnList.length,
                      (i) => CommonCheckBox(
                          checkedIcon: Icons.check_box,
                          unCheckedIcon: Icons.check_box_outline_blank,
                          isActive:
                              !controller.isNotPalpableSupratrochlear.value,
                          name: controller.lnList.values.elementAt(i),
                          isSelected: controller.selectedSupratrochlearLN
                              .contains(controller.lnList.keys.elementAt(i)),
                          onTap: () =>
                              controller.onSelectSupratrochlearLN(idx: i)),
                    ),
                  ),
                )),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            const Text(
              "Inguinal LN",
              style: AppStyles.tsBlackSemi20,
            ),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Row(
              children: [
                Obx(() => CommonCheckBox(
                      isSelected: controller.isNotPalpableInguinal.value,
                      onTap: () {
                        controller.onCheckedNotPalpableInguinal();
                        controller.selectedInguinalLN.clear();
                      },
                      name: "Not Palpable",
                      textStyle: AppStyles.tsBlackSemi20,
                    )),
                const SizedBox(
                  width: Dimens.gapX4,
                ),
                Obx(() => CommonCheckBox(
                      isSelected: !controller.isNotPalpableInguinal.value,
                      onTap: () => controller.onCheckedNotPalpableInguinal(),
                      name: "Palpable",
                      textStyle: AppStyles.tsBlackSemi20,
                    ))
              ],
            ),
            const SizedBox(
              height: Dimens.gapX2,
            ),
            Padding(
                padding: const EdgeInsets.only(left: Dimens.gapX3),
                child: Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.lnList.length,
                      (i) => CommonCheckBox(
                          checkedIcon: Icons.check_box,
                          unCheckedIcon: Icons.check_box_outline_blank,
                          isActive: !controller.isNotPalpableInguinal.value,
                          name: controller.lnList.values.elementAt(i),
                          isSelected: controller.selectedInguinalLN
                              .contains(controller.lnList.keys.elementAt(i)),
                          onTap: () => controller.onSelectinguinalLN(idx: i)),
                    ),
                  ),
                )),
          ]);
  }
}
