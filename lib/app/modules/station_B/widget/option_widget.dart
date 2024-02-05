import 'package:flutter/material.dart';
import 'package:nivish/app/themes/app_styles.dart';

Widget optionWidget({
  required String optionNum,
  required String name,
  String? optionalText,
}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "$optionNum. ",
        style: AppStyles.tsBlackSemi20,
      ),
      Text(
        name,
        style: AppStyles.tsBlackSemi20,
      ),
      Visibility(
        visible: optionalText?.isNotEmpty ?? false,
        child: Text(
          " ($optionalText)",
          style: AppStyles.tsBlackSemiBold16,
        ),
      ),
    ],
  );
}
