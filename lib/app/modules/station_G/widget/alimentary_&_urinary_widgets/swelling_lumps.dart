import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/utils/helper/text_field_wrapper.dart';
import 'package:nivish/widgets/common_check_box.dart';
import 'package:nivish/widgets/common_input_field.dart';
import 'package:nivish/widgets/text/common_text.dart';

class SwellingLumps extends StatelessWidget {
  final TextFieldWrapper swellingDescription;
  final TextFieldWrapper swellingSize;
  final RxString selectedTexture;

  SwellingLumps({
    required this.swellingDescription,
    required this.swellingSize,
    required this.selectedTexture,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: CommonInputField(
                wrapper: swellingDescription,
                hintText: "Description",
              ),
            ),
            Dimens.widthGap2,
            Expanded(
              child: CommonInputField(
                wrapper: swellingSize,
                hintText: 'Size(cm)',
                inputType: TextInputType.number,
              ),
            ),
          ],
        ).paddingOnly(left: Dimens.gapX3, top: Dimens.gapX1),
        Dimens.heightGap1,
        title(text: 'Texture').paddingOnly(left: Dimens.gapX2),
        Obx(
          () => commonMultipleWidget(
            list: [
              'Soft',
              'Firm',
              'Hard'
            ], // Replace with your list of textures
            selectedValue: selectedTexture.value,
            onSelect: (value) => selectedTexture.value = value,
          ),
        ),
      ],
    );
  }

  Widget commonMultipleWidget({
    required List<String> list,
    required String selectedValue,
    required Function(String) onSelect,
  }) {
    return StaggeredGrid.count(
      crossAxisCount: Get.width < 600 ? 1 : 3,
      mainAxisSpacing: 20,
      crossAxisSpacing: 10,
      children: List.generate(
        list.length,
        (i) => CommonCheckBox(
          isActive: true, // You may need to set this based on your logic
          name: list[i],
          isSelected: list[i] == selectedValue,
          onTap: () => onSelect(list[i]),
        ),
      ),
    ).paddingOnly(top: Dimens.gapX1, left: Dimens.gapX2);
  }
}
