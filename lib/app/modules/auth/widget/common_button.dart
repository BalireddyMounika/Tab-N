import 'package:flutter/material.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/utils/app_utils.dart';
import 'package:nivish/widgets/common_text.dart';

class CommonButton extends StatelessWidget {
  final String name;
  final onTap;
  const CommonButton({Key? key, required this.name, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.baseColor,
          ),
          width: Dimens.screenWidthX12,
          height: AppUtils.isTab() ? 56 : 46,
          child: Center(
            child: CommonText(
              alignment: Alignment.center,
              color: AppColors.white,
              text: name,
            ),
          ),
        ));
  }
}
