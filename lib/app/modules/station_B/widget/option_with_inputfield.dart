import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/utils/helper/text_field_wrapper.dart';
import 'package:nivish/utils/helper/validators.dart';
import 'package:nivish/widgets/common_input_field.dart';

Widget optionInputFiled({
  required String name,
  required String unit,
  required String hintText,
  int? maxLength,
  required TextFieldWrapper controller,
  bool? isMandatory,
}) {
  return Get.width < 600
      ? Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RichText(
              text: TextSpan(
                text: '$name ',
                style: AppStyles.tsBlackMedium16,
                children: <TextSpan>[
                  TextSpan(text: '($unit)', style: AppStyles.tsBlackRegular16),
                ],
              ),
            ),
            const SizedBox(height: Dimens.gapX1),
            SizedBox(
              child: CommonInputField(
                hintText: hintText,
                maxLength: maxLength,
                validator: isMandatory ?? false ? mandatoryValidator : null,
                inputType: TextInputType.number,
                wrapper: controller,
              ),
            ),
          ],
        )
      : Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RichText(
              text: TextSpan(
                text: '$name ',
                style: AppStyles.tsBlackMedium16,
                children: <TextSpan>[
                  TextSpan(text: '($unit)', style: AppStyles.tsBlackRegular16),
                ],
              ),
            ),
            const SizedBox(width: Dimens.gapX2),
            Expanded(
              child: SizedBox(
                child: CommonInputField(
                  hintText: hintText,
                  maxLength: maxLength,
                  validator: isMandatory ?? false ? mandatoryValidator : null,
                  inputType: TextInputType.number,
                  wrapper: controller,
                ),
              ),
            ),
          ],
        );
}
