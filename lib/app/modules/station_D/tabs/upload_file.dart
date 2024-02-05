import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_D/controllers/station_d_controller.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/widgets/text/common_text.dart';

class StationDUploadFile extends GetView<StationDController> {
  const StationDUploadFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(blurRadius: 15, color: AppColors.greyColor)
            ]),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: subHeading(
                        text: 'Upload Pure Tone Test Results (Multiple)')),
                SizedBox(height: Dimens.gapX4),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () => controller.pickFiles(),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30)),
                      height: Dimens.screenHeightX21,
                      width: Dimens.screenHeightX21,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            CupertinoIcons.cloud_upload,
                            size: Dimens.gapX10,
                          ),
                          SizedBox(height: Dimens.gapX4),
                          Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.baseColor),
                                  borderRadius:
                                      BorderRadius.circular(Dimens.radiusX5)),
                              child: label(text: 'Browse Files')
                                  .paddingSymmetric(
                                      horizontal: Dimens.gapX3,
                                      vertical: Dimens.gapX1_5)),
                          SizedBox(height: Dimens.gapX2),
                          body(text: 'Max file size 500MB'),
                          body(text: 'File Supported JPG,PNG, PDF'),
                          Obx(
                            () => Visibility(
                              visible: controller.pickedFileName.isNotEmpty,
                              child: label(
                                      text:
                                          'Picked File:${controller.pickedFileName.value}')
                                  .paddingAll(Dimens.gapX2),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ).paddingAll(Dimens.gapX4))
        .paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
