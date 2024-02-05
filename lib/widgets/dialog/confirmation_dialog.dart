import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/app_string.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/app/themes/app_styles.dart';

class ConfirmationDialog extends StatelessWidget {
  final String? title;
  final String? message;
  final onCancel;
  final onConfirm;
  const ConfirmationDialog(
      {Key? key, this.title, this.message, this.onCancel, this.onConfirm})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title:
          Text(title ?? AppStrings.attention).paddingOnly(bottom: Dimens.gapX2),
      content: Text(
        message ?? "Are you sure you want to proceed?",
        style: AppStyles.tsBlackRegular16,
      ),
      actions: <Widget>[
        CupertinoDialogAction(
          textStyle:
              AppStyles.tsBlackRegular16.copyWith(color: AppColors.error),
          onPressed: onCancel ?? () => Get.back(),
          child: const Text("Cancel"),
        ),
        CupertinoDialogAction(
          textStyle: AppStyles.tsBlackRegular16.copyWith(color: AppColors.info),
          onPressed: onConfirm,
          child: const Text("Confirm"),
        ),
      ],
    );
  }
}
