import 'package:flutter/material.dart';

import '../app/data/values/dimens.dart';
import '../app/themes/app_styles.dart';

class CustomSaveWidget extends StatelessWidget {
  final String text;
  final String textA;
  const CustomSaveWidget({Key? key, required this.text, required this.textA})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.only(left: Dimens.gapX5, top: Dimens.gapX3),
            child: Text(
              text,
              style: AppStyles.tsBlackMedium24,
            )),
        SizedBox(
          width: Dimens.gapX3,
        ),
        Padding(
            padding: EdgeInsets.only(left: Dimens.gapX5, top: Dimens.gapX3),
            child: Text(
              textA,
              style: AppStyles.tsBlackMedium20,
            ))
      ],
    );
  }
}
