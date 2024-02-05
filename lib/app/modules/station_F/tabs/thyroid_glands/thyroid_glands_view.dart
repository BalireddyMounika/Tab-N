import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/modules/station_F/tabs/thyroid_glands/thyroid_second_view.dart';
import 'package:nivish/widgets/common_text.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../data/values/dimens.dart';
import '../../../../data/values/images.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/app_styles.dart';
import '../../controllers/station_f_controller.dart';

class StationFThyroidGlandsView extends GetView<StationFController> {
  const StationFThyroidGlandsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(blurRadius: 15, color: AppColors.greyColor)
            ]),
            child: Get.width < 600
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Row(
                          children: [
                            const Expanded(
                                child: CommonText(
                                    text: "Thyroid Glands & Lymph Nodes")),
                            Expanded(
                              child: Align(
                                  alignment: Alignment.topRight,
                                  child: SvgPicture.asset(
                                    AppImages.thyroidGlands,
                                    width: Dimens.screenWidthXEight,
                                  )),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: Dimens.gapX2,
                        ),
                        const Text(
                          "Thyroid Glands",
                          style: AppStyles.tsBlackSemi20,
                        ),
                        const SizedBox(
                          height: Dimens.gapX1_5,
                        ),
                        Obx(
                          () => StaggeredGrid.count(
                            crossAxisCount: Get.width < 600 ? 1 : 2,
                            mainAxisSpacing: 24,
                            crossAxisSpacing: 12,
                            children: List.generate(
                              controller.thyroidGlandsList.length,
                              (i) => CommonCheckBox(
                                name: controller.thyroidGlandsList[i],
                                isSelected: controller.thyroidGlandsList[i] ==
                                    controller.selectedThyroidGlands.value,
                                onTap: () => controller.onSelectThyroidGlands(
                                    name: controller.thyroidGlandsList[i]),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                            padding: const EdgeInsets.only(left: Dimens.gapX3),
                            child: Obx(
                              () => StaggeredGrid.count(
                                crossAxisCount: Get.width < 600 ? 1 : 3,
                                mainAxisSpacing: 24,
                                crossAxisSpacing: 12,
                                children: List.generate(
                                  controller.enlargedList.length,
                                  (i) => CommonCheckBox(
                                    isActive: controller
                                            .selectedThyroidGlands.value ==
                                        'Enlarged',
                                    name: controller.enlargedList[i],
                                    isSelected: controller.enlargedList[i] ==
                                        controller.selectedEnlarged.value,
                                    onTap: () => controller.onSelectEnlarged(
                                        name: controller.enlargedList[i]),
                                  ),
                                ),
                              ),
                            )),
                        const SizedBox(
                          height: Dimens.gapX2,
                        ),
                        const Text(
                          "Cervical LN",
                          style: AppStyles.tsBlackSemi20,
                        ),
                        const SizedBox(
                          height: Dimens.gapX1_5,
                        ),

                            Obx(() => CommonCheckBox(
                                name: "Not Palpable",
                                textStyle: AppStyles.tsBlackMedium20,
                                isSelected: controller.isPalpable.value,
                                onTap: () {
                                  controller.onCheckedPalpable();
                                  controller.selectedPalpable.clear();
                                })),
                            const SizedBox(
                              height: Dimens.gapX1,
                            ),
                            Obx(() => CommonCheckBox(
                                  name: "Palpable",
                                  textStyle: AppStyles.tsBlackMedium20,
                                  isSelected: !controller.isPalpable.value,
                                  onTap: () => controller.onCheckedPalpable(),
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
                                  controller.palpableList.length,
                                  (i) => CommonCheckBox(
                                      checkedIcon: Icons.check_box,
                                      unCheckedIcon:
                                          Icons.check_box_outline_blank,
                                      isActive: !controller.isPalpable.value,
                                      name: controller.palpableList.values
                                          .elementAt(i),
                                      isSelected: controller.selectedPalpable
                                          .contains(controller.palpableList.keys
                                              .elementAt(i)),
                                      onTap: () =>
                                          controller.onSelectPalpable(idx: i)),
                                ),
                              ),
                            )),
                        const SizedBox(
                          height: Dimens.gapX2,
                        ),
                        const StationFThyroidGlandsSecondView()
                      ]).paddingAll(Dimens.gapX4)
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Row(
                          children: [
                            const CommonText(
                                text: "Thyroid Glands & Lymph Nodes"),
                            Expanded(
                              child: Align(
                                  alignment: Alignment.topRight,
                                  child: SvgPicture.asset(
                                    AppImages.thyroidGlands,
                                    width: Dimens.screenWidthXEight,
                                  )),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: Dimens.gapX2,
                        ),
                        const Text(
                          "Thyroid Glands",
                          style: AppStyles.tsBlackSemi20,
                        ),
                        const SizedBox(
                          height: Dimens.gapX1_5,
                        ),
                        Obx(
                          () => StaggeredGrid.count(
                            crossAxisCount: Get.width < 600 ? 1 : 2,
                            mainAxisSpacing: 24,
                            crossAxisSpacing: 12,
                            children: List.generate(
                              controller.thyroidGlandsList.length,
                              (i) => CommonCheckBox(
                                name: controller.thyroidGlandsList[i],
                                isSelected: controller.thyroidGlandsList[i] ==
                                    controller.selectedThyroidGlands.value,
                                onTap: () => controller.onSelectThyroidGlands(
                                    name: controller.thyroidGlandsList[i]),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                            padding: const EdgeInsets.only(left: Dimens.gapX3),
                            child: Obx(
                              () => StaggeredGrid.count(
                                crossAxisCount: Get.width < 600 ? 1 : 3,
                                mainAxisSpacing: 24,
                                crossAxisSpacing: 12,
                                children: List.generate(
                                  controller.enlargedList.length,
                                  (i) => CommonCheckBox(
                                    isActive: controller
                                            .selectedThyroidGlands.value ==
                                        'Enlarged',
                                    name: controller.enlargedList[i],
                                    isSelected: controller.enlargedList[i] ==
                                        controller.selectedEnlarged.value,
                                    onTap: () => controller.onSelectEnlarged(
                                        name: controller.enlargedList[i]),
                                  ),
                                ),
                              ),
                            )),
                        const SizedBox(
                          height: Dimens.gapX2,
                        ),
                        const Text(
                          "Cervical LN",
                          style: AppStyles.tsBlackSemi20,
                        ),
                        const SizedBox(
                          height: Dimens.gapX1_5,
                        ),
                        Row(
                          children: [
                            Obx(() => CommonCheckBox(
                                name: "Not Palpable",
                                textStyle: AppStyles.tsBlackMedium20,
                                isSelected: controller.isPalpable.value,
                                onTap: () {
                                  controller.onCheckedPalpable();
                                  controller.selectedPalpable.clear();
                                })),
                            const SizedBox(
                              width: Dimens.gapX4,
                            ),
                            Obx(() => CommonCheckBox(
                                  name: "Palpable",
                                  textStyle: AppStyles.tsBlackMedium20,
                                  isSelected: !controller.isPalpable.value,
                                  onTap: () => controller.onCheckedPalpable(),
                                )),
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
                                  controller.palpableList.length,
                                  (i) => CommonCheckBox(
                                      checkedIcon: Icons.check_box,
                                      unCheckedIcon:
                                          Icons.check_box_outline_blank,
                                      isActive: !controller.isPalpable.value,
                                      name: controller.palpableList.values
                                          .elementAt(i),
                                      isSelected: controller.selectedPalpable
                                          .contains(controller.palpableList.keys
                                              .elementAt(i)),
                                      onTap: () =>
                                          controller.onSelectPalpable(idx: i)),
                                ),
                              ),
                            )),
                        const SizedBox(
                          height: Dimens.gapX2,
                        ),
                        const StationFThyroidGlandsSecondView()
                      ]).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
