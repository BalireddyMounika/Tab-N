import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_G/controllers/respiratory_system_controller.dart';
import 'package:nivish/app/modules/station_G/widget/common_container.dart';
import 'package:nivish/widgets/common_check_box.dart';
import 'package:nivish/widgets/common_input_field.dart';
import 'package:nivish/widgets/text/common_text.dart';
import 'package:nivish/widgets/toggle/two_option_selector_widget.dart';

import '../../../data/values/images.dart';
import '../../../themes/app_styles.dart';

class RespiratorySystemTab extends GetView<RespiratorySystemController> {
  const RespiratorySystemTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              subHeading(
                text: 'Respiratory System',
              ),
              Expanded(
                child: Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset(
                      AppImages.respiratorySystem,
                      width: Dimens.screenWidthX7,
                    )),
              )
            ],
          ),
          Dimens.heightGap2,
          Obx(
            () => DoubleOptionSelector(
              label: 'Do you feel Breathless?',
              isOptionOneSelected: controller.isFeelBreathless.value,
              onSelectOption: (v) => controller.isFeelBreathless.value = v,
            ),
          ),
          Dimens.heightGap2,
          Obx(
            () => DoubleOptionSelector(
              label: 'Do you have Cough?',
              isOptionOneSelected: controller.haveCough.value,
              onSelectOption: (v) => controller.haveCough.value = v,
            ),
          ),
          Dimens.heightGap2,
          Obx(
            () => DoubleOptionSelector(
              label: 'Shape Of Chest',
              optionOne: 'Normal',
              optionTwo: 'Abnormal',
              isOptionOneSelected: controller.isShapeOfChestNormal.value,
              onSelectOption: (v) => controller.isShapeOfChestNormal.value = v,
            ),
          ),
          Dimens.heightGap2,
          Obx(
            () => Visibility(
              visible: !controller.isShapeOfChestNormal.value,
              child: Column(
                children: [
                  StaggeredGrid.count(
                    crossAxisCount: Get.width < 600 ? 1 : 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 12,
                    children: List.generate(
                      controller.abNormalChestOption.length,
                      (i) {
                        bool isSelected =
                            controller.selectedAbNormalChestOption.value ==
                                controller.abNormalChestOption[i];
                        return CommonCheckBox(
                          name: controller.abNormalChestOption[i],
                          isSelected: isSelected,
                          onTap: () => controller.selectedAbNormalChestOption
                              .value = controller.abNormalChestOption[i],
                        );
                      },
                    ),
                  ).paddingOnly(left: Dimens.gapX4),
                  Obx(
                    () => Visibility(
                      visible: controller.selectedAbNormalChestOption.value ==
                          'Other',
                      child: CommonInputField(
                          hintText: "Type here",
                              wrapper: controller.otherAbNormalChestOption)
                          .paddingSymmetric(vertical: Dimens.gapX2),
                    ),
                  )
                ],
              ).paddingSymmetric(horizontal: Dimens.gapX2),
            ),
          ),
          Dimens.heightGap2,
          Obx(
            () => common3option(
              name: 'Type Of Respiration',
              selectedOption:
                  controller.selectedAdditionalTypeOfRespiration.value,
              optionOne: 'Abdominal',
              optionTwo: 'Thoracic',
              optionThree: 'Abdomino-Thoracic',
              onTap: (value) {
                controller.selectedAdditionalTypeOfRespiration.value = value;
              },
            ),
          ),
          title(text: 'Trachea'),
          Dimens.heightGap2,
          Obx(
            () => threeOptionWidget(
              selectedOption: controller.selectedTrachea.value,
              optionOne: 'Central',
              optionTwo: 'Displaced to Left',
              optionThree: 'Displaced to Right',
              onTap: (value) {
                controller.selectedTrachea.value = value;
              },
            ),
          ),
          Dimens.heightGap2,
          title(text: 'Evidence of Tracheostomy'),
          Dimens.heightGap2,
          Obx(
            () => threeOptionWidget(
              selectedOption: controller.selectedEvidenceOfTracheostomy.value,
              optionOne: 'Absent',
              optionTwo: 'Tracheostomy opening',
              optionThree: 'Tracheostomy scar',
              onTap: (value) {
                controller.selectedEvidenceOfTracheostomy.value = value;
              },
            ),
          )
        ],
      ).paddingAll(Dimens.gapX3),
    );
  }

  Widget threeOptionWidget(
      {required String selectedOption,
      required String optionOne,
      required String optionTwo,
      required String optionThree,
      required Function(String) onTap}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonCheckBox(
          isSelected: selectedOption == optionOne,
          name: optionOne,
          onTap: () => onTap(optionOne),
        ),
        Dimens.heightGap1,
        CommonCheckBox(
          isSelected: selectedOption == optionTwo,
          name: optionTwo,
          onTap: () => onTap(optionTwo),
        ),
        Dimens.heightGap1,
        CommonCheckBox(
          isSelected: selectedOption == optionThree,
          name: optionThree,
          onTap: () => onTap(optionThree),
        ),
      ],
    ).paddingSymmetric(horizontal: Dimens.gapX1);
  }

  Widget typeAbdominal() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(() => Visibility(
            visible: controller.selectedAdditionalTypeOfRespiration.value ==
                'Abdominal',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Label: Additional Observations',
                  style: AppStyles.tsBlackBold18,
                ),
                Dimens.heightGap1,
                threeOptionWidget(
                    selectedOption: controller.selectedTypeAbdominal.value,
                    optionOne: 'Indrawing of intercostal spaces',
                    optionTwo: 'Indrawing of chest',
                    optionThree: 'Other',
                    onTap: (value) {
                      controller.selectedTypeAbdominal.value = value;
                    }),
              ],
            ))),
        Obx(
          () => Visibility(
            visible: controller.selectedTypeAbdominal.value == 'Other' &&
                controller.selectedAdditionalTypeOfRespiration.value ==
                    'Abdominal',
            child: CommonInputField(
                hintText: "Type here",wrapper: controller.otherTypeOfAbdominal)
                .paddingSymmetric(
                    horizontal: Dimens.gapX2, vertical: Dimens.gapX2),
          ),
        ),
      ],
    );
  }

  Widget typeThoracic() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(() => Visibility(
            visible: controller.selectedAdditionalTypeOfRespiration.value ==
                'Thoracic',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Label: Additional Observations',
                  style: TextStyle(fontSize: 18),
                ),
                Dimens.heightGap1,
                threeOptionWidget(
                    selectedOption: controller.selectedTypeThoracic.value,
                    optionOne: 'Indrawing of intercostal spaces',
                    optionTwo: 'Indrawing of chest',
                    optionThree: 'Other',
                    onTap: (value) {
                      controller.selectedTypeThoracic.value = value;
                    }),
              ],
            ))),
        Obx(
          () => Visibility(
            visible: controller.selectedTypeThoracic.value == 'Other' &&
                controller.selectedAdditionalTypeOfRespiration.value ==
                    'Thoracic',
            child: CommonInputField(
                hintText: "Type here",wrapper: controller.otherTypeOfThoracic)
                .paddingSymmetric(
                    horizontal: Dimens.gapX2, vertical: Dimens.gapX2),
          ),
        ),
      ],
    );
  }

  Widget typeAbdomino() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(() => Visibility(
            visible: controller.selectedAdditionalTypeOfRespiration.value ==
                'Abdomino-Thoracic',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Label: Additional Observations',
                  style: TextStyle(fontSize: 18),
                ),
                Dimens.heightGap1,
                threeOptionWidget(
                    selectedOption: controller.selectedTypeAbdominio.value,
                    optionOne: 'Indrawing of intercostal spaces',
                    optionTwo: 'Indrawing of chest',
                    optionThree: 'Other',
                    onTap: (value) {
                      controller.selectedTypeAbdominio.value = value;
                    }),
              ],
            ))),
        Obx(
          () => Visibility(
            visible: controller.selectedTypeAbdominio.value == 'Other' &&
                controller.selectedAdditionalTypeOfRespiration.value ==
                    'Abdomino-Thoracic',
            child: CommonInputField(
                hintText: "Type here",wrapper: controller.otherTypeOfAbdomino)
                .paddingSymmetric(
                    horizontal: Dimens.gapX2, vertical: Dimens.gapX2),
          ),
        ),
      ],
    );
  }

  Widget common3option({
    required String name,
    Color? labelColor,
    required String selectedOption,
    required String optionOne,
    required String optionTwo,
    required String optionThree,
    required Function(String) onTap,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title(text: name, textColor: labelColor),
        const SizedBox(height: Dimens.gapX2),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonCheckBox(
              isSelected: selectedOption == optionOne,
              name: optionOne,
              onTap: () => onTap(optionOne),
            ),
            Dimens.heightGap1,
            typeAbdominal().paddingOnly(left: Dimens.gapX4),
            Dimens.heightGap1,
            CommonCheckBox(
              isSelected: selectedOption == optionTwo,
              name: optionTwo,
              onTap: () => onTap(optionTwo),
            ),
            Dimens.heightGap1,
            typeThoracic().paddingOnly(left: Dimens.gapX4),
            Dimens.heightGap1,
            CommonCheckBox(
              isSelected: selectedOption == optionThree,
              name: optionThree,
              onTap: () => onTap(optionThree),
            ),
            Dimens.heightGap1,
            typeAbdomino().paddingOnly(left: Dimens.gapX4),
            Dimens.heightGap1,
          ],
        ).paddingSymmetric(horizontal: Dimens.gapX1),
      ],
    );
  }
}
