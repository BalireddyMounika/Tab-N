import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/app_string.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_A/controllers/section_a_controller.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/Age_Gender_validations.dart';

class FinalPreviewWidget extends GetView<StationAController> {
  const FinalPreviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StudentInfo.calculateAge() >= 2
                ? nameValueWidget(
                    name: AppStrings.height,
                    value: "${controller.heightWrapper.controller.text} cm")
                : nameValueWidget(
                    name: "Length",
                    value: "${controller.lengthWrapper.controller.text} cm"),
            nameValueWidget(
                name: AppStrings.weight,
                value: "${controller.weightWrapper.controller.text} kg"),
            nameValueWidget(
                name: AppStrings.tricepsSkinFold,
                value:
                    "${controller.tricepsSkinFoldWrapper.controller.text} mm"),
            if (StudentInfo.calculateAge() < 5)
              nameValueWidget(
                  name: AppStrings.subscapularSkinFold,
                  value:
                      "${controller.subScapularSkinFoldWrapper.controller.text} mm"),
            if (StudentInfo.calculateAge() < 5)
              nameValueWidget(
                  name: AppStrings.armCir,
                  value:
                      "${controller.armCircumferenceWrapper.controller.text} cm"),
            if (StudentInfo.calculateAge() < 5)
              nameValueWidget(
                  name: AppStrings.headCir,
                  value: "${controller.headCircumference.controller.text} cm"),
            nameValueWidget(
                name: AppStrings.abdominalGirth,
                value:
                    "${controller.abdominalGirthWrapper.controller.text} cm"),
            nameValueWidget(
              name: "Calculated BMI",
              value:
                  '${controller.gerCalculatedBMI().toStringAsFixed(2)} kg/m^2',
            ),
            nameValueWidget(
                name: "Calculated Abdominal Girth To Height",
                value: controller
                    .gerCalculatedAbdominalGirthToHeight()
                    .toStringAsFixed(2)),
            Visibility(
              visible: controller.otherObservations.controller.text.isNotEmpty,
              child: nameValueWidget(
                  name: AppStrings.otherObservations,
                  value: controller.otherObservations.controller.text),
            ),
            nameValueWidget(
              name: 'Specialist Referral Recommended',
              value: controller.isSpecialistReferralNeeded.value ? 'Yes' : 'No',
            ),
            Visibility(
              visible: controller.isSpecialistReferralNeeded.value,
              child: Column(
                children: [
                  nameValueWidget(
                      name: 'Type',
                      value: controller.selectedReferralType.join(', ')),
                  Visibility(
                      visible:
                          controller.selectedReferralType.contains('Other'),
                      child: nameValueWidget(
                          name: 'Other',
                          value: controller.otherWrapper.controller.text)),
                  nameValueWidget(
                      name: 'Flag ', value: controller.selectedReFlag.value),
                ],
              ),
            ),
          ],
        ));
  }
}

Widget nameValueWidget({required String name, required String value}) {
  return Column(
    children: [
      Row(
        children: [
          Expanded(child: Text(name, style: AppStyles.tsBlackMedium18)),
          const Expanded(child: Text(':', style: AppStyles.tsBlackMedium18)),
          Expanded(child: Text(value, style: AppStyles.tsBlackMedium18))
        ],
      ),
      Dimens.heightGap2,
    ],
  );
}
