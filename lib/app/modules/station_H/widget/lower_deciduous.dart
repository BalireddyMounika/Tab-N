import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_H/controllers/station_h_controller.dart';
import 'package:nivish/app/modules/station_H/widget/chrt_tooth_picker.dart';
import 'package:nivish/utils/enums/all_enums.dart';
import 'package:nivish/widgets/text/common_text.dart';

import '../../../../widgets/Age_Gender_validations.dart';

class LowerDeciduousWidget extends GetView<StationHController> {
  const LowerDeciduousWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: StudentInfo.calculateAge() < 18,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heading(
              text: 'Lower Deciduous',
            ).paddingSymmetric(horizontal: Dimens.gapX4),
            const SizedBox(height: Dimens.gapX4),
            CharToothPicker(
                toothType: ToothType.LDMissing,
                titleName: 'Missing',
                startChar: 'T',
                endChar: 'K',
                selectedItemList:
                    controller.getSelectedTeethList(ToothType.LDMissing),
                onSelect: (value) {
                  RxList<String> decayedTeeth =
                      controller.getSelectedTeethList(ToothType.LDDecayed);
                  RxList<String> filledTeeth =
                      controller.getSelectedTeethList(ToothType.LDFilled);
                  RxList<String> restorationTeeth =
                      controller.getSelectedTeethList(ToothType.LDRestoration);
                  if (!(decayedTeeth.contains(value.toString()) &&
                          filledTeeth.contains(value.toString()) &&
                          restorationTeeth.contains(value.toString())) &&
                      !(decayedTeeth.contains(value.toString()))) {
                    controller.handelOnToothSelect(ToothType.LDMissing, value);
                  }
                }),
            const SizedBox(height: Dimens.gapX4),
            CharToothPicker(
              toothType: ToothType.LDProsthesis,
              titleName: 'Prosthesis',
              startChar: 'T',
              endChar: 'K',
              selectedItemList:
                  controller.getSelectedTeethList(ToothType.LDProsthesis),
              onSelect: (value) {
                RxList<String> decayedTeeth =
                    controller.getSelectedTeethList(ToothType.LDDecayed);
                RxList<String> filledTeeth =
                    controller.getSelectedTeethList(ToothType.LDFilled);
                RxList<String> restorationTeeth =
                    controller.getSelectedTeethList(ToothType.LDRestoration);
                if (!(decayedTeeth.contains(value.toString()) &&
                        filledTeeth.contains(value.toString()) &&
                        restorationTeeth.contains(value.toString())) &&
                    !(decayedTeeth.contains(value.toString()))) {
                  controller.handelOnToothSelect(ToothType.LDProsthesis, value);
                }
              },
            ),
            const SizedBox(height: Dimens.gapX4),
            CharToothPicker(
              toothType: ToothType.LDFilled,
              titleName: 'Filled',
              startChar: 'T',
              endChar: 'K',
              selectedItemList:
                  controller.getSelectedTeethList(ToothType.LDFilled),
              onSelect: (value) {
                RxList<String> missingTeeth =
                    controller.getSelectedTeethList(ToothType.LDMissing);
                RxList<String> prosthesisTeeth =
                    controller.getSelectedTeethList(ToothType.LDProsthesis);
                if (!(missingTeeth.contains(value.toString()) &&
                        prosthesisTeeth.contains(value.toString())) &&
                    !(missingTeeth.contains(value.toString()))) {
                  controller.handelOnToothSelect(ToothType.LDFilled, value);
                }
              },
            ),
            const SizedBox(height: Dimens.gapX4),
            CharToothPicker(
              toothType: ToothType.LDDecayed,
              titleName: 'Decayed',
              startChar: 'T',
              endChar: 'K',
              selectedItemList:
                  controller.getSelectedTeethList(ToothType.LDDecayed),
              onSelect: (value) {
                RxList<String> missingTeeth =
                    controller.getSelectedTeethList(ToothType.LDMissing);
                RxList<String> prosthesisTeeth =
                    controller.getSelectedTeethList(ToothType.LDProsthesis);
                if (!(missingTeeth.contains(value.toString()) &&
                        prosthesisTeeth.contains(value.toString())) &&
                    !(missingTeeth.contains(value.toString()))) {
                  controller.handelOnToothSelect(ToothType.LDDecayed, value);
                }
              },
            ),
            const SizedBox(height: Dimens.gapX4),
            CharToothPicker(
              toothType: ToothType.LDRestoration,
              titleName: 'Restoration Done',
              startChar: 'T',
              endChar: 'K',
              selectedItemList:
                  controller.getSelectedTeethList(ToothType.LDRestoration),
              onSelect: (value) {
                RxList<String> missingTeeth =
                    controller.getSelectedTeethList(ToothType.LDMissing);
                RxList<String> prosthesisTeeth =
                    controller.getSelectedTeethList(ToothType.LDProsthesis);
                if (!(missingTeeth.contains(value.toString()) &&
                        prosthesisTeeth.contains(value.toString())) &&
                    !(missingTeeth.contains(value.toString()))) {
                  controller.handelOnToothSelect(
                      ToothType.LDRestoration, value);
                }
              },
            )
          ],
        ));
  }
}
