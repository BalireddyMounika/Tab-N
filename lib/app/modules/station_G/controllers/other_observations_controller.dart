import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/modules/station_G/controllers/station_g_controller.dart';
import 'package:nivish/base/base_controller.dart';
import 'package:nivish/utils/helper/text_field_wrapper.dart';
import '../../../../utils/app_utils.dart';
import '../../../../utils/storage/storage_utils.dart';
import '../../../data/model/dto/response.dart';
import '../../../data/model/response/generic_response.dart';
import '../../../data/model/resuest/StationG/GOtherObservations.dart';
import '../../../data/repository/stationARepository.dart';

class OtherObservationsController extends BaseController<AllStationRepository> {
  TextFieldWrapper otherObservations = TextFieldWrapper();
  RxBool isSpecialistReferralNeeded = RxBool(false);
  RxList<String> selectedReferralType = RxList();
  RxList<String> referralTypeList = RxList([
    'Pediatrician',
    "Internist",
    "Dentist",
    "Dermatologist",
    "ENT Specialist",
    "Gynecologist",
    "Hematologist",
    "Neurologist",
    "Opthalmologist",
    "Orthopedist",
    "Other"
  ]);
  TextFieldWrapper otherWrapper = TextFieldWrapper();
  RxList<String> referralFlagList = RxList([
    'Non-Urgent',
    "Urgent",
    "Emergency",
  ]);
  RxString selectedReFlag = RxString('');
  void onSelectReferralFlag({required String name}) {
    if (selectedReFlag.value == name) {
      selectedReFlag.value = '';
    } else {
      selectedReFlag.value = name;
    }
    referralFlagList.refresh();
  }

  ///API
  updateOtherObservations({required Function(bool? success) callBack}) async {
    OtherObservations requestData = OtherObservations(
      specialistReferralNeeded: isSpecialistReferralNeeded.value ? 'Yes' : 'No',
      otherObservations: otherObservations.controller.text,
      specialistReferralNeededType: selectedReferralType.join(','),
      specialistReferralNeededFlag: selectedReFlag.value,
      other: otherWrapper.controller.text,
      completed: 'Yes',
      endTime:
          '${TimeOfDay.fromDateTime(DateTime.now()).hour}:${TimeOfDay.fromDateTime(DateTime.now()).minute}',
    );

    try {
      if (AppStorage.isStationGIdExists()) {
        RepoResponse<GenericResponse> response =
            await repository.updateOtherObservations(
                requestData: requestData, id: AppStorage.getStationGId());
        if (response.data?.status == 200 || response.data?.status == 201) {
          callBack.call(true);
        } else {
          callBack.call(false);
          AppUtils.showErrorMessage(response);
        }
      }
    } catch (exp) {
      callBack.call(false);

      print(exp);
    }
  }
}
