import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/custom_button.dart';

class FinalConfirmationWidget extends StatelessWidget {
  final onEdit;
  final onSubmit;
  final Widget child;
  final String title;
  const FinalConfirmationWidget(
      {Key? key,
      this.onEdit,
      this.onSubmit,
      required this.child,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimens.screenHeight - 100,
      child: Column(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.check_circle_outline,
                  color: Colors.green, size: 32),
              const SizedBox(height: Dimens.gapX1),
              Text(title, style: AppStyles.tsBlackBold16),
              const SizedBox(height: Dimens.gapX1),
              const Divider(thickness: 2),
            ],
          ),
          Expanded(
            child: child,
          ),
          const Divider(thickness: 2),
          const SizedBox(height: Dimens.gapX1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButtons(isFilled: false, text: "Edit", onTap: onEdit),
              CustomButtons(text: "Submit", onTap: onSubmit)
            ],
          )
        ],
      ),
    );
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
      ).paddingSymmetric(vertical: Dimens.gapX1),
    ],
  );
}
