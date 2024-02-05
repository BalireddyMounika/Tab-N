import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../app/themes/app_styles.dart';

class CommonText extends StatelessWidget {
  final String text;
  final Alignment? alignment;
  final Color? color;
  const CommonText({Key? key, required this.text, this.alignment, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.centerLeft,
      child: Text(
        text,
        style: Get.width < 600
            ? AppStyles.tsBlackSemi20.copyWith(color: color)
            : AppStyles.tsBlackSemiBold24.copyWith(color: color),
        maxLines: 3,
      ),
    );
  }
}
