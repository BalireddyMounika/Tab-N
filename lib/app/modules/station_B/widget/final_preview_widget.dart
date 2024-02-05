import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/app_string.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_B/controllers/station_b_controller.dart';
import 'package:nivish/widgets/common_text.dart';
import '../../../../widgets/finnal_confirmation_widget.dart';

class FinalBPreviewWidget extends GetView<StationBController> {
  const FinalBPreviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CommonText(
          text: "Blood Pressure",
        ),
        Dimens.heightGap2,
        nameValueWidget(
            name: "Position", value: controller.selectedPosition.value),
        nameValueWidget(
            name: "Type of Instrument",
            value: controller.selectedBPInstrument.value),
        Visibility(
          visible: controller.systolicBP.controller.text.isNotEmpty,
          child: nameValueWidget(
              name: "Systolic BP",
              value: "${controller.systolicBP.controller.text} mm Hg"),
        ),
        Visibility(
          visible: controller.diastolicBp.controller.text.isNotEmpty,
          child: nameValueWidget(
              name: "Diastolic BP",
              value: "${controller.diastolicBp.controller.text} mm Hg"),
        ),
        nameValueWidget(
            name: "Respiration",
            value: "${controller.respiration.controller.text} min"),
        nameValueWidget(
            name: "Heart Rate",
            value: "${controller.heart.controller.text} min"),
        Dimens.heightGap2,
        const CommonText(
          text: AppStrings.temperature,
        ),
        Dimens.heightGap2,
        nameValueWidget(
            name: "Measurement Site",
            value: controller.selectedMeasurement.value),
        nameValueWidget(
            name: "Type of Instrument",
            value: controller.selectedTemperatureInstrument.value),
        nameValueWidget(
            name: AppStrings.temperature,
            value:
                "${controller.temperature.controller.text} ${controller.selectedTemperatureDegrees.value}"),
        nameValueWidget(
            name: AppStrings.oxygenSaturation,
            value: "${controller.oxygenSaturation.controller.text} %"),
        Visibility(
          visible: controller.otherObservations.controller.text.isNotEmpty,
          child: nameValueWidget(
              name: AppStrings.otherObservations,
              value: "${controller.otherObservations.controller.text} "),
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
                  visible: controller.selectedReferralType.contains('Other'),
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
