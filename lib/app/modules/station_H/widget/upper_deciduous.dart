import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_H/controllers/station_h_controller.dart';
import 'package:nivish/app/modules/station_H/widget/chrt_tooth_picker.dart';
import 'package:nivish/utils/enums/all_enums.dart';
import 'package:nivish/widgets/text/common_text.dart';

import '../../../../widgets/Age_Gender_validations.dart';

class UpperDeciduousWidget extends GetView<StationHController> {
  const UpperDeciduousWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: StudentInfo.calculateAge() < 18,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heading(
              text: 'Upper Deciduous',
            ).paddingSymmetric(horizontal: Dimens.gapX4),
            const SizedBox(height: Dimens.gapX4),
            CharToothPicker(
                toothType: ToothType.UDMissing,
                titleName: 'Missing',
                startChar: 'A',
                endChar: 'J',
                selectedItemList:
                    controller.getSelectedTeethList(ToothType.UDMissing),
                onSelect: (value) {
                  RxList<String> decayedTeeth =
                      controller.getSelectedTeethList(ToothType.UDDecayed);
                  RxList<String> filledTeeth =
                      controller.getSelectedTeethList(ToothType.UDFilled);
                  RxList<String> restorationTeeth =
                      controller.getSelectedTeethList(ToothType.UDRestoration);
                  if (!(decayedTeeth.contains(value.toString()) &&
                          filledTeeth.contains(value.toString()) &&
                          restorationTeeth.contains(value.toString())) &&
                      !(decayedTeeth.contains(value.toString()))) {
                    controller.handelOnToothSelect(ToothType.UDMissing, value);
                  }
                }),
            const SizedBox(height: Dimens.gapX4),
            CharToothPicker(
              toothType: ToothType.UDProsthesis,
              titleName: 'Prosthesis',
              startChar: 'A',
              endChar: 'J',
              selectedItemList:
                  controller.getSelectedTeethList(ToothType.UDProsthesis),
              onSelect: (value) {
                RxList<String> decayedTeeth =
                    controller.getSelectedTeethList(ToothType.UDDecayed);
                RxList<String> filledTeeth =
                    controller.getSelectedTeethList(ToothType.UDFilled);
                RxList<String> restorationTeeth =
                    controller.getSelectedTeethList(ToothType.UDRestoration);
                if (!(decayedTeeth.contains(value.toString()) &&
                        filledTeeth.contains(value.toString()) &&
                        restorationTeeth.contains(value.toString())) &&
                    !(decayedTeeth.contains(value.toString()))) {
                  controller.handelOnToothSelect(ToothType.UDProsthesis, value);
                }
              },
            ),
            const SizedBox(height: Dimens.gapX4),
            CharToothPicker(
              toothType: ToothType.UDFilled,
              titleName: 'Filled',
              startChar: 'A',
              endChar: 'J',
              selectedItemList:
                  controller.getSelectedTeethList(ToothType.UDFilled),
              onSelect: (value) {
                RxList<String> missingTeeth =
                    controller.getSelectedTeethList(ToothType.UDMissing);
                RxList<String> prosthesisTeeth =
                    controller.getSelectedTeethList(ToothType.UDProsthesis);
                if (!(missingTeeth.contains(value.toString()) &&
                        prosthesisTeeth.contains(value.toString())) &&
                    !(missingTeeth.contains(value.toString()))) {
                  controller.handelOnToothSelect(ToothType.UDFilled, value);
                }
              },
            ),
            const SizedBox(height: Dimens.gapX4),
            CharToothPicker(
              toothType: ToothType.UDDecayed,
              titleName: 'Decayed',
              startChar: 'A',
              endChar: 'J',
              selectedItemList:
                  controller.getSelectedTeethList(ToothType.UDDecayed),
              onSelect: (value) {
                RxList<String> missingTeeth =
                    controller.getSelectedTeethList(ToothType.UDMissing);
                RxList<String> prosthesisTeeth =
                    controller.getSelectedTeethList(ToothType.UDProsthesis);
                if (!(missingTeeth.contains(value.toString()) &&
                        prosthesisTeeth.contains(value.toString())) &&
                    !(missingTeeth.contains(value.toString()))) {
                  controller.handelOnToothSelect(ToothType.UDDecayed, value);
                }
              },
            ),
            const SizedBox(height: Dimens.gapX4),
            CharToothPicker(
              toothType: ToothType.UDRestoration,
              titleName: 'Restoration Done',
              startChar: 'A',
              endChar: 'J',
              selectedItemList:
                  controller.getSelectedTeethList(ToothType.UDRestoration),
              onSelect: (value) {
                RxList<String> missingTeeth =
                    controller.getSelectedTeethList(ToothType.UDMissing);
                RxList<String> prosthesisTeeth =
                    controller.getSelectedTeethList(ToothType.UDProsthesis);
                if (!(missingTeeth.contains(value.toString()) &&
                        prosthesisTeeth.contains(value.toString())) &&
                    !(missingTeeth.contains(value.toString()))) {
                  controller.handelOnToothSelect(
                      ToothType.UDRestoration, value);
                }
              },
            )
          ],
        ));
  }
}
