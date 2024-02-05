import 'package:flutter/material.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/common_check_box.dart';

class YesAndNoValueSelector extends StatefulWidget {
  final bool isYes;
  final bool isEnable;
  final double? spaceBtw;
  final Function(bool) onSelect;
  const YesAndNoValueSelector(
      {Key? key,
      required this.isYes,
      required this.isEnable,
      required this.onSelect,
      this.spaceBtw})
      : super(key: key);

  @override
  State<YesAndNoValueSelector> createState() => _YesAndNoValueSelectorState();
}

class _YesAndNoValueSelectorState extends State<YesAndNoValueSelector> {
  @override
  Widget build(BuildContext context) {
    bool isYes = widget.isYes;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonCheckBox(
            isActive: widget.isEnable,
            name: "Yes",
            textStyle: AppStyles.tsBlackMedium20,
            isSelected: widget.isYes,
            onTap: () {
              if (widget.isEnable)
                setState(() {
                  isYes = true;
                  widget.onSelect(isYes);
                });
            }),
        SizedBox(
          width: widget.spaceBtw ?? Dimens.gapX5,
        ),
        CommonCheckBox(
            isActive: widget.isEnable,
            name: "No",
            textStyle: AppStyles.tsBlackMedium20,
            isSelected: !widget.isYes,
            onTap: () {
              isYes = false;
              setState(() {
                if (widget.isEnable) widget.onSelect(isYes);
              });
            }),
      ],
    );
  }
}
