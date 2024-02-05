import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/modules/station_A/controllers/section_a_controller.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/common_input_field.dart';
import 'package:nivish/widgets/common_text.dart';

import '../../../data/values/app_string.dart';
import '../../../data/values/dimens.dart';

class StationALength extends GetView<StationAController> {
  const StationALength({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(blurRadius: 15, color: AppColors.greyColor)
            ]),
            child: Get.width < 600
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Row(
                        children: [
                          CommonText(
                            text: "Length (cm)",
                          ),
                          SizedBox(width: Dimens.gapX1),
                          Text(
                            "*",
                            style: AppStyles.tsBrownMedium24,
                          )
                        ],
                      ),
                      const SizedBox(height: Dimens.gapX2),
                      SizedBox(
                        height: Dimens.gapX6,
                        width: Dimens.gapX20,
                        child: CommonInputField(
                          inputType: TextInputType.number,
                          maxLength: 3,
                          wrapper: controller.lengthWrapper,
                          hintText: "cm",
                        ),
                      ),
                      const SizedBox(height: Dimens.gapX1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              SvgPicture.asset(
                                AppImages.height,
                                height: Dimens.screenHeightX34,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: Dimens.gapX3,
                          ),
                          Image(
                            image: const AssetImage(AppImages.scaleHorizontal),
                            height: Dimens.screenHeightX3,
                          ),
                        ],
                      )
                    ],
                  ).paddingAll(Dimens.gapX4)
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const CommonText(
                            text: "Length (cm)",
                          ),
                          const SizedBox(width: Dimens.gapX1),
                          const Text(
                            "*",
                            style: AppStyles.tsBrownMedium24,
                          ),
                          const SizedBox(width: Dimens.gapX2),
                          SizedBox(
                            height: Dimens.gapX6,
                            width: Dimens.gapX20,
                            child: CommonInputField(
                              inputType: TextInputType.number,
                              maxLength: 3,
                              wrapper: controller.lengthWrapper,
                              hintText: "cm",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: Dimens.gapX1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              SvgPicture.asset(
                                AppImages.height,
                                height: Dimens.screenHeightX34,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: Dimens.gapX3,
                          ),
                          Image(
                            image: const AssetImage(AppImages.scaleHorizontal),
                            height: Dimens.screenHeightX3,
                          ),
                        ],
                      )
                    ],
                  ).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
