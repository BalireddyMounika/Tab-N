import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/widgets/common_check_box.dart';
import 'package:nivish/widgets/text/common_text.dart';

class DoubleOptionSelector extends StatelessWidget {
  final String label;
  final Color? labelColor;
  final String? optionOne;
  final String? optionTwo;
  final Function(bool) onSelectOption;
  final bool isOptionOneSelected;
  final double? spaceBtwOptions;
  const DoubleOptionSelector({
    Key? key,
    required this.label,
    this.labelColor,
    this.optionOne,
    this.optionTwo,
    required this.isOptionOneSelected,
    this.spaceBtwOptions,
    required this.onSelectOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title(text: label, textColor: labelColor),
        const SizedBox(height: Dimens.gapX2),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CommonCheckBox(
              onTap: () {
                onSelectOption(true); // Always select the first option
              },
              isSelected: isOptionOneSelected,
              name: optionOne ?? 'Yes',
            ),
            SizedBox(width: spaceBtwOptions ?? Dimens.gapX3),
            CommonCheckBox(
              onTap: () {
                onSelectOption(false); // Always select the second option
              },
              isSelected: !isOptionOneSelected,
              name: optionTwo ?? 'No',
            ),
          ],
        ).paddingSymmetric(horizontal: Dimens.gapX1),
      ],
    );
  }
}
