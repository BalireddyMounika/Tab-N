import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nivish/app/modules/station_D/controllers/station_d_controller.dart';
import 'package:nivish/widgets/text/common_text.dart';
import '../../../../widgets/common_check_box.dart';
import '../../../../widgets/common_input_field.dart';
import '../../../data/values/dimens.dart';
import '../../../data/values/images.dart';
import '../../../themes/app_colors.dart';
import 'package:get/get.dart';

import '../../station_C/widget/common_radio_textfield_widget.dart';

class StationDFirstScreen extends GetView<StationDController> {
  const StationDFirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(blurRadius: 15, color: AppColors.greyColor)
            ]),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              heading(
                text:
                    "Do you have any problem in hearing your Teachers/Friends/Parents?",
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              Obx(
                () => Row(
                  children: [
                    CommonCheckBox(
                        isActive: controller.yesHearing.value,
                        name: 'Yes',
                        isSelected: controller.selectedHearing.value == 'Yes',
                        onTap: () {
                          controller.selectedHearing.value = 'Yes';
                          controller.selectedHearing.refresh();
                        }),
                    const SizedBox(width: Dimens.gapX2),
                    Expanded(
                        child: CommonInputField(
                      hintText: "Type here",
                      isEnabled: controller.selectedHearing.value == 'Yes',
                      wrapper: controller.yesHearingTextField,
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: Dimens.gapX2,
              ),
              Obx(
                () => StaggeredGrid.count(
                  crossAxisCount: Get.width < 600 ? 1 : 1,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 12,
                  children: List.generate(
                    controller.hearingList.length,
                    (i) => CommonCheckBox(
                      name: controller.hearingList[i],
                      isSelected: controller.hearingList[i] ==
                          controller.selectedHearing.value,
                      onTap: () => controller.onSelectHearing(
                          name: controller.hearingList[i]),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: Dimens.gapX3,
              ),
              Obx(() => OptionTextFieldSelector(
                    label: 'Does any fluid come out of your ears?',
                    isOptionOneSelected: controller.isYesFluid.value,
                    onSelectOption: (value) {
                      controller.isYesFluid.value = value;
                    },
                    isEnabled: controller.isYesFluid.value,
                    wrapper: controller.yesFluidTextField,
                  )),
              Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset(
                  AppImages.ear,
                  width: Dimens.screenWidthX7,
                ),
              )
            ]).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
