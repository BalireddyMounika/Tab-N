import 'package:flutter/material.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/app/themes/app_styles.dart';

class CommonCheckBox extends StatelessWidget {
  final bool isSelected;
  final bool? isMultipleSelection;
  final String name;
  final IconData? checkedIcon;
  final IconData? unCheckedIcon;
  final bool? isActive;
  final TextStyle? textStyle;
  final double? fontSize;
  final onTap;
  const CommonCheckBox({
    Key? key,
    required this.isSelected,
    required this.name,
    this.onTap,
    this.isActive,
    this.textStyle,
    this.fontSize,
    this.checkedIcon,
    this.unCheckedIcon,
    this.isMultipleSelection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          isMultipleSelection ?? false
              ? isActive ?? true
                  ? (isSelected
                      ? Icon(checkedIcon ?? Icons.check_box,
                          color: AppColors.baseColor, size: 26)
                      : Icon(unCheckedIcon ?? Icons.check_box_outline_blank,
                          size: 26))
                  : const Icon(Icons.square,
                      size: 26, color: AppColors.disableColor)
              : isActive ?? true
                  ? (isSelected
                      ? Icon(checkedIcon ?? Icons.check_circle,
                          color: AppColors.baseColor, size: 26)
                      : Icon(unCheckedIcon ?? Icons.circle_outlined, size: 26))
                  : const Icon(Icons.circle,
                      size: 26, color: AppColors.disableColor),
          const SizedBox(width: Dimens.gapX1),
          Flexible(
            child: Text(name,
                maxLines: 2,
                style: textStyle ??
                    AppStyles.tsBlackMedium16.copyWith(
                        color: isActive ?? true ? null : AppColors.disableColor,
                        fontSize: fontSize)),
          ),
        ],
      ),
    );
  }
}
