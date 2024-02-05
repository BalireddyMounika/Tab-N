import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/modules/station_C/controllers/station_c_controller.dart';
import 'package:nivish/widgets/toggle/two_option_selector_widget.dart';
import 'package:nivish/widgets/text/common_text.dart';

import '../../../data/values/dimens.dart';
import '../../../themes/app_colors.dart';

class StationCExtraOcularView extends GetView<StationCController> {
  const StationCExtraOcularView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
          BoxShadow(blurRadius: 15, color: AppColors.greyColor)
        ]),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heading(
                text: "Extra Ocular",
              ),
              SizedBox(
                height: Dimens.gapX4,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  subHeading(
                    text: "Right",
                    textColor: AppColors.baseColor,
                  ),
                  const SizedBox(
                    height: Dimens.gapX3,
                  ),
                  rightEyeWidget(),
                  SizedBox(
                    height: Dimens.gapX3,
                  ),
                  Divider(
                    thickness: 1.3,
                  ),
                  SizedBox(height: Dimens.gapX3),
                  heading(text: "Left", textColor: AppColors.baseColor),
                  SizedBox(
                    height: Dimens.gapX3,
                  ),
                  leftEyeWidget(),
                ],
              ).paddingSymmetric(horizontal: Dimens.gapX2),
            ]).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }

  Widget rightEyeWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
              () => DoubleOptionSelector(
              label: 'Normal Eye Movement',
              isOptionOneSelected: controller.isNormalMovementRE.value,
              onSelectOption: (value) {
                controller.isNormalMovementRE.value = value;
              }),
        ),
        SizedBox(height: Dimens.gapX3),
        Obx(
              () => DoubleOptionSelector(
              label: 'Strabismus',
              isOptionOneSelected: controller.isStrabismusRE.value,
              onSelectOption: (value) {
                controller.isStrabismusRE.value = value;
              }),
        ),
        SizedBox(height: Dimens.gapX3),
        Obx(
              () => DoubleOptionSelector(
              label: 'Dropping Lid',
              isOptionOneSelected: controller.isDroppingLidRE.value,
              onSelectOption: (value) {
                controller.isDroppingLidRE.value = value;
              }),
        ),
        SizedBox(height: Dimens.gapX3),
        Obx(
              () => DoubleOptionSelector(
              label: 'Restricted Mobility',
              isOptionOneSelected: controller.isRestrictMobilityRE.value,
              onSelectOption: (value) {
                controller.isRestrictMobilityRE.value = value;
              }),
        ),
        SizedBox(height: Dimens.gapX3),
        Obx(
              () => DoubleOptionSelector(
              label: 'Nystagmus',
              isOptionOneSelected: controller.isNystagumsRE.value,
              onSelectOption: (value) {
                controller.isNystagumsRE.value = value;
              }),
        ),
        SizedBox(height: Dimens.gapX3),
        Obx(
              () => DoubleOptionSelector(
              label: 'Bulging',
              isOptionOneSelected: controller.isBulgingRE.value,
              onSelectOption: (value) {
                controller.isBulgingRE.value = value;
              }),
        ),
      ],
    );
  }

  Widget leftEyeWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
              () => DoubleOptionSelector(
              label: 'Normal Eye Movement',
              isOptionOneSelected: controller.isNormalMovementLE.value,
              onSelectOption: (value) {
                controller.isNormalMovementLE.value = value;
              }),
        ),
        SizedBox(height: Dimens.gapX3),
        Obx(
              () => DoubleOptionSelector(
              label: 'Strabismus',
              isOptionOneSelected: controller.isStrabismusLE.value,
              onSelectOption: (value) {
                controller.isStrabismusLE.value = value;
              }),
        ),
        SizedBox(height: Dimens.gapX3),
        Obx(
              () => DoubleOptionSelector(
              label: 'Dropping Lid',
              isOptionOneSelected: controller.isDroppingLidLE.value,
              onSelectOption: (value) {
                controller.isDroppingLidLE.value = value;
              }),
        ),
        SizedBox(height: Dimens.gapX3),
        Obx(
              () => DoubleOptionSelector(
              label: 'Restricted Mobility',
              isOptionOneSelected: controller.isRestrictMobilityLE.value,
              onSelectOption: (value) {
                controller.isRestrictMobilityLE.value = value;
              }),
        ),
        SizedBox(height: Dimens.gapX3),
        Obx(
              () => DoubleOptionSelector(
              label: 'Nystagmus',
              isOptionOneSelected: controller.isNystagumsLE.value,
              onSelectOption: (value) {
                controller.isNystagumsLE.value = value;
              }),
        ),
        SizedBox(height: Dimens.gapX3),
        Obx(
              () => DoubleOptionSelector(
              label: 'Bulging',
              isOptionOneSelected: controller.isBulgingLE.value,
              onSelectOption: (value) {
                controller.isBulgingLE.value = value;
              }),
        ),
      ],
    );
  }
}