import 'package:flutter/material.dart';
import 'package:nivish/app/themes/app_colors.dart';

class CommonRadioButton extends StatelessWidget {
  final String text;
  final String value;
  final String groupValue;
  final TextStyle style;
  final void Function(String?)? onChanged;

  const CommonRadioButton({
    Key? key,
    required this.text,
    required this.style,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
          activeColor: AppColors.baseColor,
        ),
        Text(text, style: style),
      ],
    );
  }
}
