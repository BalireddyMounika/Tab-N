import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/widgets/text/common_text.dart';

class CommonSwitch extends StatefulWidget {
  final Function(bool) onTap;
  final String? optionOne;
  final String? optionTwo;
  final bool initialSwitchValue;

  const CommonSwitch({
    Key? key,
    required this.onTap,
    this.optionOne,
    this.optionTwo,
    required this.initialSwitchValue,
  }) : super(key: key);

  @override
  CommonSwitchState createState() => CommonSwitchState(initialSwitchValue);
}

class CommonSwitchState extends State<CommonSwitch> {
  bool isSwitchOn;

  CommonSwitchState(this.isSwitchOn);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSwitchOn = !isSwitchOn;
          widget.onTap(isSwitchOn);
        });
      },
      child: Container(
        width: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.radiusX4),
          border: Border.all(
              color: isSwitchOn ? Colors.green : AppColors.blackColor),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimens.radiusX4),
                    color: isSwitchOn ? AppColors.baseColor : Colors.white),
                child: Center(
                  child: body(
                    text: widget.optionOne ?? 'Yes',
                    textColor: isSwitchOn ? AppColors.white : Colors.black,
                  ).paddingSymmetric(vertical: Dimens.paddingX1),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: isSwitchOn ? Colors.white : AppColors.baseColor,
                    borderRadius: BorderRadius.circular(Dimens.radiusX4)),
                child: Center(
                  child: body(
                    text: widget.optionTwo ?? 'No',
                    textColor: isSwitchOn ? AppColors.blackColor : Colors.white,
                  ).paddingSymmetric(vertical: Dimens.paddingX1),
                ),
              ),
            ),
          ],
        ).paddingAll(2),
      ),
    );
  }
}
