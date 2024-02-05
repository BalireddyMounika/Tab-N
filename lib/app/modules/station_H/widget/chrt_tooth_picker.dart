import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_H/controllers/station_h_controller.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/utils/enums/all_enums.dart';
import 'package:nivish/widgets/common_check_box.dart';

class CharToothPicker extends StatefulWidget {
  final String titleName;
  final ToothType toothType;
  final bool? isDigit;
  final String startChar;
  final String endChar;
  final RxBool? isVisible;
  final RxList selectedItemList;
  final Function(String) onSelect;
  const CharToothPicker({
    Key? key,
    required this.onSelect,
    required this.titleName,
    required this.startChar,
    required this.endChar,
    required this.selectedItemList,
    this.isVisible,
    required this.toothType,
    this.isDigit,
  }) : super(key: key);

  @override
  State<CharToothPicker> createState() => _DigitToothPickerState();
}

class _DigitToothPickerState extends State<CharToothPicker> {
  RxBool isChecked = RxBool(false);
  @override
  Widget build(BuildContext context) {
    RxList<String> optionList = RxList();
    int start = widget.startChar.codeUnitAt(0);
    int end = widget.endChar.codeUnitAt(0);
    if (start < end) {
      for (int i = start; i <= end; i++) {
        optionList.add(String.fromCharCode(i));
      }
    } else {
      for (int i = start; i >= end; i--) {
        optionList.add(String.fromCharCode(i));
      }
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CommonCheckBox(
            unCheckedIcon: Icons.check_box_outline_blank,
            checkedIcon: Icons.check_box,
            isSelected: isChecked.value,
            onTap: () {
              isChecked.value = !isChecked.value;
              if (isChecked.value == false)
                Get.find<StationHController>()
                    .clearSelectedList(widget.toothType);
            },
            name: widget.titleName,
            textStyle: AppStyles.tsBlackBold16,
          ),
        ),
        const SizedBox(height: Dimens.gapX2),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Obx(
            () => Row(
              children: List.generate(
                optionList.length,
                (idx) => InkWell(
                  onTap: () {
                    if (isChecked.value) widget.onSelect(optionList[idx]);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: widget.selectedItemList.contains(optionList[idx])
                          ? AppColors.baseColor
                          : AppColors.disableColor,
                      borderRadius: BorderRadius.circular(Dimens.radiusX4),
                    ),
                    child: Text(
                      optionList[idx],
                      style: AppStyles.tsBlackMedium14.copyWith(
                          color:
                              widget.selectedItemList.contains(optionList[idx])
                                  ? AppColors.white
                                  : AppColors.blackColor),
                    ).paddingSymmetric(
                        horizontal: Dimens.gapX2, vertical: Dimens.gapX1),
                  ).paddingSymmetric(horizontal: Dimens.gapX0_5),
                ),
              ),
            ),
          ),
        ),
      ],
    ).paddingOnly(left: Dimens.gapX4);
  }
}
