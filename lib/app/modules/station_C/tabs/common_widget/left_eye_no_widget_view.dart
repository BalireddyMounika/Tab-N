import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_C/controllers/station_C_visually_right_eye_controller.dart';
import 'package:nivish/widgets/common_check_box.dart';

import '../../widget/option.dart';

class NoLeftEyeWidget extends GetView<VisuallyChallengedController> {
  const NoLeftEyeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: Dimens.gapX2),
        Obx(() => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(controller.noLEList.length, (i) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonCheckBox(
                          isActive: controller.isLE.value,
                          checkedIcon: Icons.check_box,
                          unCheckedIcon: Icons.check_box_outline_blank,
                          onTap: () {
                            if (controller.selectedContractLe
                                .contains(controller.noLEList[i])) {
                              controller.selectedContractLe
                                  .remove(controller.noLEList[i]);
                            } else {
                              controller.selectedContractLe
                                  .add(controller.noLEList[i]);
                            }
                          },
                          isSelected: controller.selectedContractLe
                              .contains(controller.noLEList[i]),
                          name: controller.noLEList[i])
                      .paddingOnly(bottom: Dimens.gapX1),
                  Visibility(
                    visible:
                        controller.selectedContractLe.contains('Cataract') &&
                            controller.noLEList[i] == 'Cataract',
                    child: Option(
                      isActive:
                          controller.selectedContractLe.contains('Cataract'),
                      selectedValue: controller.selectedContractLE,
                    ).paddingOnly(bottom: Dimens.gapX1),
                  ),
                  SizedBox(
                    height: Dimens.gapX1,
                  ),
                  Visibility(
                    visible: controller.selectedContractLe
                            .contains('Corneal opacity') &&
                        controller.noLEList[i] == 'Corneal opacity',
                    child: Option(
                      isActive: controller.selectedContractLe
                          .contains('Corneal opacity'),
                      selectedValue: controller.selectedCornealOpacityLE,
                    ).paddingOnly(bottom: Dimens.gapX1),
                  ),
                  Visibility(
                    visible:
                        controller.selectedContractLe.contains('Glaucoma') &&
                            controller.noLEList[i] == 'Glaucoma',
                    child: Option(
                      isActive:
                          controller.selectedContractLe.contains('Glaucoma'),
                      selectedValue: controller.selectedGlaucomaLE,
                    ).paddingOnly(bottom: Dimens.gapX1),
                  ),
                  Visibility(
                    visible: controller.selectedContractLe
                            .contains('Phthisis bulbi') &&
                        controller.noLEList[i] == 'Phthisis bulbi',
                    child: Option(
                      isActive: controller.selectedContractLe
                          .contains('Phthisis bulbi'),
                      selectedValue: controller.selectedPhthisisBulbitLE,
                    ).paddingOnly(bottom: Dimens.gapX1),
                  ),
                ],
              );
            }))),
      ],
    );
  }
}
