import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/modules/station_G/controllers/alimentary_&_urinary_first_controller.dart';
import 'package:nivish/app/modules/station_G/tabs/alimentary_&_urinary_system/epigastric_tab.dart';
import 'package:nivish/app/modules/station_G/tabs/alimentary_&_urinary_system/hernia_tab.dart';
import 'package:nivish/app/modules/station_G/tabs/alimentary_&_urinary_system/left_hypochondrium_tab.dart';
import 'package:nivish/app/modules/station_G/tabs/alimentary_&_urinary_system/left_iliac_tab.dart';
import 'package:nivish/app/modules/station_G/tabs/alimentary_&_urinary_system/left_lumber_tab.dart';
import 'package:nivish/app/modules/station_G/tabs/alimentary_&_urinary_system/right_hypochondrium_tab.dart';
import 'package:nivish/app/modules/station_G/tabs/alimentary_&_urinary_system/right_iliac_tab.dart';
import 'package:nivish/app/modules/station_G/tabs/alimentary_&_urinary_system/right_lumber_tab.dart';
import 'package:nivish/app/modules/station_G/tabs/alimentary_&_urinary_system/suprapubic_tab.dart';
import 'package:nivish/app/modules/station_G/tabs/alimentary_&_urinary_system/umbilical_tab.dart';
import 'package:nivish/app/modules/station_G/widget/common_container.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/widgets/common_check_box.dart';
import 'package:nivish/widgets/text/common_text.dart';
import 'package:nivish/widgets/toggle/two_option_selector_widget.dart';

class AlimentaryAndUrinaryTab extends GetView<AlimentaryAndUrinaryController> {
  const AlimentaryAndUrinaryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  subHeading(
                      text: 'Alimentary & Urinary System',
                      ),
                  Expanded(
                    child: Align(
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset(
                          AppImages.alimentary,
                          width: Dimens.screenWidthX7,
                        )),
                  )
                ],
              ),
              Dimens.heightGap2,
              buildDoubleOptionSelector("Do you have Nausea/ Vomiting?", "No",
                  "Yes", controller.isVomiting),
              buildDoubleOptionSelector("Do you have pain in the Abdomen?",
                  "No", "Yes", controller.isAbdomen),
              buildDoubleOptionSelector(
                  "Do you have Burning sensation when you pass Urine?",
                  "No",
                  "Yes",
                  controller.isUrine),
              commonCleft(
                  label: "Cleft Lip",
                  isNotVisibleCleftPresent:
                      controller.isNotVisibleCleftLipPresent,
                  isCleft: controller.isCleftLip),
              commonCleft(
                  label: "Cleft Palate",
                  isNotVisibleCleftPresent:
                      controller.isNotVisibleCleftPalatePresent,
                  isCleft: controller.isCleftPalate),
              buildDoubleOptionSelector("Abdominal Distension", 'Absent',
                  'Present', controller.isAbdominal),
              buildDoubleOptionSelector("Exaggerated Bowel Sounds", "Absent",
                  'Present', controller.isExaggerated),
              buildDoubleOptionSelector(
                  "Guarding", 'Absent', 'Present', controller.isGuarding),
              buildDoubleOptionSelector(
                  "Rigidity", 'Absent', 'Present', controller.isRigidity),
            ],
          ).paddingAll(Dimens.gapX2),
        ),
        Dimens.heightGap4,
        const RightHypochondrium(),
        Dimens.heightGap4,
        const RightLumber(),
        Dimens.heightGap4,
        const RightIliac(),
        Dimens.heightGap4,
        const Epigastric(),
        Dimens.heightGap4,
        const Umbilical(),
        Dimens.heightGap4,
        const Suprapubic(),
        Dimens.heightGap4,
        const LeftHypochondrium(),
        Dimens.heightGap4,
        const LeftLumber(),
        Dimens.heightGap4,
        const LeftIliac(),
        Dimens.heightGap4,
        const Hernia(),
        Dimens.heightGap4,
      ],
    );
  }

  Widget buildDoubleOptionSelector(String label, String optionOne,
      String optionTwo, RxBool isOptionOneSelected) {
    return Obx(
      () => DoubleOptionSelector(
        label: label,
        optionOne: optionOne,
        optionTwo: optionTwo,
        isOptionOneSelected: isOptionOneSelected.value,
        onSelectOption: (v) {
          isOptionOneSelected.value = v;
        },
      ).paddingOnly(top: Dimens.gapX3),
    );
  }

  Widget commonCleft({
    required String label,
    required RxBool isNotVisibleCleftPresent,
    required RxBool isCleft,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildDoubleOptionSelector(label, "Absent", "Present", isCleft),
        Obx(
          () => Visibility(
            visible: !isCleft.value,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CommonCheckBox(
                          onTap: () => isNotVisibleCleftPresent.value = true,
                          isSelected: isNotVisibleCleftPresent.value,
                          name: 'Repaired'),
                      Dimens.widthGap2,
                      CommonCheckBox(
                          onTap: () => isNotVisibleCleftPresent.value = false,
                          isSelected: !isNotVisibleCleftPresent.value,
                          name: 'Unrepaired'),
                    ],
                  ).paddingSymmetric(horizontal: Dimens.gapX2),
                ),
              ],
            ).paddingOnly(top: Dimens.gapX2,left: Dimens.gapX2),
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
    return Obx(
      () => StaggeredGrid.count(
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
          ).paddingSymmetric(horizontal: Dimens.gapX2),
        ),
      ),
    );
  }
}
