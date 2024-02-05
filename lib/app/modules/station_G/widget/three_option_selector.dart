import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/widgets/common_check_box.dart';
import 'package:nivish/widgets/text/common_text.dart';

class ThreeOptionSelector extends StatelessWidget {
  final String name;
  final String selectedOption;
  final Function(String selectedValue) onTap;
  const ThreeOptionSelector(
      {Key? key,
      required this.name,
      required this.selectedOption,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title(text: name),
        const SizedBox(height: Dimens.gapX2),
        Wrap(
          runSpacing: Dimens.gapX2,
          spacing: Dimens.gapX3,
          children: [
            CommonCheckBox(
              isSelected: selectedOption == 'Yes',
              name: 'Yes',
              onTap: () => onTap('Yes'),
            ),
            CommonCheckBox(
              isSelected: selectedOption == 'No',
              name: 'No',
              onTap: () => onTap('No'),
            ),
            CommonCheckBox(
              isSelected: selectedOption == 'Partially',
              name: 'Partially',
              onTap: () => onTap('Partially'),
            ),
          ],
        ).paddingSymmetric(horizontal: Dimens.gapX1)
      ],
    );
  }
}
