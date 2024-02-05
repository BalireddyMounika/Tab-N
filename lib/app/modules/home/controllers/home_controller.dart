import 'package:get/get.dart';
import 'package:nivish/app/data/values/app_string.dart';
import 'package:nivish/base/base_controller.dart';

class HomeController extends BaseController {
  RxList<StationModel> stationNames = RxList([
    StationModel(
      name: AppStrings.stationA,
      isSelected: true,
      isCompleted: false,
      isEditable: true,
      stepNumber: 9,
      stepIndex: 8,
    ),
    StationModel(
      name: AppStrings.stationB,
      isSelected: false,
      isCompleted: false,
      isEditable: true,
      stepNumber: 5,
      stepIndex: 4,
    ),
    StationModel(
      name: AppStrings.stationC,
      isSelected: false,
      isCompleted: false,
      isEditable: true,
      stepNumber: 6,
      stepIndex: 5,
    ),
    StationModel(
      name: AppStrings.stationD,
      isSelected: false,
      isCompleted: false,
      isEditable: true,
      stepNumber: 5,
      stepIndex: 4,
    ),
    StationModel(
      name: AppStrings.stationE,
      isSelected: false,
      isCompleted: false,
      isEditable: true,
      stepNumber: 9,
      stepIndex: 8,
    ),
    StationModel(
      name: AppStrings.stationF,
      isSelected: false,
      isCompleted: false,
      isEditable: true,
      stepNumber: 10,
      stepIndex: 9,
    ),
    StationModel(
      name: AppStrings.stationG,
      isSelected: false,
      isCompleted: false,
      isEditable: true,
      stepNumber: 10,
      stepIndex: 9,
    ),
    StationModel(
      name: AppStrings.stationH,
      isSelected: false,
      isCompleted: false,
      isEditable: true,
      stepNumber: 6,
      stepIndex: 5,
    ),
  ]);

  RxString selectedStation = RxString('');

  RxInt currentStep = 0.obs;
  RxInt stepNumber = 0.obs;
  RxInt stepIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void onSelectStation({required int idx}) {
    final String selectedStationName = stationNames[idx].name;

    if (selectedStation.value != selectedStationName) {
      for (int i = 0; i < stationNames.length; i++) {
        final bool isSelected = (idx == i);

        stationNames[i].isSelected = isSelected;

        if (isSelected) {
          selectedStation.value = selectedStationName;
          getStationDetails(stationId: i + 1);
        }
      }

      stationNames.refresh();
    }
  }

  void getStationDetails({required int stationId}) {
    String stationApi;
    switch (stationId) {
      case 1:
        stationApi = 'StationA';
        break;
      case 2:
        stationApi = 'StationB';
        break;
      case 3:
        stationApi = 'StationE';
        break;
      case 4:
        stationApi = 'StationD';
        break;
      case 5:
        stationApi = 'StationE';
        break;
      case 6:
        stationApi = 'StationF';
        break;
      case 7:
        stationApi = 'StationG';
        break;
      case 8:
        stationApi = 'StationH';
        break;
      default:
        stationApi = 'Somethings went wrong';
        break;
    }
    print("$stationApi");
    // AppUtils.showSnackBar('Need to call $stationApi api');
  }

  void setCurrentStep(int step) {
    currentStep.value = step;
  }
}

class StationModel {
  String name;
  bool isSelected;
  bool isCompleted;
  bool isEditable;
  int? stepNumber;
  int? stepIndex;
  StationModel({
    required this.name,
    this.stepIndex,
    this.stepNumber,
    required this.isSelected,
    required this.isCompleted,
    required this.isEditable,
  });
}
