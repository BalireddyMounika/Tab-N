import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/modules/station_F/tabs/mouth_throat/tonsils_view.dart';
import 'package:nivish/widgets/common_text.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../../widgets/common_input_field.dart';
import '../../../../data/values/dimens.dart';
import '../../../../data/values/images.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/app_styles.dart';
import '../../controllers/station_f_controller.dart';

class StationFMouthView extends GetView<StationFController> {
  const StationFMouthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(blurRadius: 15, color: AppColors.greyColor)
            ]),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  CommonText(text: "Mouth & Throat"),
                  Expanded(
                    child: Align(
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset(
                          AppImages.mouth,
                          width: Dimens.screenWidthX10,
                        )),
                  )
                ],
              ),
              const SizedBox(height: Dimens.gapX2),
              const Text(
                "Mucosa",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(height: Dimens.gapX2),
              Row(
                children: [
                  Obx(() => CommonCheckBox(
                      textStyle: AppStyles.tsBlackMedium20,
                      name: "Normal",
                      isSelected: controller.isMucosa.value,
                      onTap: () {
                        controller.onCheckedMucosa();
                        controller.selectedMucosaNames.clear();
                        controller.otherMucosaWrapper.controller.text = '';
                      })),
                  const SizedBox(
                    width: Dimens.gapX4,
                  ),
                  Obx(() => CommonCheckBox(
                        textStyle: AppStyles.tsBlackMedium20,
                        name: "Abnormal",
                        isSelected: !controller.isMucosa.value,
                        onTap: () => controller.onCheckedMucosa(),
                      )),
                ],
              ),
              const SizedBox(height: Dimens.gapX2),
              Padding(
                  padding: EdgeInsets.only(left: Dimens.gapX3),
                  child: Obx(
                    () => StaggeredGrid.count(
                      crossAxisCount: Get.width < 600 ? 1 : 2,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 12,
                      children: List.generate(
                        controller.mucosaListName.length,
                        (i) => CommonCheckBox(
                          checkedIcon: Icons.check_box,
                          unCheckedIcon: Icons.check_box_outline_blank,
                          isActive: !controller.isMucosa.value,
                          name: controller.mucosaListName.values.elementAt(i),
                          isSelected: controller.selectedMucosaNames.contains(
                              controller.mucosaListName.keys.elementAt(i)),
                          onTap: () => controller.onSelectMucosaNames(idx: i),
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: Dimens.gapX1,
              ),
              Obx(
                () => Visibility(
                  visible: controller.selectedMucosaNames.contains('Other'),
                  child: SizedBox(
                    width: 400,
                    child: CommonInputField(
                            isEnabled: controller.selectedMucosaNames
                                    .contains('Other') &&
                                !controller.isMucosa.value,
                        hintText: "Type here",
                        wrapper: controller.otherMucosaWrapper)
                        .paddingSymmetric(horizontal: Dimens.gapX4),
                  ),
                ),
              ),
              const SizedBox(height: Dimens.gapX2),
              const Text(
                "Tongue",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(height: Dimens.gapX2),
              Row(
                children: [
                  Obx(() => CommonCheckBox(
                      textStyle: AppStyles.tsBlackMedium20,
                      name: "Normal",
                      isSelected: controller.isTongue.value,
                      onTap: () {
                        controller.onCheckedTongue();
                        controller.selectedTongueNames.clear();
                        controller.otherTongueWrapper.controller.text = '';
                      })),
                  const SizedBox(
                    width: Dimens.gapX4,
                  ),
                  Obx(() => CommonCheckBox(
                        textStyle: AppStyles.tsBlackMedium20,
                        name: "Abnormal",
                        isSelected: !controller.isTongue.value,
                        onTap: () => controller.onCheckedTongue(),
                      )),
                ],
              ),
              const SizedBox(height: Dimens.gapX1),
              Padding(
                  padding: EdgeInsets.only(left: Dimens.gapX3),
                  child: Obx(
                    () => StaggeredGrid.count(
                      crossAxisCount: Get.width < 600 ? 1 : 2,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 12,
                      children: List.generate(
                        controller.tongueListName.length,
                        (i) => CommonCheckBox(
                          checkedIcon: Icons.check_box,
                          unCheckedIcon: Icons.check_box_outline_blank,
                          isActive: !controller.isTongue.value,
                          name: controller.tongueListName.values.elementAt(i),
                          isSelected: controller.selectedTongueNames.contains(
                              controller.tongueListName.keys.elementAt(i)),
                          onTap: () => controller.onSelectTongueNames(idx: i),
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: Dimens.gapX1,
              ),
              Obx(
                () => Visibility(
                  visible: controller.selectedTongueNames.contains('Other'),
                  child: SizedBox(
                    width: 400,
                    child: CommonInputField(
                            isEnabled: controller.selectedTongueNames
                                    .contains('Other') &&
                                !controller.isTongue.value,
                        hintText: "Type here",
                        wrapper: controller.otherTongueWrapper)
                        .paddingSymmetric(horizontal: Dimens.gapX4),
                  ),
                ),
              ),
              const SizedBox(height: Dimens.gapX2),
              const StationFTonsilsView()
            ]).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
