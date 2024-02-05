import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nivish/widgets/toggle/common_switch.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../data/values/dimens.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/app_styles.dart';
import '../../controllers/station_f_controller.dart';

class StationFNailsSecondView extends GetView<StationFController> {
  const StationFNailsSecondView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Get.width < 600
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Expanded(
                      child: Text(
                    "Deformity / Surface",
                    style: AppStyles.tsBlackSemi20,
                  )),
                  Dimens.widthGap4,
                  CommonSwitch(
                    onTap: (value) {
                      controller.deformitySurface.value = value;
                      controller.selectedDeformitySurface.clear();
                    },
                    initialSwitchValue: controller.deformitySurface.value,
                  ),
                ],
              ),
              const SizedBox(
                height: Dimens.gapX1,
              ),
              Obx(() => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                        controller.deformitySurfaceList.length, (i) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonCheckBox(
                                  isActive: controller.deformitySurface.value,
                                  checkedIcon: Icons.check_box,
                                  unCheckedIcon: Icons.check_box_outline_blank,
                                  onTap: () {
                                    if (controller.selectedDeformitySurface
                                        .contains(controller
                                            .deformitySurfaceList[i])) {
                                      controller.selectedDeformitySurface
                                          .remove(controller
                                              .deformitySurfaceList[i]);
                                    } else {
                                      controller.selectedDeformitySurface.add(
                                          controller.deformitySurfaceList[i]);
                                    }
                                  },
                                  isSelected: controller
                                      .selectedDeformitySurface
                                      .contains(
                                          controller.deformitySurfaceList[i]),
                                  name: controller.deformitySurfaceList[i])
                              .paddingOnly(bottom: Dimens.gapX1),
                        ],
                      ).paddingOnly(left: Dimens.gapX3);
                    }),
                  )),
              const SizedBox(
                height: Dimens.gapX1,
              ),
              const Text(
                "Cuticles",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(
                height: Dimens.gapX1_5,
              ),
              Obx(
                () => StaggeredGrid.count(
                  crossAxisCount: Get.width < 600 ? 1 : 3,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 12,
                  children: List.generate(
                    controller.cuticlesList.length,
                    (i) => CommonCheckBox(
                      name: controller.cuticlesList[i],
                      isSelected: controller.cuticlesList[i] ==
                          controller.selectedCuticles.value,
                      onTap: () => controller.onSelectCuticles(
                          name: controller.cuticlesList[i]),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              const Text(
                "Nail Bed Infection",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(
                height: Dimens.gapX1_5,
              ),
              Obx(
                () => StaggeredGrid.count(
                  crossAxisCount: Get.width < 600 ? 1 : 3,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 12,
                  children: List.generate(
                    controller.nailBedList.length,
                    (i) => CommonCheckBox(
                      name: controller.nailBedList[i],
                      isSelected: controller.nailBedList[i] ==
                          controller.selectedNailBed.value,
                      onTap: () => controller.onSelectNailBedInfection(
                          name: controller.nailBedList[i]),
                    ),
                  ),
                ),
              ),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "Deformity / Surface",
                    style: AppStyles.tsBlackSemi20,
                  ),
                  Dimens.widthGap4,
                  CommonSwitch(
                    onTap: (value) {
                      controller.deformitySurface.value = value;
                      controller.selectedDeformitySurface.clear();
                    },
                    initialSwitchValue: controller.deformitySurface.value,
                  ),
                ],
              ),
              const SizedBox(
                height: Dimens.gapX1,
              ),
              Obx(() => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                        controller.deformitySurfaceList.length, (i) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonCheckBox(
                                  isActive: controller.deformitySurface.value,
                                  checkedIcon: Icons.check_box,
                                  unCheckedIcon: Icons.check_box_outline_blank,
                                  onTap: () {
                                    if (controller.selectedDeformitySurface
                                        .contains(controller
                                            .deformitySurfaceList[i])) {
                                      controller.selectedDeformitySurface
                                          .remove(controller
                                              .deformitySurfaceList[i]);
                                    } else {
                                      controller.selectedDeformitySurface.add(
                                          controller.deformitySurfaceList[i]);
                                    }
                                  },
                                  isSelected: controller
                                      .selectedDeformitySurface
                                      .contains(
                                          controller.deformitySurfaceList[i]),
                                  name: controller.deformitySurfaceList[i])
                              .paddingOnly(bottom: Dimens.gapX1),
                        ],
                      ).paddingOnly(left: Dimens.gapX3);
                    }),
                  )),
              const SizedBox(
                height: Dimens.gapX1,
              ),
              const Text(
                "Cuticles",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(
                height: Dimens.gapX1_5,
              ),
              Obx(
                () => StaggeredGrid.count(
                  crossAxisCount: Get.width < 600 ? 1 : 3,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 12,
                  children: List.generate(
                    controller.cuticlesList.length,
                    (i) => CommonCheckBox(
                      name: controller.cuticlesList[i],
                      isSelected: controller.cuticlesList[i] ==
                          controller.selectedCuticles.value,
                      onTap: () => controller.onSelectCuticles(
                          name: controller.cuticlesList[i]),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              const Text(
                "Nail Bed Infection",
                style: AppStyles.tsBlackSemi20,
              ),
              const SizedBox(
                height: Dimens.gapX1_5,
              ),
              Obx(
                () => StaggeredGrid.count(
                  crossAxisCount: Get.width < 600 ? 1 : 3,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 12,
                  children: List.generate(
                    controller.nailBedList.length,
                    (i) => CommonCheckBox(
                      name: controller.nailBedList[i],
                      isSelected: controller.nailBedList[i] ==
                          controller.selectedNailBed.value,
                      onTap: () => controller.onSelectNailBedInfection(
                          name: controller.nailBedList[i]),
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
