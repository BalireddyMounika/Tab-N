import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/modules/station_F/tabs/skin/rash_view.dart';
import 'package:nivish/widgets/common_text.dart';
import '../../../../../widgets/common_check_box.dart';
import '../../../../data/values/dimens.dart';
import '../../../../data/values/images.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/app_styles.dart';
import '../../controllers/station_f_controller.dart';
import 'other_skin_lesions_view.dart';

class StationFSkinColorTextureView extends GetView<StationFController> {
  const StationFSkinColorTextureView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(blurRadius: 15, color: AppColors.greyColor)
            ]),
            child: Get.width < 600
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const CommonText(
                            text: "Skin",
                          ),
                          Expanded(
                            child: Align(
                                alignment: Alignment.topRight,
                                child: SvgPicture.asset(
                                  AppImages.skin,
                                  width: Dimens.screenWidthX7,
                                )),
                          )
                        ],
                      ),
                      const Text(
                        "Skin Color/Tone",
                        style: AppStyles.tsBlackSemi20,
                      ),
                      const SizedBox(
                        height: Dimens.gapX2,
                      ),

                      Obx(() => CommonCheckBox(
                            textStyle: AppStyles.tsBlackMedium20,
                            name: "Normal",
                            isSelected: controller.isSkinNormal.value,
                            onTap: () => controller.onCheckedSkinNormal(),
                          )),
                      const SizedBox(
                        height: Dimens.gapX1,
                      ),
                      Obx(() => CommonCheckBox(
                            textStyle: AppStyles.tsBlackMedium20,
                            name: "Abnormal",
                            isSelected: !controller.isSkinNormal.value,
                            onTap: () => controller.onCheckedSkinNormal(),
                          )),

                      const SizedBox(height: Dimens.gapX2),
                      Padding(
                          padding: const EdgeInsets.only(left: Dimens.gapX3),
                          child: Obx(
                            () => StaggeredGrid.count(
                              crossAxisCount: Get.width < 600 ? 1 : 2,
                              mainAxisSpacing: 24,
                              crossAxisSpacing: 12,
                              children: List.generate(
                                controller.skinColorList.length,
                                (i) => CommonCheckBox(
                                  isActive: !controller.isSkinNormal.value,
                                  name: controller.skinColorList[i],
                                  isSelected: controller.skinColorList[i] ==
                                      controller.selectedSkinColorList.value,
                                  onTap: () => controller.onSelectSkinColorList(
                                      name: controller.skinColorList[i]),
                                ),
                              ),
                            ),
                          )),
                      const SizedBox(height: Dimens.gapX2),
                      Row(
                        children: [
                          const Text(
                            "Texture of Skin",
                            style: AppStyles.tsBlackSemi20,
                          ),
                          Expanded(
                            child: Align(
                                alignment: Alignment.topRight,
                                child: SvgPicture.asset(
                                  AppImages.skin,
                                  width: Dimens.screenWidthX7,
                                )),
                          )
                        ],
                      ),

                      Obx(() => CommonCheckBox(
                          textStyle: AppStyles.tsBlackMedium20,
                          name: "Normal",
                          isSelected: controller.isSkinTextureNormal.value,
                          onTap: () {
                            controller.onCheckedSkinTextureNormal();
                            controller.selectedSkinTexture.clear();
                          })),
                      const SizedBox(
                        height: Dimens.gapX1,
                      ),
                      Obx(() => CommonCheckBox(
                            textStyle: AppStyles.tsBlackMedium20,
                            name: "Abnormal",
                            isSelected: !controller.isSkinTextureNormal.value,
                            onTap: () =>
                                controller.onCheckedSkinTextureNormal(),
                          )),

                      const SizedBox(height: Dimens.gapX2),
                      Obx(
                        () => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                            controller.skinTextureList.length,
                            (i) => CommonCheckBox(
                              isActive: !controller.isSkinTextureNormal.value,
                              checkedIcon: Icons.check_box,
                              unCheckedIcon: Icons.check_box_outline_blank,
                              onTap: () {
                                if (controller.selectedSkinTexture
                                    .contains(controller.skinTextureList[i])) {
                                  controller.selectedSkinTexture
                                      .remove(controller.skinTextureList[i]);
                                } else {
                                  controller.selectedSkinTexture
                                      .add(controller.skinTextureList[i]);
                                }
                              },
                              isSelected: controller.selectedSkinTexture
                                  .contains(controller.skinTextureList[i]),
                              name: controller.skinTextureList[i],
                            ).paddingOnly(bottom: Dimens.gapX1),
                          ),
                        ).paddingSymmetric(horizontal: Dimens.gapX4),
                      ),
                      const SizedBox(height: Dimens.gapX1),
                      const StationFRashView(),
                      // const SizedBox(height: Dimens.gapX3),
                      // const StationFRashAbdomenView(),
                      // const SizedBox(height: Dimens.gapX3),
                      // const StationFRashArmsView(),
                      const StationFOtherSkinLesionsView()
                    ],
                  ).paddingAll(Dimens.gapX4)
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const CommonText(
                            text: "Skin",
                          ),
                          Expanded(
                            child: Align(
                                alignment: Alignment.topRight,
                                child: SvgPicture.asset(
                                  AppImages.skin,
                                  width: Dimens.screenWidthX7,
                                )),
                          )
                        ],
                      ),
                      const Text(
                        "Skin Color/Tone",
                        style: AppStyles.tsBlackSemi20,
                      ),
                      const SizedBox(
                        height: Dimens.gapX2,
                      ),
                      Row(
                        children: [
                          Obx(() => CommonCheckBox(
                                textStyle: AppStyles.tsBlackMedium20,
                                name: "Normal",
                                isSelected: controller.isSkinNormal.value,
                                onTap: () => controller.onCheckedSkinNormal(),
                              )),
                          const SizedBox(
                            width: Dimens.gapX5,
                          ),
                          Obx(() => CommonCheckBox(
                                textStyle: AppStyles.tsBlackMedium20,
                                name: "Abnormal",
                                isSelected: !controller.isSkinNormal.value,
                                onTap: () => controller.onCheckedSkinNormal(),
                              )),
                        ],
                      ),
                      const SizedBox(height: Dimens.gapX2),
                      Padding(
                          padding: const EdgeInsets.only(left: Dimens.gapX3),
                          child: Obx(
                            () => StaggeredGrid.count(
                              crossAxisCount: Get.width < 600 ? 1 : 2,
                              mainAxisSpacing: 24,
                              crossAxisSpacing: 12,
                              children: List.generate(
                                controller.skinColorList.length,
                                (i) => CommonCheckBox(
                                  isActive: !controller.isSkinNormal.value,
                                  name: controller.skinColorList[i],
                                  isSelected: controller.skinColorList[i] ==
                                      controller.selectedSkinColorList.value,
                                  onTap: () => controller.onSelectSkinColorList(
                                      name: controller.skinColorList[i]),
                                ),
                              ),
                            ),
                          )),
                      const SizedBox(height: Dimens.gapX2),
                      Row(
                        children: [
                          const Text(
                            "Texture of Skin",
                            style: AppStyles.tsBlackSemi20,
                          ),
                          Expanded(
                            child: Align(
                                alignment: Alignment.topRight,
                                child: SvgPicture.asset(
                                  AppImages.skin,
                                  width: Dimens.screenWidthX7,
                                )),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Obx(() => CommonCheckBox(
                              textStyle: AppStyles.tsBlackMedium20,
                              name: "Normal",
                              isSelected: controller.isSkinTextureNormal.value,
                              onTap: () {
                                controller.onCheckedSkinTextureNormal();
                                controller.selectedSkinTexture.clear();
                              })),
                          const SizedBox(
                            width: Dimens.gapX5,
                          ),
                          Obx(() => CommonCheckBox(
                                textStyle: AppStyles.tsBlackMedium20,
                                name: "Abnormal",
                                isSelected:
                                    !controller.isSkinTextureNormal.value,
                                onTap: () =>
                                    controller.onCheckedSkinTextureNormal(),
                              )),
                        ],
                      ),
                      const SizedBox(height: Dimens.gapX2),
                      Obx(
                        () => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                            controller.skinTextureList.length,
                            (i) => CommonCheckBox(
                              isActive: !controller.isSkinTextureNormal.value,
                              checkedIcon: Icons.check_box,
                              unCheckedIcon: Icons.check_box_outline_blank,
                              onTap: () {
                                if (controller.selectedSkinTexture
                                    .contains(controller.skinTextureList[i])) {
                                  controller.selectedSkinTexture
                                      .remove(controller.skinTextureList[i]);
                                } else {
                                  controller.selectedSkinTexture
                                      .add(controller.skinTextureList[i]);
                                }
                              },
                              isSelected: controller.selectedSkinTexture
                                  .contains(controller.skinTextureList[i]),
                              name: controller.skinTextureList[i],
                            ).paddingOnly(bottom: Dimens.gapX1),
                          ),
                        ).paddingSymmetric(horizontal: Dimens.gapX4),
                      ),
                      const SizedBox(height: Dimens.gapX1),
                      const StationFRashView(),
                      // const SizedBox(height: Dimens.gapX3),
                      // const StationFRashAbdomenView(),
                      // const SizedBox(height: Dimens.gapX3),
                      // const StationFRashArmsView(),
                      const StationFOtherSkinLesionsView()
                    ],
                  ).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
