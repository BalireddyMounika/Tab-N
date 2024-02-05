import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/modules/station_C/widget/option.dart';

import '../../../../../widgets/common_check_box.dart';
import '../../../../data/values/dimens.dart';
import '../../controllers/station_C_visually_right_eye_controller.dart';

class NoEnucleationWidget extends GetView<VisuallyChallengedController> {
  NoEnucleationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: Dimens.gapX2),
        Obx(() => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(controller.noREList.length, (i) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonCheckBox(
                          isActive: controller.isRE.value,
                          checkedIcon: Icons.check_box,
                          unCheckedIcon: Icons.check_box_outline_blank,
                          onTap: () {
                            if (controller.selectedContractRe
                                .contains(controller.noREList[i])) {
                              controller.selectedContractRe
                                  .remove(controller.noREList[i]);
                            } else {
                              controller.selectedContractRe
                                  .add(controller.noREList[i]);
                            }
                          },
                          isSelected: controller.selectedContractRe
                              .contains(controller.noREList[i]),
                          name: controller.noREList[i])
                      .paddingOnly(bottom: Dimens.gapX1),
                  Visibility(
                    visible:
                        controller.selectedContractRe.contains('Cataract') &&
                            controller.noREList[i] == 'Cataract',
                    child: Option(
                      isActive:
                          controller.selectedContractRe.contains('Cataract'),
                      selectedValue: controller.selectedContractRE,
                    ).paddingOnly(bottom: Dimens.gapX1),
                  ),
                  SizedBox(
                    height: Dimens.gapX1,
                  ),
                  Visibility(
                    visible: controller.selectedContractRe
                            .contains('Corneal opacity') &&
                        controller.noREList[i] == 'Corneal opacity',
                    child: Option(
                      isActive: controller.selectedContractRe
                          .contains('Corneal opacity'),
                      selectedValue: controller.selectedCornealOpacityRE,
                    ).paddingOnly(bottom: Dimens.gapX1),
                  ),
                  Visibility(
                    visible:
                        controller.selectedContractRe.contains('Glaucoma') &&
                            controller.noREList[i] == 'Glaucoma',
                    child: Option(
                      isActive:
                          controller.selectedContractRe.contains('Glaucoma'),
                      selectedValue: controller.selectedGlaucomaRE,
                    ).paddingOnly(bottom: Dimens.gapX1),
                  ),
                  Visibility(
                    visible: controller.selectedContractRe
                            .contains('Phthisis bulbi') &&
                        controller.noREList[i] == 'Phthisis bulbi',
                    child: Option(
                      isActive: controller.selectedContractRe
                          .contains('Phthisis bulbi'),
                      selectedValue: controller.selectedPhthisisBulbitRE,
                    ).paddingOnly(bottom: Dimens.gapX1),
                  ),
                ],
              );
            }))),
      ],
    );
  }
}
