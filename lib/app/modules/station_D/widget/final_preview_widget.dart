import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/app_string.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_D/controllers/station_d_controller.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/Age_Gender_validations.dart';

import 'D_preview_model.dart';

class FinalDPreviewWidget extends GetView<StationDController> {
  final StationDPreviewModel data;
  const FinalDPreviewWidget({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Dimens.heightGap3,
        if (StudentInfo.calculateAge() >= 2)
          Column(
            children: [
              nameValueWidget(
                  name:
                      "Do you have any problem in hearing your Teachers/Friends/Parents?",
                  value: (data.hearingValue == 'Yes')
                      ? "${data.hearingValue} - ${data.hearingYesValue}"
                      : data.hearingValue ),
              nameValueWidget(
                name: "Does any fluid come out of your ears?",
                value: (data.fluidValue == 'No')
                    ? data.fluidValue
                    : "${data.fluidValue} - ${data.fluidYesValue}",
              ),
            ],
          ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Visual Inspection (External Inspection)",
              style: AppStyles.tsBlackSemi20,
            ),
            const SizedBox(height: Dimens.gapX2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      "Right Ear",
                      style: AppStyles.tsBlackSemi20,
                    ),
                    const SizedBox(
                      height: Dimens.gapX2,
                    ),
                    const Text(
                      "Pinna",
                      style: AppStyles.tsBlackSemi20,
                    ),
                    const SizedBox(
                      height: Dimens.gapX0_5,
                    ),
                    Text(
                      (data.rightEarPinnaValue == 'Normal')
                          ? data.rightEarPinnaValue
                          : "${data.rightEarPinnaValue} - ${data.rightEarPinnaAbnormalValue}",
                      style: AppStyles.tsBlackRegular16,
                    ),
                    const SizedBox(
                      height: Dimens.gapX2,
                    ),
                    const Text(
                      "Ear Canal",
                      style: AppStyles.tsBlackSemi20,
                    ),
                    const SizedBox(
                      height: Dimens.gapX0_5,
                    ),
                    Text(
                      (data.rightEarCanalValue == 'Normal')
                          ? data.rightEarCanalValue
                          : "${data.rightEarCanalValue} - ${data.rightEarCanalAbnormalValue}",
                      style: AppStyles.tsBlackRegular16,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "Left Ear",
                      style: AppStyles.tsBlackSemi20,
                    ),
                    const SizedBox(
                      height: Dimens.gapX2,
                    ),
                    const Text(
                      "Pinna",
                      style: AppStyles.tsBlackSemi20,
                    ),
                    const SizedBox(
                      height: Dimens.gapX0_5,
                    ),
                    Text(
                      (data.leftEarPinnaValue == 'Normal')
                          ? data.leftEarPinnaValue
                          : "${data.leftEarPinnaValue} - ${data.leftEarPinnaAbnormalValue}",
                      style: AppStyles.tsBlackRegular16,
                    ),
                    const SizedBox(
                      height: Dimens.gapX2,
                    ),
                    const Text(
                      "Ear Canal",
                      style: AppStyles.tsBlackSemi20,
                    ),
                    const SizedBox(
                      height: Dimens.gapX0_5,
                    ),
                    Text(
                      (data.leftEarCanalValue == 'Normal')
                          ? data.leftEarCanalValue
                          : "${data.leftEarCanalValue} - ${data.leftEarCanalAbnormalValue}",
                      style: AppStyles.tsBlackRegular16,
                    ),
                  ],
                ),
              ],
            ),
            Dimens.heightGap3,
            Visibility(
              visible: data.anyOtherRelatedValue.isNotEmpty,
              child: nameValueWidget(
                  name: "Any other related findings ?",
                  value: data.anyOtherRelatedValue),
            ),
          ],
        ),
        const Text(
          "Pure Tone Audiometry",
          style: AppStyles.tsBlackSemi20,
        ),
        const SizedBox(height: Dimens.gapX2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const Text(
                  "Right Ear",
                  style: AppStyles.tsBlackSemi20,
                ),
                const SizedBox(
                  height: Dimens.gapX2,
                ),
                const Text(
                  "500 Hz, 25 dB",
                  style: AppStyles.tsBlackSemi20,
                ),
                const SizedBox(
                  height: Dimens.gapX0_5,
                ),
                Text(
                  (data.fiveHundredRightValue == 'Pass')
                      ? data.fiveHundredRightValue
                      : "${data.fiveHundredRightValue} - ${data.fiveHundredRightReferValue}",
                  style: AppStyles.tsBlackRegular16,
                ),
                const SizedBox(
                  height: Dimens.gapX2,
                ),
                const Text(
                  "1000 Hz, 25 dB",
                  style: AppStyles.tsBlackSemi20,
                ),
                const SizedBox(
                  height: Dimens.gapX0_5,
                ),
                Text(
                  (data.thousandRightValue == 'Pass')
                      ? data.thousandRightValue
                      : "${data.thousandRightValue} - ${data.thousandRightReferValue}",
                  style: AppStyles.tsBlackRegular16,
                ),
                const SizedBox(
                  height: Dimens.gapX2,
                ),
                const Text(
                  "2000 Hz, 25 dB",
                  style: AppStyles.tsBlackSemi20,
                ),
                const SizedBox(
                  height: Dimens.gapX0_5,
                ),
                Text(
                  (data.twoThousandRightValue == 'Pass')
                      ? data.twoThousandRightValue
                      : "${data.twoThousandRightValue} - ${data.twoThousandRightReferValue}",
                  style: AppStyles.tsBlackRegular16,
                ),
                const SizedBox(
                  height: Dimens.gapX2,
                ),
                const Text(
                  "4000 Hz, 25 dB",
                  style: AppStyles.tsBlackSemi20,
                ),
                const SizedBox(
                  height: Dimens.gapX0_5,
                ),
                Text(
                  (data.fourThousandRightValue == 'Pass')
                      ? data.fourThousandRightValue
                      : "${data.fourThousandRightValue} - ${data.fourThousandRightReferValue}",
                  style: AppStyles.tsBlackRegular16,
                ),
                const SizedBox(
                  height: Dimens.gapX2,
                ),
                const Text(
                  "6000 Hz, 25 dB",
                  style: AppStyles.tsBlackSemi20,
                ),
                const SizedBox(
                  height: Dimens.gapX0_5,
                ),
                Text(
                  (data.sixThousandRightValue == 'Pass')
                      ? data.sixThousandRightValue
                      : "${data.sixThousandRightValue} - ${data.sixThousandRightReferValue}",
                  style: AppStyles.tsBlackRegular16,
                ),
                const SizedBox(
                  height: Dimens.gapX2,
                ),
                const Text(
                  "8000 Hz, 25 dB",
                  style: AppStyles.tsBlackSemi20,
                ),
                const SizedBox(
                  height: Dimens.gapX0_5,
                ),
                Text(
                  (data.eightThousandRightValue == 'Pass')
                      ? data.eightThousandRightValue
                      : "${data.eightThousandRightValue} - ${data.eightThousandRightReferValue}",
                  style: AppStyles.tsBlackRegular16,
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  "Left Ear",
                  style: AppStyles.tsBlackSemi20,
                ),
                const SizedBox(
                  height: Dimens.gapX2,
                ),
                const Text(
                  "500 Hz, 25 dB",
                  style: AppStyles.tsBlackSemi20,
                ),
                const SizedBox(
                  height: Dimens.gapX0_5,
                ),
                Text(
                  (data.fiveHundredLeftValue == 'Pass')
                      ? data.fiveHundredLeftValue
                      : "${data.fiveHundredLeftValue} - ${data.fiveHundredLeftReferValue}",
                  style: AppStyles.tsBlackRegular16,
                ),
                const SizedBox(
                  height: Dimens.gapX2,
                ),
                const Text(
                  "1000 Hz, 25 dB",
                  style: AppStyles.tsBlackSemi20,
                ),
                const SizedBox(
                  height: Dimens.gapX0_5,
                ),
                Text(
                  (data.thousandLeftValue == 'Pass')
                      ? data.thousandLeftValue
                      : "${data.thousandLeftValue} - ${data.thousandLeftReferValue}",
                  style: AppStyles.tsBlackRegular16,
                ),
                const SizedBox(
                  height: Dimens.gapX2,
                ),
                const Text(
                  "2000 Hz, 25 dB",
                  style: AppStyles.tsBlackSemi20,
                ),
                const SizedBox(
                  height: Dimens.gapX0_5,
                ),
                Text(
                  (data.twoThousandLeftValue == 'Pass')
                      ? data.twoThousandLeftValue
                      : "${data.twoThousandLeftValue} - ${data.twoThousandLeftReferValue}",
                  style: AppStyles.tsBlackRegular16,
                ),
                const SizedBox(
                  height: Dimens.gapX2,
                ),
                const Text(
                  "4000 Hz, 25 dB",
                  style: AppStyles.tsBlackSemi20,
                ),
                const SizedBox(
                  height: Dimens.gapX0_5,
                ),
                Text(
                  (data.fourThousandLeftValue == 'Pass')
                      ? data.fourThousandLeftValue
                      : "${data.fourThousandLeftValue} - ${data.fourThousandLeftReferValue}",
                  style: AppStyles.tsBlackRegular16,
                ),
                const SizedBox(
                  height: Dimens.gapX2,
                ),
                const Text(
                  "6000 Hz, 25 dB",
                  style: AppStyles.tsBlackSemi20,
                ),
                const SizedBox(
                  height: Dimens.gapX0_5,
                ),
                Text(
                  (data.sixThousandLeftValue == 'Pass')
                      ? data.sixThousandLeftValue
                      : "${data.sixThousandLeftValue} - ${data.sixThousandLeftReferValue}",
                  style: AppStyles.tsBlackRegular16,
                ),
                const SizedBox(
                  height: Dimens.gapX2,
                ),
                const Text(
                  "8000 Hz, 25 dB",
                  style: AppStyles.tsBlackSemi20,
                ),
                const SizedBox(
                  height: Dimens.gapX0_5,
                ),
                Text(
                  (data.eightThousandLeftValue == 'Pass')
                      ? data.eightThousandLeftValue
                      : "${data.eightThousandLeftValue} - ${data.eightThousandLeftReferValue}",
                  style: AppStyles.tsBlackRegular16,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: Dimens.gapX3),
        const Text(
          "Upload Pure Tone Test Results (Multiple)",
          style: AppStyles.tsBlackSemi20,
        ),
        const SizedBox(height: Dimens.gapX2),
        Text(
          data.pickedFileNameValue,
          style: AppStyles.tsBlackRegular18,
        ),
        const SizedBox(height: Dimens.gapX2),
        Visibility(
          visible: data.otherObservationsValue.isNotEmpty,
          child: nameValueWidget(
              name: AppStrings.otherObservations,
              value: data.otherObservationsValue),
        ),
        nameValueWidget(
            name: 'Specialist Referral Recommended',
            value: data.specialistReferralNeededValue),
        Visibility(
          visible: controller.isSpecialistReferralNeeded.value,
          child: Column(
            children: [
              nameValueWidget(
                  name: 'Type', value: data.selectedReferralTypeValue),
              Visibility(
                  visible: controller.selectedReferralType.contains('Other'),
                  child: nameValueWidget(name: 'Other', value: data.other)),
              nameValueWidget(name: 'Flag ', value: data.selectedReFlagValue),
            ],
          ),
        ),
      ],
    ).paddingAll(Dimens.gapX2));
  }
}

Widget nameValueWidget({required String name, required String value}) {
  return Column(
    children: [
      Row(
        children: [
          Expanded(child: Text(name, style: AppStyles.tsBlackSemi20)),
          const Expanded(child: Text(':', style: AppStyles.tsBlackMedium18)),
          Expanded(child: Text(value, style: AppStyles.tsBlackMedium18)),
        ],
      ),
      Dimens.heightGap2,
    ],
  );
}
