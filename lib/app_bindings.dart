import 'package:get/get.dart';
import 'package:nivish/app/data/network/network_requester.dart';
import 'package:nivish/app/data/repository/auth_repository.dart';
import 'package:nivish/app/data/repository/stationARepository.dart';
import 'package:nivish/app/modules/home/controllers/home_controller.dart';
import 'package:nivish/app/modules/station_A/controllers/section_a_controller.dart';
import 'package:nivish/app/modules/station_B/controllers/station_b_controller.dart';
import 'package:nivish/app/modules/station_C/controllers/station_C_visually_right_eye_controller.dart';
import 'package:nivish/app/modules/station_C/controllers/station_c_controller.dart';
import 'package:nivish/app/modules/station_G/controllers/alimentary_&_urinary_first_controller.dart';
import 'package:nivish/app/modules/station_G/controllers/cardio_vascular_systems_controller.dart';
import 'package:nivish/app/modules/station_G/controllers/nervous_system_controller.dart';
import 'package:nivish/app/modules/station_G/controllers/pubertal_assessment_girls_controller.dart';
import 'package:nivish/app/modules/station_G/controllers/respiratory_system_controller.dart';
import 'package:nivish/app/modules/station_H/controllers/station_h_controller.dart';
import 'app/modules/station_D/controllers/station_d_controller.dart';
import 'app/modules/station_E/controllers/station_e_controller.dart';
import 'app/modules/station_F/controllers/station_f_controller.dart';

import 'app/modules/station_G/controllers/history_of_medication_controller.dart';
import 'app/modules/station_G/controllers/other_observations_controller.dart';
import 'app/modules/station_G/controllers/right_lung_controller.dart';

import 'app/modules/station_G/controllers/pubertal_assessment_boys_controller.dart';
import 'app/modules/station_G/controllers/station_g_controller.dart';


class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkRequester());
    Get.put(AuthRepository(), permanent: true);
    Get.put(AllStationRepository(), permanent: true);
    Get.put(HomeController(), permanent: true);
    Get.put(StationAController(), permanent: true);
    Get.put(StationBController(), permanent: true);
    Get.put(StationCController(), permanent: true);
    Get.put(VisuallyChallengedController(), permanent: true);
    Get.put(StationDController(), permanent: true);
    Get.put(StationEController(), permanent: true);
    Get.put(StationFController(), permanent: true);
    Get.put(StationHController(), permanent: true);
    Get.put(StationGController(), permanent: true);
    Get.put(NervesSystemController(), permanent: true);
    Get.put(RespiratorySystemController(), permanent: true);
// <<<<<<< HEAD
    Get.put(PubertalAssessmentGirlsController(), permanent: true);
    Get.put(PubertalAssessmentBoysController(), permanent: true);
    Get.put(CardioVascularSystemsController(), permanent: true);
    Get.put(AlimentaryAndUrinaryController(), permanent: true);
// =======

    Get.put(RightLungController(),permanent: true);
    Get.put(HistoryOfMedicationController(),permanent: true);
    Get.put(OtherObservationsController(),permanent: true);

    Get.put(PubertalAssessmentGirlsController(),permanent: true);
    Get.put(PubertalAssessmentBoysController(),permanent: true);


    Get.put(CardioVascularSystemsController(), permanent: true);


// >>>>>>> 8a693aab23908b6a846dac86392660eec7153b60
  }
}
