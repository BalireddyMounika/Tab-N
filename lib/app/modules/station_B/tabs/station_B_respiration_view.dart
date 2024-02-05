import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/app_string.dart';
import 'package:nivish/app/modules/station_B/controllers/station_b_controller.dart';
import 'package:nivish/utils/app_utils.dart';
import '../../../../widgets/common_input_field.dart';
import '../../../../widgets/common_text.dart';
import '../../../data/values/dimens.dart';
import '../../../data/values/images.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_styles.dart';
import '../widget/option_with_inputfield.dart';

class StationBRespirationView extends GetView<StationBController> {
  const StationBRespirationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(blurRadius: 15, color: AppColors.greyColor)
            ]),
            child: AppUtils.isTab()
                ? Form(
                    key: controller.heartRateFormKey,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CommonText(
                            text: AppStrings.respiration,
                          ),
                          const SizedBox(
                            height: Dimens.gapX2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: optionInputFiled(
                                    maxLength: 2,
                                    isMandatory: true,
                                    name: 'Respiration',
                                    unit: 'min',
                                    hintText: 'min',
                                    controller: controller.respiration),
                              ),
                              const SizedBox(width: Dimens.gapX2),
                              Align(
                                alignment: Alignment.centerRight,
                                child: SvgPicture.asset(
                                  AppImages.respiration,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: Dimens.gapX3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: optionInputFiled(
                                    maxLength: 3,
                                    isMandatory: true,
                                    name: 'Heart Rate',
                                    unit: 'min',
                                    hintText: 'min',
                                    controller: controller.heart),
                              ),
                              const SizedBox(width: Dimens.gapX2),
                              Align(
                                alignment: Alignment.centerRight,
                                child: SvgPicture.asset(
                                  AppImages.heartRate,
                                ),
                              ),
                            ],
                          ),
                        ]).paddingAll(Dimens.gapX4),
                  )
                : Form(
                    key: controller.heartRateFormKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CommonText(
                          text: AppStrings.respiration,
                        ),
                        const SizedBox(height: Dimens.gapX4),
                        Align(
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            AppImages.respiration,
                          ),
                        ),
                        const SizedBox(height: Dimens.gapX2),
                        optionInputFiled(
                            maxLength: 2,
                            isMandatory: true,
                            name: 'Respiration',
                            unit: 'min',
                            hintText: "min",
                            controller: controller.respiration),
                        const SizedBox(height: Dimens.gapX3),
                        Align(
                            alignment: Alignment.center,
                            child: SvgPicture.asset(AppImages.heartRate)),
                        const SizedBox(height: Dimens.gapX2),
                        optionInputFiled(
                            maxLength: 3,
                            isMandatory: true,
                            name: 'Heart Rate',
                            unit: 'min',
                            hintText: "min",
                            controller: controller.heart),
                      ],
                    ).paddingAll(Dimens.gapX4),
                  ))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
