import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:nivish/app/modules/station_D/controllers/station_d_controller.dart';
import 'package:nivish/app/modules/station_D/tabs/station_d_pure_tone_left_ear.dart';
import 'package:nivish/app/themes/app_styles.dart';
import '../../../../widgets/common_check_box.dart';
import '../../../../widgets/common_input_field.dart';
import '../../../../widgets/common_text.dart';
import '../../../data/values/dimens.dart';
import '../../../themes/app_colors.dart';
import 'package:get/get.dart';

class StationDPureToneRightEarView extends GetView<StationDController> {
  const StationDPureToneRightEarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(blurRadius: 15, color: AppColors.greyColor)
            ]),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const CommonText(text: "Pure Tone Audiometry"),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              const Text(
                "Right Ear",
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
                    controller.fiveHundredRightList.length,
                    (i) => CommonCheckBox(
                      name: controller.fiveHundredRightList[i],
                      isSelected: controller.fiveHundredRightList[i] ==
                          controller.selectedFiveHundredRight.value,
                      onTap: () => controller.onSelectFiveHundredRight(
                          name: controller.fiveHundredRightList[i]),
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
                        isActive: controller.fiveHundredRight.value,
                        name: 'Refer',
                        isSelected: controller.selectedFiveHundredRight.value ==
                            'Refer',
                        onTap: () {
                          controller.selectedFiveHundredRight.value = 'Refer';
                          controller.selectedFiveHundredRight.refresh();
                        }),
                    const SizedBox(width: Dimens.gapX2),
                    Expanded(
                        child: CommonInputField(
                      hintText: "Type here",
                      isEnabled:
                          controller.selectedFiveHundredRight.value == 'Refer',
                      wrapper: controller.fiveHundredRightWrapper,
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
                    controller.thousandRightList.length,
                    (i) => CommonCheckBox(
                      name: controller.thousandRightList[i],
                      isSelected: controller.thousandRightList[i] ==
                          controller.selectedThousandRight.value,
                      onTap: () => controller.onSelectThousandRight(
                          name: controller.thousandRightList[i]),
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
                        isActive: controller.thousandRight.value,
                        name: 'Refer',
                        isSelected:
                            controller.selectedThousandRight.value == 'Refer',
                        onTap: () {
                          controller.selectedThousandRight.value = 'Refer';
                          controller.selectedThousandRight.refresh();
                        }),
                    const SizedBox(width: Dimens.gapX2),
                    Expanded(
                        child: CommonInputField(
                      hintText: "Type here",
                      isEnabled:
                          controller.selectedThousandRight.value == 'Refer',
                      wrapper: controller.thousandRightWrapper,
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
                    controller.twoThousandRightList.length,
                    (i) => CommonCheckBox(
                      name: controller.twoThousandRightList[i],
                      isSelected: controller.twoThousandRightList[i] ==
                          controller.selectedTwoThousandRight.value,
                      onTap: () => controller.onSelectTwoThousandRight(
                          name: controller.twoThousandRightList[i]),
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
                        isActive: controller.twoThousandRight.value,
                        name: 'Refer',
                        isSelected: controller.selectedTwoThousandRight.value ==
                            'Refer',
                        onTap: () {
                          controller.selectedTwoThousandRight.value = 'Refer';
                          controller.selectedTwoThousandRight.refresh();
                        }),
                    const SizedBox(width: Dimens.gapX2),
                    Expanded(
                        child: CommonInputField(
                      hintText: "Type here",
                      isEnabled:
                          controller.selectedTwoThousandRight.value == 'Refer',
                      wrapper: controller.twoThousandRightWrapper,
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
                    controller.fourThousandRightList.length,
                    (i) => CommonCheckBox(
                      name: controller.fourThousandRightList[i],
                      isSelected: controller.fourThousandRightList[i] ==
                          controller.selectedFourThousandRight.value,
                      onTap: () => controller.onSelectFourThousandRight(
                          name: controller.fourThousandRightList[i]),
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
                        isActive: controller.fourThousandRight.value,
                        name: 'Refer',
                        isSelected:
                            controller.selectedFourThousandRight.value ==
                                'Refer',
                        onTap: () {
                          controller.selectedFourThousandRight.value = 'Refer';
                          controller.selectedFourThousandRight.refresh();
                        }),
                    const SizedBox(width: Dimens.gapX2),
                    Expanded(
                        child: CommonInputField(
                      hintText: "Type here",
                      isEnabled:
                          controller.selectedFourThousandRight.value == 'Refer',
                      wrapper: controller.fourThousandRightWrapper,
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
                    controller.sixThousandRightList.length,
                    (i) => CommonCheckBox(
                      name: controller.sixThousandRightList[i],
                      isSelected: controller.sixThousandRightList[i] ==
                          controller.selectedSixThousandRight.value,
                      onTap: () => controller.onSelectSixThousandRight(
                          name: controller.sixThousandRightList[i]),
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
                        isActive: controller.sixThousandRight.value,
                        name: 'Refer',
                        isSelected: controller.selectedSixThousandRight.value ==
                            'Refer',
                        onTap: () {
                          controller.selectedSixThousandRight.value = 'Refer';
                          controller.selectedSixThousandRight.refresh();
                        }),
                    const SizedBox(width: Dimens.gapX2),
                    Expanded(
                        child: CommonInputField(
                      hintText: "Type here",
                      isEnabled:
                          controller.selectedSixThousandRight.value == 'Refer',
                      wrapper: controller.sixThousandRightWrapper,
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
                    controller.eightThousandRightList.length,
                    (i) => CommonCheckBox(
                      name: controller.eightThousandRightList[i],
                      isSelected: controller.eightThousandRightList[i] ==
                          controller.selectedEightThousandRight.value,
                      onTap: () => controller.onSelectEightThousandRight(
                          name: controller.eightThousandRightList[i]),
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
                        isActive: controller.eightThousandRight.value,
                        name: 'Refer',
                        isSelected:
                            controller.selectedEightThousandRight.value ==
                                'Refer',
                        onTap: () {
                          controller.selectedEightThousandRight.value = 'Refer';
                          controller.selectedEightThousandRight.refresh();
                        }),
                    const SizedBox(width: Dimens.gapX2),
                    Expanded(
                        child: CommonInputField(
                      hintText: "Type here",
                      isEnabled: controller.selectedEightThousandRight.value ==
                          'Refer',
                      wrapper: controller.eightThousandRightWrapper,
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: Dimens.gapX4,
              ),
              StationDPureToneLeftEarView()
            ]).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
