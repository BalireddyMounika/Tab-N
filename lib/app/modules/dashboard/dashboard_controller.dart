import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/model/dto/StudentModel.dart';
import 'package:nivish/app/data/model/dto/response.dart';
import 'package:nivish/app/data/model/response/generic_response.dart';
import 'package:nivish/app/data/model/response/station_status_response.dart';
import 'package:nivish/app/data/repository/auth_repository.dart';
import 'package:nivish/app/modules/home/controllers/home_controller.dart';
import 'package:nivish/app/routes/app_routes.dart';
import 'package:nivish/base/base_controller.dart';
import 'package:nivish/utils/app_utils.dart';
import 'package:nivish/utils/helper/text_field_wrapper.dart';
import 'package:nivish/utils/loading/loading_utils.dart';
import 'package:nivish/utils/storage/storage_utils.dart';

class DashboardController extends BaseController<AuthRepository> {
  TextFieldWrapper uinWrapper = TextFieldWrapper();

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  HomeController homeController = Get.find<HomeController>();
  Rx<Student?> student = Rx<Student?>(null);

  @override
  void onInit() {
    super.onInit();
    if (AppStorage.isStudentExists()) student.value = AppStorage.getStudent();
  }

  Future<void> getStudentDetail() async {
    try {
      if (uinWrapper.controller.text.isNotEmpty) {
        LoadingUtils.showLoader();
        RepoResponse<GenericResponse> response =
            await repository.getStudentDetails(uin: uinWrapper.controller.text);
        if (response.data?.status == 200 || response.data?.status == 201) {
          var data = response.data?.result as List;
          if (data.isNotEmpty) {
            student.value = Student.fromJson(data.first);
            update();
            AppStorage.setStudent(student.value);
          }
          LoadingUtils.hideLoader();
        } else {
          LoadingUtils.hideLoader();
          AppUtils.showSnackBar(response.error?.message ??
              response.data?.message ??
              'Something went wrong');
        }
      } else {
        AppUtils.showSnackBar('Please enter Uin');
      }
    } catch (e) {
      if (LoadingUtils.isLoaderShowing) LoadingUtils.hideLoader();
      print(e);
    }
  }

  Future<void> getStationDetails() async {
    try {
      LoadingUtils.showLoader();
      RepoResponse<GenericResponse> response =
          await repository.getStationDetails(
              // uin: '22253064650',
              uin: uinWrapper.controller.text,
              hcId: AppStorage.getUser().stations?.first.hcid.toString() ?? '');
      if (response.data?.status == 200 || response.data?.status == 201) {
        StationStatusModel stationStatus =
            StationStatusModel.fromJson(response.data?.result);
        stationStatus.stationsStatus?.forEach((e) {
          print(e.stationID);
          print(e.completed);
        });
        LoadingUtils.hideLoader();
        uinWrapper.controller.clear();
      } else {
        LoadingUtils.hideLoader();
        AppUtils.showSnackBar(response.error?.message ??
            response.data?.message ??
            'Something went wrong');
      }
    } catch (e) {
      if (LoadingUtils.isLoaderShowing) LoadingUtils.hideLoader();
      print(e);
    }
  }

  void onSelectStudent() {
    int? accessableStation = AppStorage.getUser().stations?.first.stationID;
    if (accessableStation != null) {
      gotTo(accessableStation);
      // getStationDetails();
    } else {
      AppUtils.showSnackBar('You don\'t have access');
    }
  }

  void gotTo(int stationId) {
    int index = stationId - 1;
    final station = homeController.stationNames[index];

    homeController.selectedStation.value = station.name;
    homeController.onSelectStation(idx: index);

    Get.toNamed(Routes.HOME);
  }

  String getStationName(int stationId) {
    switch (stationId) {
      case 1:
        {
          return 'Station A (Anthropometrics)';
        }
      case 2:
        {
          return 'Station B (Vitals)';
        }
      case 3:
        {
          return 'Station B (Vitals)';
        }
      case 4:
        {
          return 'Station B (Vitals)';
        }
      case 5:
        {
          return 'Station B (Vitals)';
        }
      case 6:
        {
          return 'Station B (Vitals)';
        }
      case 7:
        {
          return 'Station B (Vitals)';
        }
      case 8:
        {
          return 'Station B (Vitals)';
        }
      default:
        {
          return 'You don\'t have any station access';
        }
    }
  }

  // void onQRViewCreated(QRViewController controller) {
  //   this.controller = controller;
  //   controller.scannedDataStream.listen((scanData) {
  //     result = scanData;
  //   });
  // }

  Future<void> resetController() async {
    student.value = null;
    await AppStorage.clearStationCid();
    await AppStorage.clearStudent();
  }
}
