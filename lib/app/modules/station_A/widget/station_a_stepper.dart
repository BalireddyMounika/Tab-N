import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_A/controllers/section_a_controller.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/widgets/common_stepper.dart';
import 'package:nivish/widgets/text/common_text.dart';

class StationAStepper extends GetView<StationAController> {
  const StationAStepper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Dimens.heightGap1,
        subHeading(text: 'Anthropometrics', textColor: AppColors.baseColor),
        Dimens.heightGap2,
        Obx(
          () => Center(
            child: CustomStepper(
              currentStep: controller.selectedTabIdx.value,
              onStepChanged: (step) {},
              stepNumber: 9,
              indexNumber: 8,
            ).paddingSymmetric(horizontal: Dimens.gapX3),
          ),
        ),
      ],
    );
  }
}
