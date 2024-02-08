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
              RxList<String> decayedTeeth =
              controller.getSelectedTeethList(ToothType.LPDecayed);
              RxList<String> filledTeeth =
              controller.getSelectedTeethList(ToothType.LPFilled);
              RxList<String> restorationTeeth =
              controller.getSelectedTeethList(ToothType.LPRestoration);
              if (!(decayedTeeth.contains(value.toString()) &&
                  filledTeeth.contains(value.toString()) &&
                  restorationTeeth.contains(value.toString())) &&
                  !(decayedTeeth.contains(value.toString()))) {
                controller.handelOnToothSelect(ToothType.LPMissing, value);
              }            }),
        const SizedBox(height: Dimens.gapX4),
        DigitToothPicker(
          toothType: ToothType.LPProsthesis,
          titleName: 'Prosthesis',
          startingValue: 32,
          endValue: 17,
          selectedItemList:
              controller.getSelectedTeethList(ToothType.LPProsthesis),
          onSelect: (value) {
            RxList<String> decayedTeeth =
            controller.getSelectedTeethList(ToothType.LPDecayed);
            RxList<String> filledTeeth =
            controller.getSelectedTeethList(ToothType.LPFilled);
            RxList<String> restorationTeeth =
            controller.getSelectedTeethList(ToothType.LPRestoration);
            if (!(decayedTeeth.contains(value.toString()) &&
                filledTeeth.contains(value.toString()) &&
                restorationTeeth.contains(value.toString())) &&
                !(decayedTeeth.contains(value.toString()))) {
              controller.handelOnToothSelect(ToothType.LPProsthesis, value);
            }          },
        ),
        const SizedBox(height: Dimens.gapX4),
        DigitToothPicker(
          toothType: ToothType.LPFilled,
          titleName: 'Filled',
          startingValue: 32,
          endValue: 17,
          selectedItemList: controller.getSelectedTeethList(ToothType.LPFilled),
          onSelect: (value) {
            RxList<String> missingTeeth =
            controller.getSelectedTeethList(ToothType.LPMissing);
            RxList<String> prosthesisTeeth =
            controller.getSelectedTeethList(ToothType.LPProsthesis);
            if (!(missingTeeth.contains(value.toString()) &&
                prosthesisTeeth.contains(value.toString())) &&
                !(missingTeeth.contains(value.toString()))) {
              controller.handelOnToothSelect(ToothType.LPFilled, value);
            }          },
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
            RxList<String> missingTeeth =
            controller.getSelectedTeethList(ToothType.LPMissing);
            RxList<String> prosthesisTeeth =
            controller.getSelectedTeethList(ToothType.LPProsthesis);
            if (!(missingTeeth.contains(value.toString()) &&
                prosthesisTeeth.contains(value.toString())) &&
                !(missingTeeth.contains(value.toString()))) {
              controller.handelOnToothSelect(ToothType.LPDecayed, value);
            }          },
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
            RxList<String> missingTeeth =
            controller.getSelectedTeethList(ToothType.LPMissing);
            RxList<String> prosthesisTeeth =
            controller.getSelectedTeethList(ToothType.LPProsthesis);
            if (!(missingTeeth.contains(value.toString()) &&
                prosthesisTeeth.contains(value.toString())) &&
                !(missingTeeth.contains(value.toString()))) {
              controller.handelOnToothSelect(ToothType.LPRestoration, value);
            }          },
        ),
      ],
    ));
  }
}
