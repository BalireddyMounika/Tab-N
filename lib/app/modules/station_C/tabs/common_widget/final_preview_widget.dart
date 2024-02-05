import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/app_string.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_C/controllers/station_C_visually_right_eye_controller.dart';
import 'package:nivish/app/modules/station_C/controllers/station_c_controller.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/Age_Gender_validations.dart';
import '../../widget/C_preview_model.dart';

class FinalCPreviewWidget extends GetView<StationCController> {
  final VisuallyChallengedController visuallyChallengedController =
      Get.find<VisuallyChallengedController>();

  final StationCPreviewModel data;

  FinalCPreviewWidget({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (StudentInfo.calculateAge() >= 2)
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Problems",
                    style: AppStyles.tsBlackMedium24,
                  ),
                  Dimens.heightGap2,
                  nameValueWidget(
                      name: "Problem to Reading Books",
                      value: data.problemToReadingBooksValue),
                  nameValueWidget(
                      name: "Problem to Reading Blackboard",
                      value: data.problemReadingBlackBoardValue),
                  Visibility(
                    visible: StudentInfo.calculateAge() >= 5,
                    child: nameValueWidget(
                        name: "Night Vision", value: data.nightVisionValue),
                  ),
                  nameValueWidget(
                      name: "Vision Corrected",
                      value: data.visionCorrectedValue),
                  Visibility(
                    visible: data.visionCorrectedValue == 'Yes',
                    child: nameValueWidget(
                        name: "Vision Corrected Yes",
                        value: data.visionCorrectedYesValue),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Extra Ocular",
                        style: AppStyles.tsBlackMedium24,
                      ),
                      Dimens.heightGap2,
                      Get.width < 600
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Right",
                                      style: AppStyles.tsBrownMedium24,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX2,
                                    ),
                                    const Text(
                                      "Normal Eye Movement",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.normalMovementREValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX1,
                                    ),
                                    const Text(
                                      "Strabismus",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.strabismusREValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX1,
                                    ),
                                    const Text(
                                      "Dropping Lid",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.droppingLidREValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX1,
                                    ),
                                    const Text(
                                      "Restricted Mobility",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.restrictMobilityREValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX1,
                                    ),
                                    const Text(
                                      "Nystagmus",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.nystagumsREValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX1,
                                    ),
                                    const Text(
                                      "Bulging",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.bulgingREValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                  ],
                                )),
                                Dimens.heightGap1,
                                Expanded(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Left",
                                      style: AppStyles.tsBrownMedium24,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX2,
                                    ),
                                    const Text(
                                      "Normal Eye Movement",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.normalMovementLEValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX1,
                                    ),
                                    const Text(
                                      "Strabismus",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.strabismusLEValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX1,
                                    ),
                                    const Text(
                                      "Dropping Lid",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.droppingLidLEValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX1,
                                    ),
                                    const Text(
                                      "Restricted Mobility",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.restrictMobilityLEValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX1,
                                    ),
                                    const Text(
                                      "Nystagmus",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.nystagumsLEValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX1,
                                    ),
                                    const Text(
                                      "Bulging",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.bulgingLEValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                  ],
                                )),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Right",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX2,
                                    ),
                                    const Text(
                                      "Normal Eye Movement",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.normalMovementREValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX1,
                                    ),
                                    const Text(
                                      "Strabismus",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.strabismusREValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX1,
                                    ),
                                    const Text(
                                      "Dropping Lid",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.droppingLidREValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX1,
                                    ),
                                    const Text(
                                      "Restricted Mobility",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.restrictMobilityREValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX1,
                                    ),
                                    const Text(
                                      "Nystagmus",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.nystagumsREValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX1,
                                    ),
                                    const Text(
                                      "Bulging",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.bulgingREValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Left",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX2,
                                    ),
                                    const Text(
                                      "Normal Eye Movement",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.normalMovementLEValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX1,
                                    ),
                                    const Text(
                                      "Strabismus",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.strabismusLEValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX1,
                                    ),
                                    const Text(
                                      "Dropping Lid",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.droppingLidLEValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX1,
                                    ),
                                    const Text(
                                      "Restricted Mobility",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.restrictMobilityLEValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX1,
                                    ),
                                    const Text(
                                      "Nystagmus",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.nystagumsLEValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX1,
                                    ),
                                    const Text(
                                      "Bulging",
                                      style: AppStyles.tsBlackSemi20,
                                    ),
                                    const SizedBox(
                                      height: Dimens.gapX0_5,
                                    ),
                                    Text(
                                      data.bulgingLEValue,
                                      style: AppStyles.tsBlackRegular16,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                    ],
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Extra Ocular",
                    style: AppStyles.tsBlackMedium24,
                  ),
                  Dimens.heightGap2,
                  Get.width < 600
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Right",
                                  style: AppStyles.tsBrownMedium24,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX2,
                                ),
                                const Text(
                                  "Normal Eye Movement",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.normalMovementREValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX1,
                                ),
                                const Text(
                                  "Strabismus",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.strabismusREValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX1,
                                ),
                                const Text(
                                  "Dropping Lid",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.droppingLidREValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX1,
                                ),
                                const Text(
                                  "Restricted Mobility",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.restrictMobilityREValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX1,
                                ),
                                const Text(
                                  "Nystagmus",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.nystagumsREValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX1,
                                ),
                                const Text(
                                  "Bulging",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.bulgingREValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                              ],
                            )),
                            Dimens.heightGap1,
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Left",
                                  style: AppStyles.tsBrownMedium24,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX2,
                                ),
                                const Text(
                                  "Normal Eye Movement",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.normalMovementLEValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX1,
                                ),
                                const Text(
                                  "Strabismus",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.strabismusLEValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX1,
                                ),
                                const Text(
                                  "Dropping Lid",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.droppingLidLEValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX1,
                                ),
                                const Text(
                                  "Restricted Mobility",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.restrictMobilityLEValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX1,
                                ),
                                const Text(
                                  "Nystagmus",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.nystagumsLEValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX1,
                                ),
                                const Text(
                                  "Bulging",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.bulgingLEValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                              ],
                            )),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Right",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX2,
                                ),
                                const Text(
                                  "Normal Eye Movement",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.normalMovementREValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX1,
                                ),
                                const Text(
                                  "Strabismus",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.strabismusREValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX1,
                                ),
                                const Text(
                                  "Dropping Lid",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.droppingLidREValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX1,
                                ),
                                const Text(
                                  "Restricted Mobility",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.restrictMobilityREValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX1,
                                ),
                                const Text(
                                  "Nystagmus",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.nystagumsREValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX1,
                                ),
                                const Text(
                                  "Bulging",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.bulgingREValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Left",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX2,
                                ),
                                const Text(
                                  "Normal Eye Movement",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.normalMovementLEValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX1,
                                ),
                                const Text(
                                  "Strabismus",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.strabismusLEValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX1,
                                ),
                                const Text(
                                  "Dropping Lid",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.droppingLidLEValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX1,
                                ),
                                const Text(
                                  "Restricted Mobility",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.restrictMobilityLEValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX1,
                                ),
                                const Text(
                                  "Nystagmus",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.nystagumsLEValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX1,
                                ),
                                const Text(
                                  "Bulging",
                                  style: AppStyles.tsBlackSemi20,
                                ),
                                const SizedBox(
                                  height: Dimens.gapX0_5,
                                ),
                                Text(
                                  data.bulgingLEValue,
                                  style: AppStyles.tsBlackRegular16,
                                ),
                              ],
                            ),
                          ],
                        ),
                ],
              ),
        Dimens.heightGap2,
        if (StudentInfo.calculateAge() >= 2)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Visually Challenged",
                style: AppStyles.tsBlackMedium24,
              ),
              Dimens.heightGap2,
              nameValueWidget(
                name: 'Right Eye',
                value: data.visuallyChallengedControllerREValue,
              ),
              if (visuallyChallengedController.isRE.value)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    nameValueWidget(
                      name: 'Right Enucleation',
                      value: data.visuallyChallengedRightEyeEnucleationValue,
                    ),
                    (visuallyChallengedController.isEnucleationRE.value)
                        ? Column(
                            children: [
                              nameValueWidget(
                                name: 'Right Enucleation When Removed',
                                value: data
                                    .visuallyChallengedRightEyeEnucleationWhenRemovedValue,
                              ),
                              nameValueWidget(
                                name: 'Right Enucleation Why Removed',
                                value: data
                                    .visuallyChallengedRightEyeEnucleationWhyRemovedValue,
                              ),
                              if (visuallyChallengedController
                                  .selectedYesRemoveRE
                                  .contains('Other'))
                                nameValueWidget(
                                  name: 'Right Enucleation Why Removed Other',
                                  value: data
                                      .visuallyChallengedRightEyeEnucleationWhyRemovedOtherValue,
                                ),
                              nameValueWidget(
                                name: 'Right Artificial Eye ',
                                value: data
                                    .vCRightEyeEnucleationArtificialEyeUsedValue,
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              Visibility(
                                  visible: visuallyChallengedController
                                      .selectedContractRe
                                      .contains('Cataract'),
                                  child: nameValueWidget(
                                    name: 'Right Eye Enucleation Cataract ',
                                    value: data
                                        .visuallyChallengedRightEyeEnucleationCataractValue,
                                  )),
                              Visibility(
                                visible: visuallyChallengedController
                                    .selectedContractRe
                                    .contains('Corneal opacity'),
                                child: nameValueWidget(
                                  name: 'Right Eye Enucleation CornealOpacity',
                                  value: data
                                      .visuallyChallengedRightEyeEnucleationCornealOpacityValue,
                                ),
                              ),
                              Visibility(
                                visible: visuallyChallengedController
                                    .selectedContractRe
                                    .contains('Glaucoma'),
                                child: nameValueWidget(
                                  name: 'Right Eye Enucleation Glaucoma',
                                  value: data
                                      .visuallyChallengedRightEyeEnucleationGlaucomaValue,
                                ),
                              ),
                              Visibility(
                                visible: visuallyChallengedController
                                    .selectedContractRe
                                    .contains('Phthisis bulbi'),
                                child: nameValueWidget(
                                  name: 'Right Eye Enucleation Phthisis Bulbi',
                                  value: data
                                      .visuallyChallengedRightEyeEnucleationPhthisisBulbiValue,
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
              Dimens.heightGap2,
              nameValueWidget(
                  name: 'Left Eye',
                  value: data.visuallyChallengedControllerLEValue),
              if (visuallyChallengedController.isLE.value)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    nameValueWidget(
                      name: 'Left Enucleation',
                      value: data.visuallyChallengedLeftEyeEnucleationValue,
                    ),
                    (visuallyChallengedController.isEnucleationLE.value)
                        ? Column(
                            children: [
                              nameValueWidget(
                                name: 'Left Enucleation When Removed',
                                value: data
                                    .visuallyChallengedLeftEyeEnucleationWhenRemovedValue,
                              ),
                              nameValueWidget(
                                name: 'Left Enucleation Why Removed',
                                value: data
                                    .visuallyChallengedLeftEyeEnucleationWhyRemovedValue,
                              ),
                              if (visuallyChallengedController
                                  .selectedYesRemoveLE
                                  .contains('Other'))
                                nameValueWidget(
                                  name: 'Left Enucleation Why Removed Other',
                                  value: data
                                      .visuallyChallengedLeftEyeEnucleationWhyRemovedOtherValue,
                                ),
                              nameValueWidget(
                                name: 'Left Artificial Eye ',
                                value: data
                                    .vCLeftEyeEnucleationArtificialEyeUsedValue,
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              Visibility(
                                visible: visuallyChallengedController
                                    .selectedContractLe
                                    .contains('Cataract'),
                                child: nameValueWidget(
                                  name: 'Left Eye Enucleation Cataract ',
                                  value: data
                                      .visuallyChallengedLeftEyeEnucleationCataractValue,
                                ),
                              ),
                              Visibility(
                                visible: visuallyChallengedController
                                    .selectedContractLe
                                    .contains('Corneal opacity'),
                                child: nameValueWidget(
                                  name: 'Left Eye Enucleation CornealOpacity',
                                  value: data
                                      .visuallyChallengedLeftEyeEnucleationCornealOpacityValue,
                                ),
                              ),
                              Visibility(
                                visible: visuallyChallengedController
                                    .selectedContractLe
                                    .contains('Glaucoma'),
                                child: nameValueWidget(
                                  name: 'Left Eye Enucleation Glaucoma',
                                  value: data
                                      .visuallyChallengedLeftEyeEnucleationGlaucomaValue,
                                ),
                              ),
                              Visibility(
                                visible: visuallyChallengedController
                                    .selectedContractLe
                                    .contains('Phthisis bulbi'),
                                child: nameValueWidget(
                                  name: 'Left Eye Enucleation Phthisis Bulbi',
                                  value: data
                                      .visuallyChallengedLeftEyeEnucleationGlaucomaValue,
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
              const Text(
                "Visual Acuity",
                style: AppStyles.tsBlackMedium24,
              ),
              Dimens.heightGap2,
              const Text(
                "Distant Vision With Lenses",
                style: AppStyles.tsBlackBold18,
              ),
              Dimens.heightGap2,
              nameValueWidget(
                  name: "Right",
                  value: "${data.distantVisionWithLensesRightValue}/6"),
              Dimens.heightGap1,
              nameValueWidget(
                  name: "Left",
                  value: "${data.distantVisionWithLensesLeftValue}/6"),
              const Text(
                "Near Vision With Lenses",
                style: AppStyles.tsBlackBold18,
              ),
              Dimens.heightGap2,
              nameValueWidget(
                  name: "Right",
                  value: "${data.nearVisionWithLensesRightValue}/6"),
              Dimens.heightGap1,
              nameValueWidget(
                  name: "Left",
                  value: "${data.nearVisionWithLensesLeftValue}/6"),
              const Text(
                "Distant Vision WithOut Lenses",
                style: AppStyles.tsBlackBold18,
              ),
              Dimens.heightGap2,
              nameValueWidget(
                  name: "Right",
                  value: "${data.distantVisionWithoutLensesRightValue}/6"),
              Dimens.heightGap1,
              nameValueWidget(
                  name: "Left",
                  value: "${data.distantVisionWithoutLensesLeftValue}/6"),
              const Text(
                "Near Vision WithOut Lenses",
                style: AppStyles.tsBlackBold18,
              ),
              Dimens.heightGap2,
              nameValueWidget(
                  name: "Right",
                  value: "${data.nearVisionWithoutLensesRightValue}/6"),
              Dimens.heightGap1,
              nameValueWidget(
                  name: "Left",
                  value: "${data.nearVisionWithoutLensesLeftValue}/6"),
              nameValueWidget(
                  name: 'Color Blindness ',
                  value: data.visualAcuityColorBlindValue),
              Visibility(
                visible: controller.isColorBlind.value,
                child: nameValueWidget(
                    name: 'Color Blindness Yes',
                    value: data.visualAcuityColorBlindnessYesValue),
              ),
            ],
          ),
        Visibility(
          visible: controller.otherObservations.controller.text.isNotEmpty,
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
          Expanded(child: Text(value, style: AppStyles.tsBlackMedium18)),
        ],
      ),
      Dimens.heightGap2,
    ],
  );
}