import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/app_string.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/modules/station_B/widget/option_widget.dart';
import 'package:nivish/app/themes/app_colors.dart';
import '../../../../widgets/common_check_box.dart';
import '../../../../widgets/common_text.dart';
import '../../../data/values/dimens.dart';
import '../controllers/station_b_controller.dart';
import '../widget/option_with_inputfield.dart';

class StationBBloodPressureView extends GetView<StationBController> {
  const StationBBloodPressureView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: AppColors.white,
            boxShadow: [BoxShadow(blurRadius: 15, color: AppColors.greyColor)]),
        child: Form(
          key: controller.bpFormKey,
          child: Get.width < 600
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CommonText(
                          text: AppStrings.bp,
                        ),
                        Expanded(
                            child: SvgPicture.asset(
                          AppImages.bp,
                        ))
                      ],
                    ),
                    const SizedBox(height: Dimens.gapX2),
                    Column(
                      children: [
                        optionWidget(
                            optionNum: '1',
                            name: 'Position',
                            optionalText: 'While Recording'),
                        const SizedBox(height: Dimens.gapX2),
                        Obx(
                          () => StaggeredGrid.count(
                            crossAxisCount: Get.width < 600 ? 1 : 3,
                            mainAxisSpacing: 24,
                            crossAxisSpacing: 12,
                            children: List.generate(
                              controller.positionList.length,
                              (i) => CommonCheckBox(
                                name: controller.positionList[i],
                                isSelected: controller.positionList[i] ==
                                    controller.selectedPosition.value,
                                onTap: () => controller.onSelectPosition(
                                    name: controller.positionList[i]),
                              ),
                            ),
                          ).paddingSymmetric(horizontal: Dimens.gapX2),
                        ),
                        const SizedBox(height: Dimens.gapX3),
                        optionWidget(
                            optionNum: '2', name: 'Type of Instrument'),
                        const SizedBox(height: Dimens.gapX2),
                        Obx(
                          () => StaggeredGrid.count(
                            crossAxisCount: Get.width < 600 ? 1 : 1,
                            mainAxisSpacing: 24,
                            crossAxisSpacing: 12,
                            children: List.generate(
                              controller.instrumentList.length,
                              (i) => CommonCheckBox(
                                name: controller.instrumentList[i],
                                isSelected: controller.instrumentList[i] ==
                                    controller.selectedBPInstrument.value,
                                onTap: () => controller.onSelectInstrument(
                                    name: controller.instrumentList[i]),
                              ),
                            ),
                          ).paddingSymmetric(horizontal: Dimens.gapX2),
                        ),
                        const SizedBox(height: Dimens.gapX3),
                        optionWidget(
                            optionNum: '3', name: 'Systolic & Diastolic BP'),
                        const SizedBox(
                          height: Dimens.gapX3,
                        ),
                        optionInputFiled(
                                maxLength: 3,
                                isMandatory: true,
                                name: 'Systolic BP',
                                unit: 'mm Hg',
                                hintText: "mm Hg",
                                controller: controller.systolicBP)
                            .paddingSymmetric(horizontal: Dimens.gapX2),
                        const SizedBox(height: Dimens.gapX2),
                        optionInputFiled(
                                maxLength: 3,
                                isMandatory: true,
                                name: 'Diastolic BP',
                                unit: 'mm Hg',
                                hintText: "mm Hg",
                                controller: controller.diastolicBp)
                            .paddingSymmetric(horizontal: Dimens.gapX2),
                      ],
                    ).paddingSymmetric(horizontal: Dimens.gapX2)
                  ],
                ).paddingAll(Dimens.gapX3)
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CommonText(
                          text: AppStrings.bp,
                        ),
                        SvgPicture.asset(
                          AppImages.bp,
                        )
                      ],
                    ),
                    const SizedBox(height: Dimens.gapX2),
                    Column(
                      children: [
                        optionWidget(
                            optionNum: '1',
                            name: 'Position',
                            optionalText: 'While Recording'),
                        const SizedBox(height: Dimens.gapX2),
                        Obx(
                          () => StaggeredGrid.count(
                            crossAxisCount: Get.width < 600 ? 1 : 3,
                            mainAxisSpacing: 24,
                            crossAxisSpacing: 12,
                            children: List.generate(
                              controller.positionList.length,
                              (i) => CommonCheckBox(
                                name: controller.positionList[i],
                                isSelected: controller.positionList[i] ==
                                    controller.selectedPosition.value,
                                onTap: () => controller.onSelectPosition(
                                    name: controller.positionList[i]),
                              ),
                            ),
                          ).paddingSymmetric(horizontal: Dimens.gapX2),
                        ),
                        const SizedBox(height: Dimens.gapX3),
                        optionWidget(
                            optionNum: '2', name: 'Type of Instrument'),
                        const SizedBox(height: Dimens.gapX2),
                        Obx(
                          () => StaggeredGrid.count(
                            crossAxisCount: Get.width < 600 ? 1 : 1,
                            mainAxisSpacing: 24,
                            crossAxisSpacing: 12,
                            children: List.generate(
                              controller.instrumentList.length,
                              (i) => CommonCheckBox(
                                name: controller.instrumentList[i],
                                isSelected: controller.instrumentList[i] ==
                                    controller.selectedBPInstrument.value,
                                onTap: () => controller.onSelectInstrument(
                                    name: controller.instrumentList[i]),
                              ),
                            ),
                          ).paddingSymmetric(horizontal: Dimens.gapX2),
                        ),
                        const SizedBox(height: Dimens.gapX3),
                        optionWidget(
                            optionNum: '3', name: 'Systolic & Diastolic BP'),
                        const SizedBox(
                          height: Dimens.gapX3,
                        ),
                        optionInputFiled(
                                maxLength: 3,
                                name: 'Systolic BP',
                                isMandatory: true,
                                unit: 'mm Hg',
                                hintText: "mm Hg",
                                controller: controller.systolicBP)
                            .paddingSymmetric(horizontal: Dimens.gapX2),
                        const SizedBox(height: Dimens.gapX2),
                        optionInputFiled(
                                maxLength: 3,
                                name: 'Diastolic BP',
                                isMandatory: true,
                                unit: 'mm Hg',
                                hintText: "mm Hg",
                                controller: controller.diastolicBp)
                            .paddingSymmetric(horizontal: Dimens.gapX2),
                      ],
                    ).paddingSymmetric(horizontal: Dimens.gapX2)
                  ],
                ).paddingAll(Dimens.gapX4),
        )).paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
