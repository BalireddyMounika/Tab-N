import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/app_string.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/modules/station_A/controllers/section_a_controller.dart';
import 'package:nivish/app/themes/app_colors.dart';
import '../../../../widgets/common_input_field.dart';
import '../../../../widgets/common_text.dart';
import '../../../data/values/dimens.dart';
import '../../../themes/app_styles.dart';

class StationAHeadView extends GetView<StationAController> {
  const StationAHeadView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColors.white,
          boxShadow: [BoxShadow(blurRadius: 15, color: AppColors.greyColor)]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(
            children: [
              CommonText(
                text: "${AppStrings.headCir} (cm)",
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
              wrapper: controller.headCircumference,
              hintText: "cm",
            ),
          ),
          const SizedBox(
            height: Dimens.gapX2,
          ),
          Image(
            image: const AssetImage(AppImages.scaleVertical),
            width: Dimens.screenWidthX16,
          ),
          const SizedBox(height: Dimens.gapX2),
          SvgPicture.asset(
            AppImages.head,
            width: Dimens.screenWidthX19,
          ),
        ],
      ).paddingAll(Dimens.gapX4),
    ).paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
