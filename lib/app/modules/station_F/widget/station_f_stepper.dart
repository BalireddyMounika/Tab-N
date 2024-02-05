import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_F/controllers/station_f_controller.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/widgets/common_stepper.dart';
import 'package:nivish/widgets/text/common_text.dart';

class StationFStepper extends GetView<StationFController> {
  const StationFStepper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Dimens.heightGap1,
        subHeading(text: 'Skin, Nails & Hairs', textColor: AppColors.baseColor),
        Dimens.heightGap2,
        Obx(
          () => Center(
            child: CustomStepper(
              currentStep: controller.selectedTabIdx.value,
              onStepChanged: (step) {},
              stepNumber: 10,
              indexNumber: 9,
            ).paddingSymmetric(horizontal: Dimens.gapX3),
          ),
        ),
      ],
    );
  }
}
