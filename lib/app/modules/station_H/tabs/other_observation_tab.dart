import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_H/controllers/station_h_controller.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/common_check_box.dart';
import 'package:nivish/widgets/common_input_field.dart';
import 'package:nivish/widgets/text/common_text.dart';
import 'package:nivish/widgets/toggle/common_switch.dart';
import '../../../data/values/app_string.dart';

class OtherObservation extends GetView<StationHController> {
  const OtherObservation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(blurRadius: 15, color: AppColors.greyColor),
        ],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          AppStrings.otherObservations,
          style: AppStyles.tsBlackSemi20,
        ),
        const SizedBox(height: Dimens.gapX1),
        Align(
            alignment: Alignment.centerLeft,
            child: CommonInputField(
              maxLine: 2,
              wrapper: controller.otherObservation,
              hintText: "Type here",
            )),
        const SizedBox(height: Dimens.gapX4),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              child: Text(
                "Dental Specialist Referral Needed",
                style: AppStyles.tsBlackSemi20,
              ),
            ),
            Dimens.widthGap4,
            CommonSwitch(
              onTap: (value) {
                controller.isDentalSpecialistReferralNeeded.value = value;
                controller.selectedDentalSpecialistReferral.value =
                    'Pediatric Dentist';
                controller.selectedDentalSpecialistReferralFlag.value = '';
              },
              initialSwitchValue:
                  controller.isDentalSpecialistReferralNeeded.value,
            ),
          ],
        ),
        const SizedBox(height: Dimens.gapX2),
        Obx(() => Visibility(
            visible: controller.isDentalSpecialistReferralNeeded.value,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                subHeading(text: 'Type'),
                const SizedBox(height: Dimens.gapX2),
                Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 1,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.dentalSpecialistReferralType.length,
                      (i) => CommonCheckBox(
                        isActive:
                            controller.isDentalSpecialistReferralNeeded.value,
                        name: controller.dentalSpecialistReferralType[i],
                        isSelected: controller
                                .dentalSpecialistReferralType[i] ==
                            controller.selectedDentalSpecialistReferral.value,
                        onTap: () => controller.selectedDentalSpecialistReferral
                            .value = controller.dentalSpecialistReferralType[i],
                      ),
                    ),
                  ).paddingSymmetric(horizontal: Dimens.gapX2),
                ),
                const SizedBox(height: Dimens.gapX2),
                subHeading(text: 'Flag'),
                const SizedBox(height: Dimens.gapX2),
                Obx(
                  () => StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 3,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.flagOptions.length,
                      (i) => CommonCheckBox(
                        isActive:
                            controller.isDentalSpecialistReferralNeeded.value,
                        name: controller.flagOptions[i],
                        isSelected: controller.flagOptions[i] ==
                            controller
                                .selectedDentalSpecialistReferralFlag.value,
                        onTap: () => controller
                            .selectedDentalSpecialistReferralFlag
                            .value = controller.flagOptions[i],
                      ),
                    ),
                  ).paddingSymmetric(horizontal: Dimens.gapX2),
                ),
              ],
            )))
      ]).paddingAll(Dimens.gapX4),
    ).paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
