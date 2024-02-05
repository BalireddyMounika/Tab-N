import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_H/controllers/station_h_controller.dart';
import 'package:nivish/app/modules/station_H/widget/digit_thooth_picker.dart';
import 'package:nivish/utils/enums/all_enums.dart';
import 'package:nivish/widgets/text/common_text.dart';

import '../../../../widgets/Age_Gender_validations.dart';

class LowerPermanentWidget extends GetView<StationHController> {
  const LowerPermanentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: StudentInfo.calculateAge() >= 2,
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        heading(
          text: 'Lower Permanent',
        ).paddingSymmetric(horizontal: Dimens.gapX4),
        const SizedBox(height: Dimens.gapX4),
        DigitToothPicker(
            toothType: ToothType.LPMissing,
            titleName: 'Missing',
            startingValue: 32,
            endValue: 17,
            selectedItemList:
                controller.getSelectedTeethList(ToothType.LPMissing),
            onSelect: (value) {
              controller.handelOnToothSelect(ToothType.LPMissing, value);
            }),
        const SizedBox(height: Dimens.gapX4),
        DigitToothPicker(
          toothType: ToothType.LPProsthesis,
          titleName: 'Prosthesis',
          startingValue: 32,
          endValue: 17,
          selectedItemList:
              controller.getSelectedTeethList(ToothType.LPProsthesis),
          onSelect: (value) {
            controller.handelOnToothSelect(ToothType.LPProsthesis, value);
          },
        ),
        const SizedBox(height: Dimens.gapX4),
        DigitToothPicker(
          toothType: ToothType.LPFilled,
          titleName: 'Filled',
          startingValue: 32,
          endValue: 17,
          selectedItemList: controller.getSelectedTeethList(ToothType.LPFilled),
          onSelect: (value) {
            controller.handelOnToothSelect(ToothType.LPFilled, value);
          },
        ),
        const SizedBox(height: Dimens.gapX4),
        DigitToothPicker(
          toothType: ToothType.LPDecayed,
          titleName: 'Decayed',
          startingValue: 32,
          endValue: 17,
          selectedItemList:
              controller.getSelectedTeethList(ToothType.LPDecayed),
          onSelect: (value) {
            controller.handelOnToothSelect(ToothType.LPDecayed, value);
          },
        ),
        const SizedBox(height: Dimens.gapX4),
        DigitToothPicker(
          toothType: ToothType.LPRestoration,
          titleName: 'Restoration Done',
          startingValue: 32,
          endValue: 17,
          selectedItemList:
              controller.getSelectedTeethList(ToothType.LPRestoration),
          onSelect: (value) {
            controller.handelOnToothSelect(ToothType.LPRestoration, value);
          },
        ),
      ],
    ));
  }
}
