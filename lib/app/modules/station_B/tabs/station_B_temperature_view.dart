import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/app_string.dart';
import 'package:nivish/app/modules/station_B/widget/option_widget.dart';
import 'package:nivish/widgets/Age_Gender_validations.dart';
import 'package:nivish/widgets/common_input_field.dart';

import '../../../../widgets/common_check_box.dart';
import '../../../../widgets/common_text.dart';
import '../../../data/values/dimens.dart';
import '../../../data/values/images.dart';
import '../../../themes/app_colors.dart';
import '../controllers/station_b_controller.dart';

class StationBTemperatureView extends GetView<StationBController> {
  const StationBTemperatureView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(blurRadius: 15, color: AppColors.greyColor)
            ]),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const CommonText(
                text: AppStrings.temperature,
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              Column(
                children: [
                  optionWidget(optionNum: '1', name: 'Measurement Site'),
                  const SizedBox(
                    height: Dimens.gapX2,
                  ),
                  if (StudentInfo.calculateAge() < 2)
                    Obx(
                      () => StaggeredGrid.count(
                        crossAxisCount: Get.width < 600 ? 1 : 3,
                        mainAxisSpacing: 24,
                        crossAxisSpacing: 12,
                        children: List.generate(
                          controller.measurementSiteList.length,
                          (i) => CommonCheckBox(
                            name: controller.measurementSiteList[i],
                            isSelected: controller.measurementSiteList[i] ==
                                controller.selectedMeasurement.value,
                            onTap: () => controller.onSelectMeasurementSite(
                                name: controller.measurementSiteList[i]),
                          ),
                        ),
                      ).paddingSymmetric(horizontal: Dimens.gapX2),
                    ),
                  if (StudentInfo.calculateAge() >= 2)
                    Obx(
                      () => StaggeredGrid.count(
                        crossAxisCount: Get.width < 600 ? 1 : 3,
                        mainAxisSpacing: 24,
                        crossAxisSpacing: 12,
                        children: List.generate(
                          controller.measurementSiteListLessThanTwo.length,
                          (i) => CommonCheckBox(
                            name: controller.measurementSiteListLessThanTwo[i],
                            isSelected: controller
                                    .measurementSiteListLessThanTwo[i] ==
                                controller.selectedMeasurementLessThanTwo.value,
                            onTap: () =>
                                controller.onSelectMeasurementSiteLessThanTwo(
                                    name: controller
                                        .measurementSiteListLessThanTwo[i]),
                          ),
                        ),
                      ).paddingSymmetric(horizontal: Dimens.gapX2),
                    ),
                  const SizedBox(
                    height: Dimens.gapX2,
                  ),
                  optionWidget(optionNum: '2', name: 'Type of Instrument'),
                  const SizedBox(
                    height: Dimens.gapX2,
                  ),
                  Obx(
                    () => StaggeredGrid.count(
                      crossAxisCount: Get.width < 600 ? 1 : 3,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 12,
                      children: List.generate(
                        controller.temperatureInstrumentList.length,
                        (i) => CommonCheckBox(
                          name: controller.temperatureInstrumentList[i],
                          isSelected: controller.temperatureInstrumentList[i] ==
                              controller.selectedTemperatureInstrument.value,
                          onTap: () => controller.onSelectTemperatureInstrument(
                              name: controller.temperatureInstrumentList[i]),
                        ),
                      ),
                    ).paddingSymmetric(horizontal: Dimens.gapX2),
                  ),
                  const SizedBox(height: Dimens.gapX2),
                  optionWidget(optionNum: '3', name: 'Temperature'),
                  const SizedBox(
                    height: Dimens.gapX2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: Dimens.gapX6,
                          width: Dimens.gapX20,
                          child: CommonInputField(
                            hintText: "Type here",
                            maxLength: 3,
                            inputType: TextInputType.number,
                            wrapper: controller.temperature,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: Dimens.gapX3,
                      ),
                      Expanded(
                          child: Obx(
                        () => StaggeredGrid.count(
                          crossAxisCount: Get.width < 600 ? 1 : 2,
                          mainAxisSpacing: 24,
                          crossAxisSpacing: 12,
                          children: List.generate(
                            controller.temperatureDegreesList.length,
                            (i) => CommonCheckBox(
                              name: controller.temperatureDegreesList[i],
                              isSelected: controller
                                      .temperatureDegreesList[i] ==
                                  controller.selectedTemperatureDegrees.value,
                              onTap: () =>
                                  controller.onSelectTemperatureDegrees(
                                      name:
                                          controller.temperatureDegreesList[i]),
                            ),
                          ),
                        ),
                      )),
                    ],
                  ).paddingSymmetric(horizontal: Dimens.gapX2),
                  const SizedBox(
                    height: Dimens.gapX2,
                  ),
                  Center(
                      child: SvgPicture.asset(
                    AppImages.temperature,
                    height: Dimens.gapX4,
                  )),
                ],
              ).paddingSymmetric(horizontal: Dimens.gapX2)
            ]).paddingAll(Dimens.gapX3))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
