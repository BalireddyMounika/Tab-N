import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/widgets/common_check_box.dart';
import 'package:nivish/widgets/text/common_text.dart';

import '../../../../utils/helper/text_field_wrapper.dart';
import '../../../../widgets/common_input_field.dart';

class OptionTextFieldSelector extends StatelessWidget {
  final String label;
  final String? optionOne;
  final String? optionTwo;
  final String? optionThree;
  final Function(bool) onSelectOption;
  final bool isOptionOneSelected;
  final bool isEnabled;
  final TextFieldWrapper wrapper;
  final double? spaceBtwOptions;
  const OptionTextFieldSelector({
    Key? key,
    required this.label,
    this.optionOne,
    this.optionTwo,
    this.optionThree,
    required this.isOptionOneSelected,
    this.spaceBtwOptions,
    required this.onSelectOption,
    required this.isEnabled,
    required this.wrapper,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title(text: label),
        const SizedBox(height: Dimens.gapX2),
        Column( crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min, children: [
          Row(children: [
            CommonCheckBox(
              name: optionOne ?? 'Yes',
              isSelected: isOptionOneSelected,
              onTap: () {
                onSelectOption(true); // Always select the first option
              },
            ),
            const SizedBox(width: Dimens.gapX2),
            Expanded(
              child: CommonInputField(
                hintText: "Type here",
                isEnabled: isEnabled,
                wrapper: wrapper,
              ),
            )
          ]),
          SizedBox(height: spaceBtwOptions ?? Dimens.gapX2),
          CommonCheckBox(
            onTap: () {
              onSelectOption(false); // Always select the second option
            },
            isSelected: !isOptionOneSelected,
            name: optionTwo ?? 'No',
          ),
        ]).paddingSymmetric(horizontal: Dimens.gapX1),
      ],
    );
  }
}
