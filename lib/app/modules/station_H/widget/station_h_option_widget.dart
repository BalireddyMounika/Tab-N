import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/widgets/toggle/two_option_selector_widget.dart';

Widget stationHOptionWidget({
  required String name,
  required RxBool isOptionOneSelected,
  required Function(bool) onSelect,
}) {
  return Row(
    children: [
      Obx(
        () => DoubleOptionSelector(
          label: name,
          isOptionOneSelected: isOptionOneSelected.value,
          onSelectOption: (bool) {
            onSelect(bool);
          },
        ),
      ),
      Spacer(),
    ],
  );
}
