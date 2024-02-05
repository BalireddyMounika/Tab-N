import 'package:flutter/material.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/utils/app_utils.dart';

class MiddleContainer extends StatelessWidget {
  final Widget child;
  const MiddleContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200, // Shadow color
                blurRadius: 10, // Spread radius of the shadow
                offset: Offset(3, 3), // Offset of the shadow (x, y)
              ),
            ],
            color: AppColors.white,
            borderRadius: BorderRadius.circular(
                AppUtils.isTab() ? Dimens.radiusX5 : Dimens.radiusX3)),
        height: AppUtils.isTab()
            ? Dimens.screenHeightX1_5
            : Dimens.screenHeightX1_2,
        width: Dimens.screenWidthX12,
        child: child,
      ),
    );
  }
}
