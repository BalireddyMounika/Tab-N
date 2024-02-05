import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_styles.dart';
import '../../controllers/station_f_controller.dart';

class StationFEarDrumView extends GetView<StationFController> {
  const StationFEarDrumView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Eardrum",
          style: AppStyles.tsBlackSemi20,
        ),
        const SizedBox(height: Dimens.gapX1_5),
        Obx(() => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(controller.eardrumList.length, (i) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonCheckBox(
                        name: controller.eardrumList[i],
                        isSelected: controller.eardrumList[i] ==
                            controller.selectedEardrum.value,
                        onTap: () {
                          controller.onSelectEardrum(
                              name: controller.eardrumList[i]);
                          controller.selectedEarDrum.clear();
                        }).paddingOnly(bottom: Dimens.gapX1_5),
                    Visibility(
                        visible:
                            controller.selectedEardrum.contains('Abnormal') &&
                                controller.eardrumList[i] == 'Abnormal',
                        child: Obx(
                          () => StaggeredGrid.count(
                              crossAxisCount: Get.width < 600 ? 1 : 1,
                              mainAxisSpacing: 24,
                              crossAxisSpacing: 12,
                              children: List.generate(
                                  controller.earsDischargeYesList.length, (i) {
                                return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CommonCheckBox(
                                          checkedIcon: Icons.check_box,
                                          unCheckedIcon:
                                              Icons.check_box_outline_blank,
                                          isActive: controller.selectedEardrum
                                              .contains('Abnormal'),
                                          name: controller.earsDischargeYesList
                                              .elementAt(i),
                                          isSelected: controller.selectedEarDrum
                                              .contains(controller
                                                  .earsDischargeYesList
                                                  .elementAt(i)),
                                          onTap: () =>
                                              controller.onSelectEarDrum(
                                                  idx: i)).paddingOnly(
                                          bottom: Dimens.gapX1),
                                      Visibility(
                                        visible: controller.selectedEarDrum
                                                .contains('Right Ear') &&
                                            controller
                                                    .earsDischargeYesList[i] ==
                                                'Right Ear',
                                        child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: Dimens.gapX5),
                                            child: Obx(
                                              () => StaggeredGrid.count(
                                                crossAxisCount:
                                                    Get.width < 600 ? 1 : 1,
                                                mainAxisSpacing: 10,
                                                crossAxisSpacing: 5,
                                                children: List.generate(
                                                  controller
                                                      .eardrumRightList.length,
                                                  (i) => CommonCheckBox(
                                                    isActive: controller
                                                        .selectedEarDrum
                                                        .contains('Right Ear'),
                                                    name: controller
                                                        .eardrumRightList[i],
                                                    isSelected: controller
                                                                .eardrumRightList[
                                                            i] ==
                                                        controller
                                                            .selectedEardrumRight
                                                            .value,
                                                    onTap: () => controller
                                                        .onSelectEardrumRight(
                                                            name: controller
                                                                .eardrumRightList[i]),
                                                  ),
                                                ),
                                              ),
                                            )),
                                      ),
                                      Visibility(
                                        visible: controller.selectedEarDrum
                                                .contains('Left Ear') &&
                                            controller
                                                    .earsDischargeYesList[i] ==
                                                'Left Ear',
                                        child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: Dimens.gapX5),
                                            child: Obx(
                                              () => StaggeredGrid.count(
                                                crossAxisCount:
                                                    Get.width < 600 ? 1 : 1,
                                                mainAxisSpacing: 10,
                                                crossAxisSpacing: 5,
                                                children: List.generate(
                                                  controller
                                                      .eardrumLeftList.length,
                                                  (i) => CommonCheckBox(
                                                    isActive: controller
                                                        .selectedEarDrum
                                                        .contains('Left Ear'),
                                                    name: controller
                                                        .eardrumLeftList[i],
                                                    isSelected: controller
                                                                .eardrumLeftList[
                                                            i] ==
                                                        controller
                                                            .selectedEardrumLeft
                                                            .value,
                                                    onTap: () => controller
                                                        .onSelectEardrumLeft(
                                                            name: controller
                                                                .eardrumLeftList[i]),
                                                  ),
                                                ),
                                              ),
                                            )),
                                      ),
                                    ]);
                              })),
                        )).paddingOnly(left: Dimens.gapX4),
                  ],
                );
              }),
            )),
      ],
    );
  }
}
