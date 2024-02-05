import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_B/controllers/station_b_controller.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/widgets/common_stepper.dart';
import 'package:nivish/widgets/text/common_text.dart';

class StationBStepper extends GetView<StationBController> {
  const StationBStepper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Dimens.heightGap1,
        subHeading(text: 'Vitals', textColor: AppColors.baseColor),
        Dimens.heightGap2,
        Obx(
          () => Center(
            child: CustomStepper(
              currentStep: controller.selectedTabIdx.value,
              onStepChanged: (step) {},
              stepNumber: 5,
              indexNumber: 4,
            ).paddingSymmetric(horizontal: Dimens.gapX3),
          ),
        ),
      ],
    );
  }
}
