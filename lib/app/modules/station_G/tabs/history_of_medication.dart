import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/common_check_box.dart';
import 'package:nivish/widgets/common_input_field.dart';
import 'package:nivish/widgets/text/common_text.dart';
import 'package:nivish/widgets/toggle/common_switch.dart';
import '../../../../utils/snackbar/snackbar.dart';
import '../controllers/history_of_medication_controller.dart';

class HistoryOfMedicationTab extends GetView<HistoryOfMedicationController> {
  const HistoryOfMedicationTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(blurRadius: 15, color: AppColors.greyColor),
        ],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        subHeading(
          text: 'History Of Medication',
        ),
        const SizedBox(height: Dimens.gapX4),
        Row(
          children: [
            const Text(
              "Medication",
              style: AppStyles.tsBlackSemi20,
            ),
            Dimens.widthGap4,
            CommonSwitch(
              onTap: (value) {
                controller.isMedication.value = value;
                controller.selectedMedicationReferral.value='';
              },
              initialSwitchValue: controller.isMedication.value,
            ),
          ],
        ),
        SizedBox(height: Dimens.gapX2),
        Obx(
          () => StaggeredGrid.count(
            crossAxisCount: Get.width < 600 ? 1 : 1,
            mainAxisSpacing: 24,
            crossAxisSpacing: 12,
            children: List.generate(
              controller.medicationlistReferralType.length,
              (i) => CommonCheckBox(
                isActive: controller.isMedication.value,
                name: controller.medicationlistReferralType[i],
                isSelected: controller.medicationlistReferralType[i] ==
                    controller.selectedMedicationReferral.value,
                onTap: () => controller.selectedMedicationReferral.value =
                    controller.medicationlistReferralType[i],
              ),
            ),
          ).paddingSymmetric(horizontal: Dimens.gapX4),
        ),
        SizedBox(height: Dimens.gapX2),
        Obx(() => Visibility(
              visible: controller.isMedication.value == true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name Of Medication",
                    style: AppStyles.tsBlackMedium16,
                  ),
                  Dimens.heightGap1,
                  CommonInputField(
                      hintText: "Type here",
                      wrapper: controller.nameOfMedication),
                  Dimens.widthGap2,
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      child: Container(
                        margin:
                            const EdgeInsets.only(right: Dimens.imageScaleX3),
                        width: Dimens.imageScaleX3,
                        height: Dimens.imageScaleX3,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.baseColor,
                            border: Border.all(color: AppColors.blackColor)),
                        child: const Icon(
                          Icons.add,
                          size: Dimens.imageScaleX2,
                          color: AppColors.white,
                        ),
                      ),
                      onTap: () {
                        controller.nameOfMedication.controller.text.isEmpty
                            ? Error_message("Error", "Enter any Text")
                            : controller.onAddMedicationText(
                                controller.nameOfMedication.controller.text);
                        controller.nameOfMedication.controller.clear();
                      },
                    ),
                  ),
                  Obx(
                    () => controller.nameOfMedicationTextList.isEmpty
                        ? const Text("")
                        : CommonListViewMedicationInfo(
                            count: controller.nameOfMedicationTextList.length,
                            textLinkList: controller.nameOfMedicationTextList,
                          ),
                  ),
                ],
              ).paddingSymmetric(horizontal: Dimens.gapX6),
            ))
      ]).paddingAll(Dimens.gapX4),
    ).paddingSymmetric(horizontal: Dimens.gapX3);
  }
}

class CommonListViewMedicationInfo extends StatelessWidget {
  final int count;
  final List textLinkList;

  const CommonListViewMedicationInfo({
    Key? key,
    required this.count,
    required this.textLinkList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(count, (index) {
        return ListTile(
          title: Text(textLinkList[index], style: AppStyles.tsBlackMedium14),
          trailing: IconButton(
              onPressed: () {
                textLinkList.removeAt(index);
              },
              icon: Icon(Icons.cancel)),
        );
      }, growable: true),
    );
  }
}
