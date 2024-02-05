import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/widgets/common_text.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../../widgets/common_input_field.dart';
import '../../../../data/values/dimens.dart';
import '../../../../data/values/images.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/app_styles.dart';
import '../../controllers/station_f_controller.dart';
import 'discharge_view.dart';
import 'earDrum_view.dart';

class StationFEarsView extends GetView<StationFController> {
  const StationFEarsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(blurRadius: 15, color: AppColors.greyColor)
            ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CommonText(
                      text: "Ears",
                    ),
                    Expanded(
                      child: Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset(
                            AppImages.ears,
                            width: Dimens.screenWidthXFourth,
                          )),
                    )
                  ],
                ),
                const SizedBox(
                  height: Dimens.gapX2,
                ),
                const Text(
                  "Hearing",
                  style: AppStyles.tsBlackSemi20,
                ),
                const SizedBox(
                  height: Dimens.gapX2,
                ),
                Row(
                  children: [
                    Obx(() => CommonCheckBox(
                        textStyle: AppStyles.tsBlackMedium20,
                        name: "Normal",
                        isSelected: controller.isHearingNormal.value,
                        onTap: () {
                          controller.onCheckedHearing();
                          controller.selectedHearingReduced.value = '';
                          controller.selectedHearingAbnormal.clear();
                          controller.otherHearingWrapper.controller.text = '';
                          controller.selectedHearingReducedWearsYesRight
                              .clear();
                          controller.isWearHearingAidYes.value = false;
                        })),
                    const SizedBox(
                      width: Dimens.gapX4,
                    ),
                    Obx(() => CommonCheckBox(
                          textStyle: AppStyles.tsBlackMedium20,
                          name: "Abnormal",
                          isSelected: !controller.isHearingNormal.value,
                          onTap: () => controller.onCheckedHearing(),
                        )),
                  ],
                ),
                const SizedBox(height: Dimens.gapX2),
                Obx(
                  () => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      controller.hearingAbnormalList.length,
                      (i) {
                        return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonCheckBox(
                                isActive: !controller.isHearingNormal.value,
                                checkedIcon: Icons.check_box,
                                unCheckedIcon: Icons.check_box_outline_blank,
                                onTap: () {
                                  if (controller.selectedHearingAbnormal
                                      .contains(
                                          controller.hearingAbnormalList[i])) {
                                    controller.selectedHearingAbnormal.remove(
                                        controller.hearingAbnormalList[i]);
                                  } else {
                                    controller.selectedHearingAbnormal
                                        .add(controller.hearingAbnormalList[i]);
                                  }
                                },
                                isSelected: controller.selectedHearingAbnormal
                                    .contains(
                                        controller.hearingAbnormalList[i]),
                                name: controller.hearingAbnormalList[i],
                              ).paddingOnly(bottom: Dimens.gapX1),
                              Visibility(
                                visible: controller.selectedHearingAbnormal
                                        .contains('Reduced') &&
                                    controller.hearingAbnormalList[i] ==
                                        'Reduced' &&
                                    !controller.isHearingNormal.value,
                                child: Column(children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: Dimens.gapX3),
                                      child: Obx(() => StaggeredGrid.count(
                                              crossAxisCount:
                                                  Get.width < 600 ? 1 : 1,
                                              mainAxisSpacing: 10,
                                              crossAxisSpacing: 5,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: List.generate(
                                                    controller
                                                        .hearingReducedList
                                                        .length,
                                                    (i) => CommonCheckBox(
                                                      isActive: controller
                                                          .selectedHearingAbnormal
                                                          .contains('Reduced'),
                                                      name: controller
                                                          .hearingReducedList[i],
                                                      isSelected: controller
                                                                  .hearingReducedList[
                                                              i] ==
                                                          controller
                                                              .selectedHearingReduced
                                                              .value,
                                                      onTap: () => controller
                                                          .onSelectHearingReduced(
                                                              name: controller
                                                                  .hearingReducedList[i]),
                                                    ).paddingOnly(
                                                        bottom: Dimens.gapX0_5),
                                                  ),
                                                ),
                                              ]))),
                                  Visibility(
                                    visible: controller.selectedHearingReduced
                                            .contains('Wears Hearing Aid') &&
                                        !controller.isHearingNormal.value,
                                    child: Row(
                                      children: [
                                        Obx(() => CommonCheckBox(
                                            name: "Yes",
                                            isSelected: controller
                                                .isWearHearingAidYes.value,
                                            onTap: () {
                                              controller.onCheckedHearingYes();
                                            })),
                                        const SizedBox(
                                          width: Dimens.gapX4,
                                        ),
                                        Obx(() => CommonCheckBox(
                                              name: "No",
                                              isSelected: !controller
                                                  .isWearHearingAidYes.value,
                                              onTap: () => controller
                                                  .onCheckedHearingYes(),
                                            )),
                                      ],
                                    ).paddingOnly(left: Dimens.gapX5),
                                  ),
                                  Visibility(
                                    visible:
                                        controller.isWearHearingAidYes.value &&
                                            !controller.isHearingNormal.value,
                                    child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: Dimens.gapX3),
                                            child: Obx(
                                              () => StaggeredGrid.count(
                                                crossAxisCount:
                                                    Get.width < 600 ? 1 : 2,
                                                mainAxisSpacing: 24,
                                                crossAxisSpacing: 12,
                                                children: List.generate(
                                                  controller.lnList.length,
                                                  (i) => CommonCheckBox(
                                                      checkedIcon:
                                                          Icons.check_box,
                                                      unCheckedIcon: Icons
                                                          .check_box_outline_blank,
                                                      isActive: controller
                                                          .isWearHearingAidYes
                                                          .value,
                                                      name: controller
                                                          .lnList.values
                                                          .elementAt(i),
                                                      isSelected: controller
                                                          .selectedHearingReducedWearsYesRight
                                                          .contains(controller
                                                              .lnList.keys
                                                              .elementAt(i)),
                                                      onTap: () => controller
                                                          .onSelectHearingReducedWearsYesRight(
                                                              idx: i)),
                                                ),
                                              ),
                                            ))
                                        .paddingOnly(
                                            left: Dimens.gapX10,
                                            top: Dimens.gapX1),
                                  ),
                                ]),
                              ),
                              Obx(
                                () => Visibility(
                                  visible: controller.selectedHearingAbnormal
                                          .contains('Other') &&
                                      controller.hearingAbnormalList[i] ==
                                          'Other',
                                  child: SizedBox(
                                    width: 400,
                                    child: CommonInputField(
                                            isEnabled: controller
                                                .selectedHearingAbnormal
                                                .contains('Other'),
                                            hintText: "Type here",
                                            wrapper:
                                                controller.otherHearingWrapper)
                                        .paddingSymmetric(
                                            horizontal: Dimens.gapX4),
                                  ),
                                ),
                              ),
                            ]);
                      },
                    ),
                  ).paddingOnly(left: Dimens.gapX3),
                ),
                const SizedBox(height: Dimens.gapX2),
                const StationFDischargeView(),
                const StationFEarDrumView()
              ],
            ).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
