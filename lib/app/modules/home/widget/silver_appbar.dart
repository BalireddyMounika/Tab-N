import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/modules/home/controllers/home_controller.dart';
import 'package:nivish/app/modules/home/widget/station_name_widget.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/utils/storage/storage_utils.dart';
import 'package:nivish/widgets/text/common_text.dart';

class SilverAppBar extends GetView<HomeController> {
  const SilverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: [
        Center(
            child: title(
          text: "UIN: ${AppStorage.getStudent().uin}",
        )).paddingOnly(right: Dimens.gapX3),
      ],
      floating: true,
      pinned: false,
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AppImages.icHeaderLogo,
              width: 90,
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 8.0),
            //   child: body(
            //     text: "UIN: ${AppStorage.getStudent().uin}",
            //   ),
            // ),
          ],
        ).paddingSymmetric(vertical: Dimens.gapX1_5),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(66),
        child: Container(
          color: AppColors.white,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Obx(
              () => Row(
                children: List.generate(
                  controller.stationNames.length,
                  (index) => stationNameWidget(
                    isCompleted: controller.stationNames[index].isCompleted,
                    name: controller.stationNames[index].name,
                    isSelected: controller.stationNames[index].isSelected,
                    ontap: () => controller.onSelectStation(idx: index),
                  ),
                ),
              ).paddingOnly(top: 2),
            ),
          ),
        ),
      ),
    );
  }
}
