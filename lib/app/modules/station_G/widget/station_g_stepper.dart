import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_G/controllers/station_g_controller.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/widgets/common_stepper.dart';
import 'package:nivish/widgets/text/common_text.dart';

class StationGStepper extends GetView<StationGController> {
  const StationGStepper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Dimens.heightGap1,
        subHeading(text: 'System', textColor: AppColors.baseColor),
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
  //
  // Widget dropDown() {
  //   return Obx(
  //     () => controller.selectedTabIdx.value == 4
  //         ? Row(
  //             mainAxisAlignment: MainAxisAlignment.end,
  //             children: [
  //               title(text: 'Jump To: '),
  //               DropdownButton<String>(
  //                 value: controller.selectedDropDown.value,
  //                 onChanged: (String? value) {
  //                   if (value != null) {
  //                     controller.selectedDropDown.value = value;
  //                   }
  //                 },
  //                 items: controller.dropdownItems.map((String value) {
  //                   return DropdownMenuItem<String>(
  //                     value: value,
  //                     child: Text(value),
  //                   );
  //                 }).toList(),
  //               ),
  //             ],
  //           ).paddingOnly(right: Dimens.gapX4, top: Dimens.gapX1)
  //         : const SizedBox(height: Dimens.gapX5),
  //   );
  // }
}
