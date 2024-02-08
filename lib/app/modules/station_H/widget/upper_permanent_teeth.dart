import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_H/controllers/station_h_controller.dart';
import 'package:nivish/app/modules/station_H/widget/chrt_tooth_picker.dart';
import 'package:nivish/app/modules/station_H/widget/digit_thooth_picker.dart';
import 'package:nivish/utils/enums/all_enums.dart';
import 'package:nivish/widgets/Age_Gender_validations.dart';
import 'package:nivish/widgets/text/common_text.dart';

class UpperPermanentWidget extends GetView<StationHController> {
  const UpperPermanentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: StudentInfo.calculateAge() >= 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          heading(
            text: 'Upper Permanent',
          ).paddingSymmetric(horizontal: Dimens.gapX4),
          const SizedBox(height: Dimens.gapX4),
          DigitToothPicker(
            toothType: ToothType.UPMissing,
            titleName: 'Missing',
            startingValue: 1,
            endValue: 16,
            selectedItemList:
                controller.getSelectedTeethList(ToothType.UPMissing),
            onSelect: (value) {
              RxList<String> decayedTeeth =
                  controller.getSelectedTeethList(ToothType.UPDecayed);
              RxList<String> filledTeeth =
                  controller.getSelectedTeethList(ToothType.UPFilled);
              RxList<String> restorationTeeth =
                  controller.getSelectedTeethList(ToothType.UPRestoration);
              if (!(decayedTeeth.contains(value.toString()) &&
                      filledTeeth.contains(value.toString()) &&
                      restorationTeeth.contains(value.toString())) &&
                  !(decayedTeeth.contains(value.toString()))) {
                controller.handelOnToothSelect(ToothType.UPMissing, value);
              }
            },
          ),
          const SizedBox(height: Dimens.gapX4),
          DigitToothPicker(
            toothType: ToothType.UPProsthesis,
            titleName: 'Prosthesis',
            startingValue: 1,
            endValue: 16,
            selectedItemList:
                controller.getSelectedTeethList(ToothType.UPProsthesis),
            onSelect: (value) {
              RxList<String> decayedTeeth =
                  controller.getSelectedTeethList(ToothType.UPDecayed);
              RxList<String> filledTeeth =
                  controller.getSelectedTeethList(ToothType.UPFilled);
              RxList<String> restorationTeeth =
                  controller.getSelectedTeethList(ToothType.UPRestoration);
              if (!(decayedTeeth.contains(value.toString()) &&
                      filledTeeth.contains(value.toString()) &&
                      restorationTeeth.contains(value.toString())) &&
                  !(decayedTeeth.contains(value.toString()))) {
                controller.handelOnToothSelect(ToothType.UPProsthesis, value);
              }
            },
          ),
          const SizedBox(height: Dimens.gapX4),
          DigitToothPicker(
            toothType: ToothType.UPFilled,
            titleName: 'Filled',
            startingValue: 1,
            selectedItemList:
                controller.getSelectedTeethList(ToothType.UPFilled),
            endValue: 16,
            onSelect: (value) {
              RxList<String> missingTeeth =
                  controller.getSelectedTeethList(ToothType.UPMissing);
              RxList<String> prosthesisTeeth =
                  controller.getSelectedTeethList(ToothType.UPProsthesis);
              if (!(missingTeeth.contains(value.toString()) &&
                      prosthesisTeeth.contains(value.toString())) &&
                  !(missingTeeth.contains(value.toString()))) {
                controller.handelOnToothSelect(ToothType.UPFilled, value);
              }
            },
          ),
          const SizedBox(height: Dimens.gapX4),
          DigitToothPicker(
            toothType: ToothType.UPDecayed,
            titleName: 'Decayed',
            startingValue: 1,
            selectedItemList:
                controller.getSelectedTeethList(ToothType.UPDecayed),
            endValue: 16,
            onSelect: (value) {
              RxList<String> missingTeeth =
                  controller.getSelectedTeethList(ToothType.UPMissing);
              RxList<String> prosthesisTeeth =
                  controller.getSelectedTeethList(ToothType.UPProsthesis);
              if (!(missingTeeth.contains(value.toString()) &&
                      prosthesisTeeth.contains(value.toString())) &&
                  !(missingTeeth.contains(value.toString()))) {
                controller.handelOnToothSelect(ToothType.UPDecayed, value);
              }
            },
          ),
          const SizedBox(height: Dimens.gapX4),
          DigitToothPicker(
            toothType: ToothType.UPRestoration,
            titleName: 'Restoration Done',
            startingValue: 1,
            selectedItemList:
                controller.getSelectedTeethList(ToothType.UPRestoration),
            endValue: 16,
            onSelect: (value) {
              RxList<String> missingTeeth =
                  controller.getSelectedTeethList(ToothType.UPMissing);
              RxList<String> prosthesisTeeth =
                  controller.getSelectedTeethList(ToothType.UPProsthesis);
              if (!(missingTeeth.contains(value.toString()) &&
                      prosthesisTeeth.contains(value.toString())) &&
                  !(missingTeeth.contains(value.toString()))) {
                controller.handelOnToothSelect(ToothType.UPRestoration, value);
              }
            },
          ),
        ],
      ),
    );
  }
}
