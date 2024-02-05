import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:nivish/app/modules/station_D/controllers/station_d_controller.dart';
import 'package:nivish/app/themes/app_styles.dart';
import '../../../../widgets/common_check_box.dart';
import '../../../../widgets/common_input_field.dart';
import '../../../data/values/dimens.dart';
import 'package:get/get.dart';

class StationDPureToneLeftEarView extends GetView<StationDController> {
  StationDPureToneLeftEarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Left Ear",
            style: AppStyles.tsBrownMedium24,
          ),
          const SizedBox(
            height: Dimens.gapX2,
          ),
          const Text(
            "500 Hz, 25 dB",
            style: AppStyles.tsBlackSemi20,
          ),
          const SizedBox(
            height: Dimens.gapX2,
          ),
          Obx(
                () => StaggeredGrid.count(
              crossAxisCount: Get.width < 600 ? 1 : 3,
              mainAxisSpacing: 24,
              crossAxisSpacing: 12,
              children: List.generate(
                controller.fiveHundredLeftList.length,
                    (i) => CommonCheckBox(
                  name: controller.fiveHundredLeftList[i],
                  isSelected: controller.fiveHundredLeftList[i] ==
                      controller.selectedFiveHundredLeft.value,
                  onTap: () => controller.onSelectFiveHundredLeft(
                      name: controller.fiveHundredLeftList[i]),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: Dimens.gapX1,
          ),
          Obx(
                () => Row(
              children: [
                CommonCheckBox(
                    isActive: controller.fiveHundredLeft.value,
                    name: 'Refer',
                    isSelected: controller.selectedFiveHundredLeft.value ==
                        'Refer',
                    onTap: () {
                      controller.selectedFiveHundredLeft.value = 'Refer';
                      controller.selectedFiveHundredLeft.refresh();
                    }),
                const SizedBox(width: Dimens.gapX2),
                Expanded(
                    child: CommonInputField(
                      hintText: "Type here",
                      isEnabled:
                      controller.selectedFiveHundredLeft.value == 'Refer',
                      wrapper: controller.fiveHundredLeftWrapper,
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: Dimens.gapX2,
          ),
          const Text(
            "1000 Hz, 25 dB",
            style: AppStyles.tsBlackSemi20,
          ),
          const SizedBox(
            height: Dimens.gapX2,
          ),
          Obx(
                () => StaggeredGrid.count(
              crossAxisCount: Get.width < 600 ? 1 : 3,
              mainAxisSpacing: 24,
              crossAxisSpacing: 12,
              children: List.generate(
                controller.thousandLeftList.length,
                    (i) => CommonCheckBox(
                  name: controller.thousandLeftList[i],
                  isSelected: controller.thousandLeftList[i] ==
                      controller.selectedThousandLeft.value,
                  onTap: () => controller.onSelectThousandLeft(
                      name: controller.thousandLeftList[i]),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: Dimens.gapX1,
          ),
          Obx(
                () => Row(
              children: [
                CommonCheckBox(
                    isActive: controller.thousandLeft.value,
                    name: 'Refer',
                    isSelected:
                    controller.selectedThousandLeft.value == 'Refer',
                    onTap: () {
                      controller.selectedThousandLeft.value = 'Refer';
                      controller.selectedThousandLeft.refresh();
                    }),
                const SizedBox(width: Dimens.gapX2),
                Expanded(
                    child: CommonInputField(
                      hintText: "Type here",
                      isEnabled:
                      controller.selectedThousandLeft.value == 'Refer',
                      wrapper: controller.thousandLeftWrapper,
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: Dimens.gapX4,
          ),
          const Text(
            "2000 Hz, 25 dB",
            style: AppStyles.tsBlackSemi20,
          ),
          const SizedBox(
            height: Dimens.gapX2,
          ),
          Obx(
                () => StaggeredGrid.count(
              crossAxisCount: Get.width < 600 ? 1 : 3,
              mainAxisSpacing: 24,
              crossAxisSpacing: 12,
              children: List.generate(
                controller.twoThousandLeftList.length,
                    (i) => CommonCheckBox(
                  name: controller.twoThousandLeftList[i],
                  isSelected: controller.twoThousandLeftList[i] ==
                      controller.selectedTwoThousandLeft.value,
                  onTap: () => controller.onSelectTwoThousandLeft(
                      name: controller.twoThousandLeftList[i]),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: Dimens.gapX1,
          ),
          Obx(
                () => Row(
              children: [
                CommonCheckBox(
                    isActive: controller.twoThousandLeft.value,
                    name: 'Refer',
                    isSelected: controller.selectedTwoThousandLeft.value ==
                        'Refer',
                    onTap: () {
                      controller.selectedTwoThousandLeft.value = 'Refer';
                      controller.selectedTwoThousandLeft.refresh();
                    }),
                const SizedBox(width: Dimens.gapX2),
                Expanded(
                    child: CommonInputField(
                      hintText: "Type here",
                      isEnabled:
                      controller.selectedTwoThousandLeft.value == 'Refer',
                      wrapper: controller.twoThousandLeftWrapper,
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: Dimens.gapX4,
          ),
          const Text(
            "4000 Hz, 25 dB",
            style: AppStyles.tsBlackSemi20,
          ),
          const SizedBox(
            height: Dimens.gapX2,
          ),
          Obx(
                () => StaggeredGrid.count(
              crossAxisCount: Get.width < 600 ? 1 : 3,
              mainAxisSpacing: 24,
              crossAxisSpacing: 12,
              children: List.generate(
                controller.fourThousandLeftList.length,
                    (i) => CommonCheckBox(
                  name: controller.fourThousandLeftList[i],
                  isSelected: controller.fourThousandLeftList[i] ==
                      controller.selectedFourThousandLeft.value,
                  onTap: () => controller.onSelectFourThousandLeft(
                      name: controller.fourThousandLeftList[i]),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: Dimens.gapX1,
          ),
          Obx(
                () => Row(
              children: [
                CommonCheckBox(
                    isActive: controller.fourThousandLeft.value,
                    name: 'Refer',
                    isSelected:
                    controller.selectedFourThousandLeft.value ==
                        'Refer',
                    onTap: () {
                      controller.selectedFourThousandLeft.value = 'Refer';
                      controller.selectedFourThousandLeft.refresh();
                    }),
                const SizedBox(width: Dimens.gapX2),
                Expanded(
                    child: CommonInputField(
                      hintText: "Type here",
                      isEnabled:
                      controller.selectedFourThousandLeft.value == 'Refer',
                      wrapper: controller.fourThousandLeftWrapper,
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: Dimens.gapX4,
          ),
          const Text(
            "6000 Hz, 25 dB",
            style: AppStyles.tsBlackSemi20,
          ),
          const SizedBox(
            height: Dimens.gapX2,
          ),
          Obx(
                () => StaggeredGrid.count(
              crossAxisCount: Get.width < 600 ? 1 : 3,
              mainAxisSpacing: 24,
              crossAxisSpacing: 12,
              children: List.generate(
                controller.sixThousandLeftList.length,
                    (i) => CommonCheckBox(
                  name: controller.sixThousandLeftList[i],
                  isSelected: controller.sixThousandLeftList[i] ==
                      controller.selectedSixThousandLeft.value,
                  onTap: () => controller.onSelectSixThousandLeft(
                      name: controller.sixThousandLeftList[i]),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: Dimens.gapX1,
          ),
          Obx(
                () => Row(
              children: [
                CommonCheckBox(
                    isActive: controller.sixThousandLeft.value,
                    name: 'Refer',
                    isSelected: controller.selectedSixThousandLeft.value ==
                        'Refer',
                    onTap: () {
                      controller.selectedSixThousandLeft.value = 'Refer';
                      controller.selectedSixThousandLeft.refresh();
                    }),
                const SizedBox(width: Dimens.gapX2),
                Expanded(
                    child: CommonInputField(
                      hintText: "Type here",
                      isEnabled:
                      controller.selectedSixThousandLeft.value == 'Refer',
                      wrapper: controller.sixThousandLeftWrapper,
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: Dimens.gapX4,
          ),
          const Text(
            "8000 Hz, 25 dB",
            style: AppStyles.tsBlackSemi20,
          ),
          const SizedBox(
            height: Dimens.gapX2,
          ),
          Obx(
                () => StaggeredGrid.count(
              crossAxisCount: Get.width < 600 ? 1 : 3,
              mainAxisSpacing: 24,
              crossAxisSpacing: 12,
              children: List.generate(
                controller.eightThousandLeftList.length,
                    (i) => CommonCheckBox(
                  name: controller.eightThousandLeftList[i],
                  isSelected: controller.eightThousandLeftList[i] ==
                      controller.selectedEightThousandLeft.value,
                  onTap: () => controller.onSelectEightThousandLeft(
                      name: controller.eightThousandLeftList[i]),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: Dimens.gapX1,
          ),
          Obx(
                () => Row(
              children: [
                CommonCheckBox(
                    isActive: controller.eightThousandLeft.value,
                    name: 'Refer',
                    isSelected:
                    controller.selectedEightThousandLeft.value ==
                        'Refer',
                    onTap: () {
                      controller.selectedEightThousandLeft.value = 'Refer';
                      controller.selectedEightThousandLeft.refresh();
                    }),
                const SizedBox(width: Dimens.gapX2),
                Expanded(
                    child: CommonInputField(
                      hintText: "Type here",
                      isEnabled: controller.selectedEightThousandLeft.value ==
                          'Refer',
                      wrapper: controller.eightThousandLeftWrapper,
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: Dimens.gapX4,
          ),
        ]);
  }
}
