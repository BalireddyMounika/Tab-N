import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/app_string.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/modules/station_B/controllers/station_b_controller.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/common_input_field.dart';
import 'package:nivish/widgets/common_text.dart';

import '../../../data/values/dimens.dart';

class StationBOxygenSaturationView extends GetView<StationBController> {
  const StationBOxygenSaturationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(blurRadius: 15, color: AppColors.greyColor)
            ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CommonText(text: AppStrings.oxygenSaturation),
                const SizedBox(
                  height: Dimens.gapX2,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: Dimens.gapX6,
                      width: Dimens.gapX20,
                      child: CommonInputField(
                        inputType: TextInputType.number,
                        maxLength: 3,
                        wrapper: controller.oxygenSaturation,
                        hintText: "mm",
                      ),
                    ),
                    // optionInputFiled(
                    //         name: 'Systolic BP',
                    //         unit: 'mm hg',
                    //         controller: controller.systolicBP)
                    //     .paddingSymmetric(horizontal: Dimens.gapX2),
                    const SizedBox(height: Dimens.gapX1),
                    const Text(
                      "Note: (Normal Range 95 to 100)",
                      style: AppStyles.tsBlackMedium16,
                    ),
                    // SizedBox(
                    //   height: Dimens.gapX6,
                    //   width: Dimens.gapX20,
                    //   child: CommonInputField(
                    //     inputType: TextInputType.number,
                    //     maxLength: 3,
                    //     wrapper: controller.oxygenSaturation,
                    //   ),
                    // ),
                    const SizedBox(height: Dimens.gapX2),
                    Image(
                      image: const AssetImage(AppImages.scaleVertical),
                      width: Dimens.screenWidthX16,
                    ),
                    const SizedBox(
                      height: Dimens.gapX2,
                    ),
                    Center(
                        child: SvgPicture.asset(
                      AppImages.spo2,
                      width: Dimens.screenWidthXFourth,
                    )),
                  ],
                ).paddingSymmetric(horizontal: Dimens.gapX2),
              ],
            ).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
