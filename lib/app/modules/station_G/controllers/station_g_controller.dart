import 'package:get/get.dart';
import 'package:nivish/app/data/repository/stationARepository.dart';
import 'package:nivish/app/modules/home/controllers/home_controller.dart';
import 'package:nivish/app/modules/station_G/controllers/alimentary_&_urinary_first_controller.dart';
import 'package:nivish/app/modules/station_G/controllers/history_of_medication_controller.dart';
import 'package:nivish/app/modules/station_G/controllers/nervous_system_controller.dart';
import 'package:nivish/app/modules/station_G/controllers/other_observations_controller.dart';
import 'package:nivish/app/modules/station_G/controllers/pubertal_assessment_girls_controller.dart';
import 'package:nivish/app/modules/station_G/controllers/right_lung_controller.dart';
import 'package:nivish/app/modules/station_G/controllers/cardio_vascular_systems_controller.dart';
import 'package:nivish/app/modules/station_G/controllers/pubertal_assessment_boys_controller.dart';
import 'package:nivish/app/modules/station_G/controllers/respiratory_system_controller.dart';
import 'package:nivish/app/modules/station_G/widget/final_preview_widget.dart';
import 'package:nivish/app/routes/app_routes.dart';
import 'package:nivish/base/base_controller.dart';
import 'package:nivish/utils/app_utils.dart';
import 'package:nivish/utils/storage/storage_utils.dart';
import 'package:nivish/widgets/dialog/confirmation_dialog.dart';
import 'package:nivish/widgets/finnal_confirmation_widget.dart';
import '../../../data/model/dto/response.dart';
import '../../../data/model/response/generic_response.dart';
import '../../../data/model/resuest/StationG/StationGGEtModel.dart';
import '../../../../widgets/Age_Gender_validations.dart';
import '../widget/StationGpreviewModel.dart';

class StationGController extends BaseController<AllStationRepository> {
  Rx<StationGgetModel?> stationGResponse = Rx<StationGgetModel?>(null);
  NervesSystemController nervesSystemController =
      Get.put(NervesSystemController());
  RespiratorySystemController respiratorySystemController =
      Get.put(RespiratorySystemController());
  CardioVascularSystemsController cardioVascularSystemsController =
      Get.put(CardioVascularSystemsController());
  AlimentaryAndUrinaryController alimentaryAndUrinaryController =
      Get.put(AlimentaryAndUrinaryController());
  PubertalAssessmentGirlsController pubertalAssessmentGirlsController =
      Get.put(PubertalAssessmentGirlsController());
  PubertalAssessmentBoysController pubertalAssessmentBoysController =
      Get.put(PubertalAssessmentBoysController());
  RightLungController rlcontroller = Get.put(RightLungController());
  HistoryOfMedicationController homcontroller =
      Get.put(HistoryOfMedicationController());
  OtherObservationsController oobcontroller =
      Get.put(OtherObservationsController());

  RxInt selectedTabIdx = 0.obs;

  Future<void> onSaveAndNext() async {
    switch (selectedTabIdx.value) {
      case 0:

        {
          if(nervesSystemController.isHistoryOfHeadache.value && !nervesSystemController.isContinuousHeadacheFrequency.value && nervesSystemController.selectedContinuousHeadacheFrequency.isEmpty){
            AppUtils.showSnackBar(
                'Please select exact values for History Of Headache - Frequency - Continuous');
          }else if(nervesSystemController.isHistoryOfHeadache.value && nervesSystemController.selectedHeadacheAssociatedWithOptions.isEmpty){
            AppUtils.showSnackBar(
                'Please select exact values for History Of Headache - Associated With');
          }
          else if(nervesSystemController.isHistoryOfHeadache.value && nervesSystemController.selectedHeadacheAssociatedWithOptions.contains('Occurrence') && nervesSystemController.selectedHeadachePartOfDayOptions.isEmpty){
            AppUtils.showSnackBar(
                'Please select exact values for History Of Headache - Associated With - Occurrence');
          }else if(nervesSystemController.isHistoryOfHeadache.value && nervesSystemController.selectedHeadacheAssociatedWithOptions.contains('Other') && nervesSystemController.otherHeadacheAssociatedWithOptions.controller.text.isEmpty){
            AppUtils.showSnackBar(
                'Please enter text for History Of Headache - Associated With - Other');
          }
          else if(nervesSystemController.isHistoryOfHeadache.value && nervesSystemController.selectedHeadacheFrom.isEmpty){
            AppUtils.showSnackBar(
                'Please enter text for History Of Headache - From');
          }else if(nervesSystemController.isHistoryOfHeadache.value && nervesSystemController.selectedHeadacheDuration.isEmpty){
            AppUtils.showSnackBar(
                'Please enter text for History Of Headache - Duration');
          }else if(nervesSystemController.isHistoryOfDizziness.value && !nervesSystemController.isContinuousDizzinessFrequency.value && nervesSystemController.selectedContinuousDizzinessFrequency.isEmpty){
            AppUtils.showSnackBar(
                'Please select exact values for History Of Dizziness - Frequency - Continuous');
          }else if(nervesSystemController.isHistoryOfDizziness.value && nervesSystemController.selectedDizzinessAssociatedWithOptions.isEmpty){
            AppUtils.showSnackBar(
                'Please select exact values for History Of Dizziness - Associated With');
          }
          else if(nervesSystemController.isHistoryOfDizziness.value && nervesSystemController.selectedDizzinessAssociatedWithOptions.contains('Occurrence') && nervesSystemController.selectedDizzinessPartOfDayOptions.isEmpty){
            AppUtils.showSnackBar(
                'Please select exact values for History Of Dizziness - Associated With - Occurrence');
          }else if(nervesSystemController.isHistoryOfDizziness.value && nervesSystemController.selectedDizzinessAssociatedWithOptions.contains('Other') && nervesSystemController.otherDizzinessAssociatedWithOptions.controller.text.isEmpty){
            AppUtils.showSnackBar(
                'Please enter text for History Of Dizziness - Associated With - Other');
          }
          else{
            await nervesSystemController.submitStationGNervous(
                callBack: (success) {
                  if (success ?? false) selectedTabIdx.value = 1;
                });
          }

        }
        break;

      case 1:
        {
          if (respiratorySystemController.isShapeOfChestNormal.value == false &&
              respiratorySystemController.selectedAbNormalChestOption.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Shape Of Chest');
          } else if (respiratorySystemController
                      .isShapeOfChestNormal.value ==
                  false &&
              respiratorySystemController
                  .selectedAbNormalChestOption
                  .contains('Other') &&
              respiratorySystemController
                  .otherAbNormalChestOption.controller.text.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Shape Of Chest - Other');
          }
          else
          if(respiratorySystemController.selectedTypeOfRespiration.value == false &&
              respiratorySystemController.selectedAbNormalChestOption.contains('Other') &&
              respiratorySystemController.otherAbNormalChestOption.controller.text.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Shape Of Chest - Other ');
          }
          else
          if(respiratorySystemController.selectedAdditionalTypeOfRespiration.value =='Abdominal' &&
              respiratorySystemController.selectedTypeAbdominal.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Type Of Respiration - Abdominal ');
          }
          else
          if(respiratorySystemController.selectedAdditionalTypeOfRespiration.contains('Abdominal')&&
              respiratorySystemController. selectedTypeAbdominal.isNotEmpty
              && respiratorySystemController.selectedTypeAbdominal.contains('Other')
          && respiratorySystemController. otherTypeOfAbdominal.controller.text.isEmpty) {
            AppUtils.showSnackBar(
                'Please enter text for Type Of Respiration - Abdominal - Other ');
          }
          else
          if(respiratorySystemController.selectedAdditionalTypeOfRespiration.value =='Thoracic' &&
              respiratorySystemController.selectedTypeThoracic.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Type Of Respiration - Thoracic ');
          }
          else
          if(respiratorySystemController.selectedAdditionalTypeOfRespiration.contains('Thoracic')&&
              respiratorySystemController. selectedTypeThoracic.isNotEmpty
              && respiratorySystemController.selectedTypeThoracic.contains('Other')
              && respiratorySystemController. otherTypeOfThoracic.controller.text.isEmpty) {
            AppUtils.showSnackBar(
                'Please enter text for Type Of Respiration - Thoracic - Other ');
          }
          else
          if(respiratorySystemController.selectedAdditionalTypeOfRespiration.value =='Abdomino-Thoracic' &&
              respiratorySystemController.selectedTypeAbdominio.isEmpty) {
            AppUtils.showSnackBar(
                'Please select exact values for Type Of Respiration - Abdomino-Thoracic ');
          }
          else
          if(respiratorySystemController.selectedAdditionalTypeOfRespiration.contains('Abdomino-Thoracic')&&
              respiratorySystemController. selectedTypeAbdominio.isNotEmpty
              && respiratorySystemController.selectedTypeAbdominio.contains('Other')
              && respiratorySystemController. otherTypeOfAbdomino.controller.text.isEmpty) {
            AppUtils.showSnackBar(
                'Please enter text for Type Of Respiration - Abdomino-Thoracic - Other ');
          }
          else{
          await respiratorySystemController.updateRespiratorySystem(
              callBack: (success) {
                if (success ?? false) selectedTabIdx.value = 2;
              });
        }}
        break;
      case 2:
        {
          if(rlcontroller.isRightBreathSoundNormal.value == false &&
              rlcontroller.selectedRightAbNormalBreathSound.isEmpty)
          {
          AppUtils.showSnackBar(
          'Please select exact values for  Abnormal Breath Sound');
          }
          else
          if(rlcontroller.isRightBreathSoundNormal.value == false &&
              rlcontroller.selectedRightAbNormalBreathSound.contains('Apical')&&
              rlcontroller.selectedRightBreathSoundApicalList.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Abnormal Breath Sound - Apical');
          }
          else
          if(rlcontroller.isRightBreathSoundNormal.value == false &&
              rlcontroller.selectedRightAbNormalBreathSound.contains('Mid Zone')&&
              rlcontroller.selectedRightBreathSoundMidZoneList.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Abnormal Breath Sound - Mid Zone');
          }
          else
          if(rlcontroller.isRightBreathSoundNormal.value == false &&
              rlcontroller.selectedRightAbNormalBreathSound.contains('Basal')&&
              rlcontroller.selectedRightBreathSoundBasalList.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Abnormal Breath Sound - Basal in ');
          }
          else
          if(rlcontroller.isRightBreathSoundNormal.value == false &&
              rlcontroller.selectedRightAbNormalBreathSound.contains('Sub Scapular')&&
              rlcontroller.selectedRightBreathSoundSubScapularList.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Abnormal Breath Sound - Sub Scapular');
          }
          else
          if(rlcontroller.isRightBreathSoundNormal.value == false &&
              rlcontroller.selectedRightAbNormalBreathSound.contains('Diffuse')&&
              rlcontroller.selectedRightBreathSoundDiffuseList.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Abnormal Breath Sound - Diffuse');
          }
          else
          if(rlcontroller.isRightRalesAbsent.value == false && rlcontroller.selectedRightPresentRales.isEmpty )
          {
            AppUtils.showSnackBar(
                'Please select exact values for Rales/Crepts');
          }
          else
          if(rlcontroller.isRightRalesAbsent.value == false && rlcontroller.selectedRightPresentRales.isNotEmpty
              && rlcontroller.selectedRightPresentRales.contains('Apical') && rlcontroller.selectedRightRalesApicalList
              .isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Rales/Crepts Present - Apical in');
          }
          else
          if(rlcontroller.isRightRalesAbsent.value == false && rlcontroller.selectedRightPresentRales.isNotEmpty
              && rlcontroller.selectedRightPresentRales.contains('Mid Zone') && rlcontroller.selectedRightRalesMidZoneList
              .isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Rales/Crepts Present - Mid Zone');
          }
          else
          if(rlcontroller.isRightRalesAbsent.value == false && rlcontroller.selectedRightPresentRales.isNotEmpty
              && rlcontroller.selectedRightPresentRales.contains('Basal') && rlcontroller.selectedRightRalesBasalList
              .isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Rales/Crepts Present - Basal');
          }
          else
          if(rlcontroller.isRightRalesAbsent.value == false && rlcontroller.selectedRightPresentRales.isNotEmpty
              && rlcontroller.selectedRightPresentRales.contains('Sub Scapular') && rlcontroller.selectedRightRalesSubScapularList
              .isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Rales/Crepts Present -  Sub Scapular');
          }
          else
          if(rlcontroller.isRightRalesAbsent.value == false && rlcontroller.selectedRightPresentRales.isNotEmpty
              && rlcontroller.selectedRightPresentRales.contains('Diffuse') && rlcontroller.selectedRightRalesDiffuseList
              .isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Rales/Crepts Present -  Diffuse');
          }
          else
          if(rlcontroller.isRightRhonchiAbsent.value == false && rlcontroller.selectedRightRhonchiPresentList.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Right Rhonchi Present');
          }
          else
          if(rlcontroller.isRightAddedSoundAbsent.value == false && rlcontroller.addedSoundRightPresentDescription.controller.text.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please enter text in  AddedSound Present');
          }
          else
          if(rlcontroller.isRightZoneOfConcernAbsent.value == false && rlcontroller.selectedRightPresentZoneOfConcern.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Zone Of Concern ');
          }
          else

          if(rlcontroller.isLeftBreathSoundNormal.value == false &&
              rlcontroller.selectedLeftAbNormalBreathSound.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Abnormal Breath Sound');
          }
          else
          if(rlcontroller.isLeftBreathSoundNormal.value == false &&
              rlcontroller.selectedLeftAbNormalBreathSound.contains('Apical')&&
              rlcontroller.selectedLeftBreathSoundApicalList.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Abnormal Breath Sound -  Apical');
          }
          else
          if(rlcontroller.isLeftBreathSoundNormal.value == false &&
              rlcontroller.selectedLeftAbNormalBreathSound.contains('Mid Zone')&&
              rlcontroller.selectedLeftBreathSoundMidZoneList.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Abnormal Breath Sound -  Mid Zone');
          }
          else
          if(rlcontroller.isLeftBreathSoundNormal.value == false &&
              rlcontroller.selectedLeftAbNormalBreathSound.contains('Basal')&&
              rlcontroller.selectedLeftBreathSoundBasalList.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Abnormal Breath Sound - Basal');
          }
          else
          if(rlcontroller.isLeftBreathSoundNormal.value == false &&
              rlcontroller.selectedLeftAbNormalBreathSound.contains('Sub Scapular')&&
              rlcontroller.selectedLeftBreathSoundSubScapularList.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Abnormal Breath Sound -  Sub Scapular');
          }
          else
          if(rlcontroller.isLeftBreathSoundNormal.value == false &&
              rlcontroller.selectedLeftAbNormalBreathSound.contains('Diffuse')&&
              rlcontroller.selectedLeftBreathSoundDiffuseList.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Abnormal Breath Sound - Diffuse');
          }
          else
          if(rlcontroller.isLeftRalesAbsent.value == false && rlcontroller.selectedLeftPresentRales.isEmpty )
          {
            AppUtils.showSnackBar(
                'Please select exact values for Rales/Crepts');
          }
          else
          if(rlcontroller.isLeftRalesAbsent.value == false && rlcontroller.selectedLeftPresentRales.isNotEmpty
              && rlcontroller.selectedLeftPresentRales.contains('Apical') && rlcontroller.selectedLeftRalesApicalList
              .isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Rales/Crepts Present - Apical');
          }
          else
          if(rlcontroller.isLeftRalesAbsent.value == false && rlcontroller.selectedLeftPresentRales.isNotEmpty
              && rlcontroller.selectedLeftPresentRales.contains('Mid Zone') && rlcontroller.selectedLeftRalesMidZoneList
              .isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Mid Zone - Rales/Crepts Present');
          }
          else
          if(rlcontroller.isLeftRalesAbsent.value == false && rlcontroller.selectedLeftPresentRales.isNotEmpty
              && rlcontroller.selectedLeftPresentRales.contains('Basal') && rlcontroller.selectedLeftRalesBasalList
              .isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Basal - Rales/Crepts Present');
          }
          else
          if(rlcontroller.isLeftRalesAbsent.value == false && rlcontroller.selectedLeftPresentRales.isNotEmpty
              && rlcontroller.selectedLeftPresentRales.contains('Sub Scapular') && rlcontroller.selectedLeftRalesSubScapularList
              .isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Rales/Crepts Present - Sub Scapular in');
          }
          else
          if(rlcontroller.isLeftRalesAbsent.value == false && rlcontroller.selectedLeftPresentRales.isNotEmpty
              && rlcontroller.selectedLeftPresentRales.contains('Diffuse') && rlcontroller.selectedLeftRalesDiffuseList
              .isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for  Rales/Crepts Present - Diffuse');
          }
          else
          if(rlcontroller.isLeftRhonchiAbsent.value == false && rlcontroller.selectedLeftRhonchiPresentList.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Left Rhonchi Present');
          }
          else
          if(rlcontroller.isLeftAddedSoundAbsent.value == false && rlcontroller.addedSoundLeftPresentDescription.controller.text.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please enter text in Added Sound Present');
          }
          else
          if(rlcontroller.isLeftZoneOfConcernAbsent.value == false && rlcontroller.selectedLeftPresentZoneOfConcern.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact values for Zone Of Concern ');
          }
           else{
          await rlcontroller.updateRightLung(callBack: (success) {
            if (success ?? false) {
              selectedTabIdx.value = 3;
            }
          });
        }}
        break;
      case 3:
        if (cardioVascularSystemsController.isSuprasternalPulsationsAbsent
            .value == false &&
            cardioVascularSystemsController.selectedSuprasternalPresentOption.isEmpty) {
          AppUtils.showSnackBar(
              'Please select exact values for Suprasternal Present');
        }
        else
        if (cardioVascularSystemsController.isPeripheralRadialNormal
            .value == false &&
            cardioVascularSystemsController.selectedPeripheralRadialAbnormal.isEmpty) {
          AppUtils.showSnackBar(
              'Please select exact values for Peripheral Pulsations - Radial - Abnormal');
        }
        else
        if (cardioVascularSystemsController.isPeripheralDorsalisNormal
            .value == false &&
            cardioVascularSystemsController.selectedPeripheralDorsalisAbnormal.isEmpty) {
          AppUtils.showSnackBar(
              'Please select exact values for Peripheral Pulsations - Dorsalis Pedis - Abnormal');
        }
        else
        if (cardioVascularSystemsController.isMurmurAbsent.value == false &&
            cardioVascularSystemsController.selectedMurmurPresentOption.isEmpty) {
          AppUtils.showSnackBar(
              'Please select exact values for Murmur - Present');
        }
        else
        if (cardioVascularSystemsController.isMurmurAbsent.value == false &&
            cardioVascularSystemsController.selectedMurmurPresentOption.isNotEmpty
             && cardioVascularSystemsController.otherMurmurPresent.controller.text.isEmpty) {
          AppUtils.showSnackBar(
              'Please enter text for Murmur - Present - Other');
        }
        else
        if (cardioVascularSystemsController.isClickAbsent.value == false &&
            cardioVascularSystemsController.clickPosition.controller.text.isEmpty) {
          AppUtils.showSnackBar(
              'Please enter text for Click - Position ');
        }
        else
        if (cardioVascularSystemsController.isApexBeatNormal.value == false &&
            cardioVascularSystemsController.apexBeatPosition.controller.text.isEmpty) {
          AppUtils.showSnackBar(
              'Please enter text for Apex Beat - Position ');
        }
        else
        {
          await cardioVascularSystemsController.updateCardioVascularSystem(
              callBack: (success) {
            if (success ?? false) selectedTabIdx.value = 4;
          });
        }

        break;
      case 4:
        {
          if(!alimentaryAndUrinaryController.isRightHypochondriumPain.value && alimentaryAndUrinaryController.upperPainRightHypochondrium.value.toInt() == 0){
            AppUtils.showSnackBar(
                'Please select exact values for Right Hypochondrium - Pain - Yes');
          }else if(!alimentaryAndUrinaryController.isRightHypochondriumTenderness.value && alimentaryAndUrinaryController.selectedRightHypoTenderness.isEmpty){
            AppUtils.showSnackBar(
                'Please select exact values for Right Hypochondrium - Tenderness - Present');
          }else if(!alimentaryAndUrinaryController.isRightHypoSwelling.value && alimentaryAndUrinaryController.rightHypoSwellingDescription.controller.text.isEmpty){
            AppUtils.showSnackBar(
                'Please enter text for Right Hypochondrium - Swelling/Lumps - Present - Description');
          }
          else if(!alimentaryAndUrinaryController.isRightHypoSwelling.value && alimentaryAndUrinaryController.rightHypoSwellingSize.controller.text.isEmpty){
            AppUtils.showSnackBar(
                'Please enter text for Right Hypochondrium - Swelling/Lumps - Present - Size');
          }else if(!alimentaryAndUrinaryController.isRightHypoGall.value && alimentaryAndUrinaryController.upperGallPainRightHypochondrium.value.toInt() == 0){
            AppUtils.showSnackBar(
                'Please select exact values for Right Hypochondrium - Gall Baldder - Tender');
          }else if(!alimentaryAndUrinaryController.isRightLumberPain.value && alimentaryAndUrinaryController.upperPainRightLumber.value.toInt() == 0){
            AppUtils.showSnackBar(
                'Please select exact values for Right Lumbar - Pain - Yes');
          }else if(!alimentaryAndUrinaryController.isRightLumberTenderness.value && alimentaryAndUrinaryController.selectedRightLumberTenderness.isEmpty){
            AppUtils.showSnackBar(
                'Please select exact values for Right Lumbar - Tenderness - Present');
          }else if(!alimentaryAndUrinaryController.isRightLumberSwelling.value && alimentaryAndUrinaryController.rightLumberSwellingDescription.controller.text.isEmpty){
            AppUtils.showSnackBar(
                'Please enter text for Right Lumbar - Swelling/Lumps - Present - Description');
          }
          else if(!alimentaryAndUrinaryController.isRightLumberSwelling.value && alimentaryAndUrinaryController.rightLumberSwellingSize.controller.text.isEmpty){
            AppUtils.showSnackBar(
                'Please enter text for Right Lumbar - Swelling/Lumps - Present - Size');
          }else if(!alimentaryAndUrinaryController.isRightKidney.value && alimentaryAndUrinaryController.selectedRightKidney.isEmpty){
            AppUtils.showSnackBar(
                'Please select exact values for Right Lumbar - Right Kidney - Palpable');
          }else if(!alimentaryAndUrinaryController.isRightIliacPain.value && alimentaryAndUrinaryController.upperPainRightIliac.value.toInt() == 0){
            AppUtils.showSnackBar(
                'Please select exact values for Right Iliac - Pain - Yes');
          }else if(!alimentaryAndUrinaryController.isRightIliacBurneys.value && alimentaryAndUrinaryController.upperBurneysRightIliac.value.toInt() == 0){
            AppUtils.showSnackBar(
                "Please select exact values for Right Iliac - Mc Burney's point - Tender");
          }
          else if(!alimentaryAndUrinaryController.isRightIliacTenderness.value && alimentaryAndUrinaryController.selectedRightIliacTenderness.isEmpty){
            AppUtils.showSnackBar(
                'Please select exact values for Right Iliac - Tenderness - Present');
          }else if(!alimentaryAndUrinaryController.isRightIliacSwelling.value && alimentaryAndUrinaryController.rightIliacSwellingDescription.controller.text.isEmpty){
            AppUtils.showSnackBar(
                'Please enter text for Right Iliac - Swelling/Lumps - Present - Description');
          }
          else if(!alimentaryAndUrinaryController.isRightIliacSwelling.value && alimentaryAndUrinaryController.rightIliacSwellingSize.controller.text.isEmpty){
            AppUtils.showSnackBar(
                'Please enter text for Right Iliac - Swelling/Lumps - Present - Size');
          }else if(!alimentaryAndUrinaryController.isEpigastricPain.value && alimentaryAndUrinaryController.upperEpigastric.value.toInt() == 0){
            AppUtils.showSnackBar(
                'Please select exact values for Epigastric - Pain - Yes');
          }else if(alimentaryAndUrinaryController.selectedEpigastricTenderness.value=='Present' && alimentaryAndUrinaryController.selectedEpigastricPresentTenderness.isEmpty){
            AppUtils.showSnackBar(
                'Please select exact values for Epigastric - Tenderness - Present');
          }else if(alimentaryAndUrinaryController.selectedEpigastricTenderness.value=='Present Rebound' && alimentaryAndUrinaryController.selectedEpigastricPresentReTenderness.isEmpty){
            AppUtils.showSnackBar(
                'Please select exact values for Epigastric - Tenderness - Present Rebound');
          }else if(!alimentaryAndUrinaryController.isEpigastricSwelling.value && alimentaryAndUrinaryController.epigastricSwellingDescription.controller.text.isEmpty){
            AppUtils.showSnackBar(
                'Please enter text for Epigastric - Swelling/Lumps - Present - Description');
          }
          else if(!alimentaryAndUrinaryController.isEpigastricSwelling.value && alimentaryAndUrinaryController.epigastricSwellingSize.controller.text.isEmpty){
            AppUtils.showSnackBar(
                'Please enter text for Epigastric - Swelling/Lumps - Present - Size');
          }else if(!alimentaryAndUrinaryController.isUmbilicalPain.value && alimentaryAndUrinaryController.upperUmbilical.value.toInt() == 0){
            AppUtils.showSnackBar(
                'Please select exact values for Umbilical - Pain - Yes');
          }else if(alimentaryAndUrinaryController.selectedRightUmbilicalTenderness.value=='Present' && alimentaryAndUrinaryController.selectedUmbilicalPresentTenderness.isEmpty){
            AppUtils.showSnackBar(
                'Please select exact values for Umbilical - Tenderness - Present');
          }else if(alimentaryAndUrinaryController.selectedRightUmbilicalTenderness.value=='Present Rebound' && alimentaryAndUrinaryController.selectedUmbilicalPresentReTenderness.isEmpty){
            AppUtils.showSnackBar(
                'Please select exact values for Umbilical - Tenderness - Present Rebound');
          }else if(!alimentaryAndUrinaryController.isUmbilicalSwelling.value && alimentaryAndUrinaryController.umbilicalSwellingDescription.controller.text.isEmpty){
            AppUtils.showSnackBar(
                'Please enter text for Umbilical - Swelling/Lumps - Present - Description');
          }
          else if(!alimentaryAndUrinaryController.isUmbilicalSwelling.value && alimentaryAndUrinaryController.umbilicalSwellingSize.controller.text.isEmpty){
            AppUtils.showSnackBar(
                'Please enter text for Umbilical - Swelling/Lumps - Present - Size');
          }else if(!alimentaryAndUrinaryController.isSuprapubicPain.value && alimentaryAndUrinaryController.upperSuprapubic.value.toInt() == 0){
            AppUtils.showSnackBar(
                'Please select exact values for Suprapubic - Pain - Yes');
          }else if(alimentaryAndUrinaryController.selectedSuprapubicTenderness.value=='Present' && alimentaryAndUrinaryController.selectedSuprapubicPresentTenderness.isEmpty){
            AppUtils.showSnackBar(
                'Please select exact values for Suprapubic - Tenderness - Present');
          }else if(alimentaryAndUrinaryController.selectedSuprapubicTenderness.value=='Present Rebound' && alimentaryAndUrinaryController.selectedSuprapubicPresentReTenderness.isEmpty){
            AppUtils.showSnackBar(
                'Please select exact values for Suprapubic - Tenderness - Present Rebound');
          }else if(!alimentaryAndUrinaryController.isSuprapubicSwelling.value && alimentaryAndUrinaryController.suprapubicSwellingDescription.controller.text.isEmpty){
            AppUtils.showSnackBar(
                'Please enter text for Suprapubic - Swelling/Lumps - Present - Description');
          } else if(!alimentaryAndUrinaryController.isSuprapubicSwelling.value && alimentaryAndUrinaryController.suprapubicSwellingSize.controller.text.isEmpty){
            AppUtils.showSnackBar(
                'Please enter text for Suprapubic - Swelling/Lumps - Present - Size');
          }else if(StudentInfo.calculateAge() > 10 &&
              StudentInfo.getGender() == 'Female' && !alimentaryAndUrinaryController.isSuprapubicUterus.value &&
              alimentaryAndUrinaryController.selectedUterus.isEmpty){
            AppUtils.showSnackBar(
                'Please select exact values for Suprapubic - Uterus - Palpable');
          }else if(!alimentaryAndUrinaryController.isLeftHypochondriumPain.value && alimentaryAndUrinaryController.upperPainLeftHypochondrium.value.toInt() == 0){
            AppUtils.showSnackBar(
                'Please select exact values for Left Hypochondrium - Pain - Yes');
          }else if(!alimentaryAndUrinaryController.isLeftHypochondriumTenderness.value && alimentaryAndUrinaryController.selectedLeftHypoPresentTenderness.isEmpty){
            AppUtils.showSnackBar(
                'Please select exact values for Left Hypochondrium - Tenderness - Present');
          }
          else if(!alimentaryAndUrinaryController.isLeftHypoSwelling.value && alimentaryAndUrinaryController.leftHypoSwellingDescription.controller.text.isEmpty){
              AppUtils.showSnackBar(
              'Please enter text for Left Hypochondrium - Swelling/Lumps - Present - Description');
          } else if(!alimentaryAndUrinaryController.isLeftHypoSwelling.value && alimentaryAndUrinaryController.leftHypoSwellingSize.controller.text.isEmpty){
              AppUtils.showSnackBar(
              'Please enter text for Left Hypochondrium - Swelling/Lumps - Present - Size');
          }else if(!alimentaryAndUrinaryController.isLeftLumberPain.value && alimentaryAndUrinaryController.upperPainLeftLumber.value.toInt() == 0){
              AppUtils.showSnackBar(
              'Please select exact values for Left Lumbar - Pain - Yes');
          }else if(!alimentaryAndUrinaryController.isLeftLumberTenderness.value && alimentaryAndUrinaryController.selectedLeftLumberTenderness.isEmpty){
              AppUtils.showSnackBar(
              'Please select exact values for Left Lumbar - Tenderness - Present');
          }else if(!alimentaryAndUrinaryController.isLeftLumberSwelling.value && alimentaryAndUrinaryController.leftLumberSwellingDescription.controller.text.isEmpty){
              AppUtils.showSnackBar(
              'Please enter text for Left Lumbar - Swelling/Lumps - Present - Description');
          }
          else if(!alimentaryAndUrinaryController.isLeftLumberSwelling.value && alimentaryAndUrinaryController.leftLumberSwellingSize.controller.text.isEmpty){
              AppUtils.showSnackBar(
              'Please enter text for Left Lumbar - Swelling/Lumps - Present - Size');
          }else if(!alimentaryAndUrinaryController.isLeftKidney.value && alimentaryAndUrinaryController.selectedLeftKidney.isEmpty){
              AppUtils.showSnackBar(
              'Please select exact values for Left Lumbar - Left Kidney - Palpable');
          }else if(!alimentaryAndUrinaryController.isLeftIliacPain.value && alimentaryAndUrinaryController.upperPainLeftIliac.value.toInt() == 0){
              AppUtils.showSnackBar(
              'Please select exact values for Left Iliac - Pain - Yes');
          }else if(!alimentaryAndUrinaryController.isLeftIliacTenderness.value && alimentaryAndUrinaryController.selectedLeftIliacTenderness.isEmpty){
              AppUtils.showSnackBar(
              'Please select exact values for Left Iliac - Tenderness - Present');
          }else if(!alimentaryAndUrinaryController.isLeftIliacSwelling.value && alimentaryAndUrinaryController.leftIliacSwellingDescription.controller.text.isEmpty){
              AppUtils.showSnackBar(
              'Please enter text for Left Iliac - Swelling/Lumps - Present - Description');
          }
          else if(!alimentaryAndUrinaryController.isLeftIliacSwelling.value && alimentaryAndUrinaryController.leftIliacSwellingSize.controller.text.isEmpty){
              AppUtils.showSnackBar(
              'Please enter text for Left Iliac - Swelling/Lumps - Present - Size');
          }else if(!alimentaryAndUrinaryController.isHernia.value && alimentaryAndUrinaryController.selectedHerniaPresent.isEmpty){
              AppUtils.showSnackBar(
              'Please select exact values for Hernia - Present');
              }
          else if(!alimentaryAndUrinaryController.isUrinaryBladder.value && alimentaryAndUrinaryController.selectedUrinaryBladderPalpable.isEmpty){
              AppUtils.showSnackBar(
              'Please select exact values for Urinary Bladder - Palpable');
          } else{
              await alimentaryAndUrinaryController.updateAlimentaryAndUrinarySystem(
              callBack: (success) {
                if (success ?? false) {
              if (StudentInfo.getGender() == 'Male') {
              if (StudentInfo.calculateAge() < 5) {
              selectedTabIdx.value = 7;
              } else {
              selectedTabIdx.value = 6;
              }
              } else {
              if (StudentInfo.getGender() == 'Female' &&
              StudentInfo.calculateAge() < 5) {
              selectedTabIdx.value = 7;
              } else {
              selectedTabIdx.value = 5;
              }
              }
              }
              });
              }

              }
              break;
      case 5:
        {


          if(pubertalAssessmentGirlsController.isMenarche.value == false
              &&  pubertalAssessmentGirlsController.ageOfMenarche.controller.text.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please enter text for Age of Menarche');
          }
          else
          if(pubertalAssessmentGirlsController.isMenarche.value == false
              &&  pubertalAssessmentGirlsController.lMPdate.controller.text.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please enter text for LMP Date');
          }
          else///
          if(pubertalAssessmentGirlsController.isMenarche.value == false &&
              pubertalAssessmentGirlsController.isPain.value == false
              &&  pubertalAssessmentGirlsController.selectedPainYes.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact value for Pain in other body parts during menses');
          }
          else
          if(pubertalAssessmentGirlsController.isMenarche.value == false &&
              pubertalAssessmentGirlsController.isPain.value == false
              &&  pubertalAssessmentGirlsController.selectedPainYes.isNotEmpty
            && pubertalAssessmentGirlsController.otherPainYes.controller.text.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please enter text for  Pain in other body parts during menses - Other');
          }
          else

          if(pubertalAssessmentGirlsController.isHaveYouExperienced.value == true
              &&  pubertalAssessmentGirlsController.selectedHaveYouExperienced.isEmpty )
          {
            AppUtils.showSnackBar(
                'Please selet exact value for Experienced A Change in Behavioour ');
          }
          else
          if(pubertalAssessmentGirlsController.isHaveYouExperienced.value == true
              &&  pubertalAssessmentGirlsController.selectedHaveYouExperienced.isNotEmpty
              && pubertalAssessmentGirlsController.selectedHaveYouExperienced.contains('Quiet and Withdrawn')
              && pubertalAssessmentGirlsController.selectedQuiet.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please selet exact value for Experienced A Change in Behavioour - Quiet and Withdrawn');
          }
          else
          if(pubertalAssessmentGirlsController.isHaveYouExperienced.value == true
              &&  pubertalAssessmentGirlsController.selectedHaveYouExperienced.isNotEmpty
              && pubertalAssessmentGirlsController.selectedHaveYouExperienced.contains('Outgoing')
              && pubertalAssessmentGirlsController.selectedOutgoing.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please selet exact value for Experienced A Change in Behavioour - Outgoing');
          }
          else
          if(pubertalAssessmentGirlsController.isHaveYouExperienced.value == true
              &&  pubertalAssessmentGirlsController.selectedHaveYouExperienced.isNotEmpty
              && pubertalAssessmentGirlsController.selectedHaveYouExperienced.contains('Aggressive')
              && pubertalAssessmentGirlsController.selectedAggressive.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please selet exact value for Experienced A Change in Behavioour - Aggressive');
          }
          else
          if(pubertalAssessmentGirlsController.isHaveYouExperienced.value == true
              &&  pubertalAssessmentGirlsController.selectedHaveYouExperienced.isNotEmpty
              && pubertalAssessmentGirlsController.selectedHaveYouExperienced.contains('Bold and Daring')
              && pubertalAssessmentGirlsController.selectedBold.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please selet exact value for Experienced A Change in Behavioour - Bold and Daring');
          }
          else
          if(pubertalAssessmentGirlsController.isHaveYouExperienced.value == true
              &&  pubertalAssessmentGirlsController.selectedHaveYouExperienced.isNotEmpty
              && pubertalAssessmentGirlsController.selectedHaveYouExperienced.contains('Careless')
              && pubertalAssessmentGirlsController.selectedCareless.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please selet exact value for Experienced A Change in Behavioour - Careless');
          }
          else
    if(pubertalAssessmentGirlsController.isAnyAbnormalFindings.value == true
&& pubertalAssessmentGirlsController.anyAbnormalFindingsWrapper.controller.text.isEmpty)
    {
      AppUtils.showSnackBar(
          'Please enter text for Any Abnormal finding');
    }
    else{
          await pubertalAssessmentGirlsController.updatePubertalAssessmentGirls(
              callBack: (success) {
            if (success ?? false) {
              if (StudentInfo.getGender() == 'Female') {
                selectedTabIdx.value = 7;
              } else {
                selectedTabIdx.value = 6;
              }
            }
          });
        }}
        break;
      case 6:
        {

          if(pubertalAssessmentBoysController.isHaveYouExperiencedBoys.value == true
         &&  pubertalAssessmentBoysController.selectedHaveYouExperiencedBoys.isEmpty )
          {
            AppUtils.showSnackBar(
                'Please selet exact value for Experienced A Change in Behavioour ');
          }
          else
          if(pubertalAssessmentBoysController.isHaveYouExperiencedBoys.value == true
              &&  pubertalAssessmentBoysController.selectedHaveYouExperiencedBoys.isNotEmpty 
          && pubertalAssessmentBoysController.selectedHaveYouExperiencedBoys.contains('Quiet and Withdrawn')
          && pubertalAssessmentBoysController.selectedQuietBoys.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please selet exact value for Experienced A Change in Behavioour - Quiet and Withdrawn');
          }
          else
          if(pubertalAssessmentBoysController.isHaveYouExperiencedBoys.value == true
              &&  pubertalAssessmentBoysController.selectedHaveYouExperiencedBoys.isNotEmpty
              && pubertalAssessmentBoysController.selectedHaveYouExperiencedBoys.contains('Outgoing')
              && pubertalAssessmentBoysController.selectedOutgoingBoys.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please selet exact value for Experienced A Change in Behavioour - Outgoing');
          }
          else
          if(pubertalAssessmentBoysController.isHaveYouExperiencedBoys.value == true
              &&  pubertalAssessmentBoysController.selectedHaveYouExperiencedBoys.isNotEmpty
              && pubertalAssessmentBoysController.selectedHaveYouExperiencedBoys.contains('Aggressive')
              && pubertalAssessmentBoysController.selectedAggressiveBoys.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please selet exact value for Experienced A Change in Behavioour - Aggressive');
          }
          else
          if(pubertalAssessmentBoysController.isHaveYouExperiencedBoys.value == true
              &&  pubertalAssessmentBoysController.selectedHaveYouExperiencedBoys.isNotEmpty
              && pubertalAssessmentBoysController.selectedHaveYouExperiencedBoys.contains('Bold and Daring')
              && pubertalAssessmentBoysController.selectedBoldBoys.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please selet exact value for Experienced A Change in Behavioour - Bold and Daring');
          }
          else
          if(pubertalAssessmentBoysController.isHaveYouExperiencedBoys.value == true
              &&  pubertalAssessmentBoysController.selectedHaveYouExperiencedBoys.isNotEmpty
              && pubertalAssessmentBoysController.selectedHaveYouExperiencedBoys.contains('Careless')
              && pubertalAssessmentBoysController.selectedCarelessBoys.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please selet exact value for Experienced A Change in Behavioour - Careless');
          }
          else
          if(pubertalAssessmentBoysController.isAnyAbnormalFindingsBoys.value == true
              &&  pubertalAssessmentBoysController.anyAbnormalFindingsWrapperBoys.controller.text.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please enter text for Any Abnormal finding');
          }
          else
{
          await pubertalAssessmentBoysController.updatePubertalAssessmentBoys(
              callBack: (success) {
            if (success ?? false) selectedTabIdx.value = 7;
          });
        }}
        break;
      case 7:
        {
          if(homcontroller.isMedication.value == true
              &&  homcontroller.selectedMedicationReferral.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please select exact value for Medication');
          }
          else
          if(homcontroller.isMedication.value == true
              && homcontroller.nameOfMedicationTextList.isEmpty)
          {
            AppUtils.showSnackBar(
                'Please enter at least one name of medication');
          }
          else{
          await homcontroller.updateHistoryOfMedication(callBack: (success) {
            if (success ?? false) selectedTabIdx.value = 8;
          });
        }}
        break;
      case 8:

        if (oobcontroller.isSpecialistReferralNeeded.value &&
            (oobcontroller.selectedReferralType.isEmpty || oobcontroller.selectedReFlag.isEmpty)) {
          AppUtils.showSnackBar('Please select exact values for Type and Flag');
        } else if (oobcontroller.selectedReferralType.contains('Other') &&
            oobcontroller.otherWrapper.controller.text.isEmpty) {
          AppUtils.showSnackBar(
              'Please enter text for the Specialist Referral Recommended - Type - Other field');
        }else {
          await getStationGetails();
          oobcontroller.updateOtherObservations(callBack: (success) {
            if (success ?? false) selectedTabIdx.value = 8;
          });


          StationGPreviewModel dataValue = StationGPreviewModel(
              centralNervousSystemAlertValue: stationGResponse.value
                  ?.centralNervousSystemAlert ?? '',
              cNSOrientedValue: stationGResponse.value?.cNSOriented ?? '',
              cNSListensValue: stationGResponse.value?.cNSListens ?? '',
              cNSUnderstandsValue: stationGResponse.value?.cNSUnderstands ?? '',
              cNSRespondsValue: stationGResponse.value?.cNSResponds ?? '',
              cNSSpeechValue: stationGResponse.value?.cNSSpeech ?? '',
              cNSSpeechAbnormalValue: stationGResponse.value
                  ?.cNSSpeechAbnormal ?? '',
              cNSSpeechAbnormalOtherValue: stationGResponse.value
                  ?.cNSSpeechAbnormalOther ?? '',
              cNSHistoryOfHeadacheValue: stationGResponse.value
                  ?.cNSHistoryOfHeadache ?? '',
              cNSHistoryOfHeadacheYesFrequencyValue: stationGResponse.value
                  ?.cNSHistoryOfHeadacheYesFrequency ?? '',
              cNSHistoryOfHeadacheYesFrequencyContinuousValue: stationGResponse
                  .value?.cNSHistoryOfHeadacheYesFrequencyContinuous ?? '',
              cNSHistoryOfHeadacheYesAssociatedWithValue: stationGResponse.value
                  ?.cNSHistoryOfHeadacheYesAssociatedWith ?? '',
              cNSHistoryOfHeadacheYesAssociatedWithOccurrenceValue: stationGResponse
                  .value?.cNSHistoryOfHeadacheYesAssociatedWithOccurrence ?? '',
              cNSHistoryOfHeadacheYesAssociatedWithOtherValue: stationGResponse
                  .value?.cNSHistoryOfHeadacheYesAssociatedWithOther ?? '',
              cNSHistoryOfHeadacheYesFromValue: stationGResponse.value
                  ?.cNSHistoryOfHeadacheYesFrom ?? '',
              cNSHistoryOfHeadacheYesDurationValue: stationGResponse.value
                  ?.cNSHistoryOfHeadacheYesDuration ?? '',
              cNSHistoryOfDizzinessValue: stationGResponse.value
                  ?.cNSHistoryOfDizziness ?? '',
              cNSHistoryOfDizzinessYesFrequencyValue: stationGResponse.value
                  ?.cNSHistoryOfDizzinessYesFrequency ?? '',
              cNSHistoryOfDizzinessYesFrequencyContinuousValue: stationGResponse
                  .value?.cNSHistoryOfDizzinessYesFrequencyContinuous ?? '',
              cNSHistoryOfDizzinessYesAssociatedWithValue: stationGResponse
                  .value?.cNSHistoryOfDizzinessYesAssociatedWith ?? '',
              cNSHistoryOfDizzinessYesAssociatedWithOccurrenceValue: stationGResponse
                  .value?.cNSHistoryOfDizzinessYesAssociatedWithOccurrence ??
                  '',
              cNSHistoryOfDizzinessYesAssociatedWithOtherValue: stationGResponse
                  .value?.cNSHistoryOfDizzinessYesAssociatedWithOther ?? '',
              respiratorySystemDoYouFeelBreathlessValue: stationGResponse.value
                  ?.respiratorySystemDoYouFeelBreathless ?? '',
              rSDoYouHaveACoughValue: stationGResponse.value
                  ?.rSDoYouHaveACough ?? '',
              rSShapeOfChestValue: stationGResponse.value?.rSShapeOfChest ?? '',
              rSShapeOfChestAbnormalValue: stationGResponse.value
                  ?.rSShapeOfChestAbnormal ?? '',
              rSShapeOfChestAbnormalOtherValue: stationGResponse.value
                  ?.rSShapeOfChestAbnormalOther ?? '',
              rSTypeOfRespirationValue: stationGResponse.value
                  ?.rSTypeOfRespiration ?? '',
              rSTypeOfRespirationAbdominalValue: stationGResponse.value
                  ?.rSTypeOfRespirationAbdominal ?? '',
              rSTypeOfRespirationAbdominalOtherValue: stationGResponse.value
                  ?.rSTypeOfRespirationAbdominalOther ?? '',
              rSTypeOfRespirationThoracicValue: stationGResponse.value
                  ?.rSTypeOfRespirationThoracic ?? '',
              rSTypeOfRespirationThoracicOtherValue: stationGResponse.value
                  ?.rSTypeOfRespirationThoracicOther ?? '',
              rSTypeOfRespirationAbdominoThoracicValue: stationGResponse.value
                  ?.rSTypeOfRespirationAbdominoThoracic ?? '',
              rSTypeOfRespirationAbdominoThoracicOtherValue: stationGResponse
                  .value?.rSTypeOfRespirationAbdominoThoracicOther ?? '',
              rSTracheaValue: stationGResponse.value?.rSTrachea ?? '',
              rSEvidenceOfTracheostomyValue: stationGResponse.value
                  ?.rSEvidenceOfTracheostomy ?? '',
              rightLungAirEntryNormalValue: stationGResponse.value
                  ?.rightLungAirEntryNormal ?? '',
              rLBreathSoundsValue: stationGResponse.value?.rLBreathSounds ?? '',
              rLBreathSoundsAbnormalValue: stationGResponse.value
                  ?.rLBreathSoundsAbnormal ?? '',
              rLBreathSoundsAbnormalApicalValue: stationGResponse.value
                  ?.rLBreathSoundsAbnormalApical ?? '',
              rLBreathSoundsAbnormalMidZoneValue: stationGResponse.value
                  ?.rLBreathSoundsAbnormalMidZone ?? '',
              rLBreathSoundsAbnormalBasalValue: stationGResponse.value
                  ?.rLBreathSoundsAbnormalBasal ?? '',
              rLBreathSoundsAbnormalSubScapularValue: stationGResponse.value
                  ?.rLBreathSoundsAbnormalSubScapular ?? '',
              rLBreathSoundsAbnormalDiffuseValue: stationGResponse.value
                  ?.rLBreathSoundsAbnormalDiffuse ?? '',
              rLRalesCreptsValue: stationGResponse.value?.rLRalesCrepts ?? '',
              rLRalesCreptsPresentValue: stationGResponse.value
                  ?.rLRalesCreptsPresent ?? '',
              rLRalesCreptsPresentApicalValue: stationGResponse.value
                  ?.rLRalesCreptsPresentApical ?? '',
              rLRalesCreptsPresentApicalFineValue: stationGResponse.value
                  ?.rLRalesCreptsPresentApicalFine ?? '',
              rLRalesCreptsPresentApicalCoarseValue: stationGResponse.value
                  ?.rLRalesCreptsPresentApicalCoarse ?? '',
              rLRalesCreptsPresentMidZoneValue: stationGResponse.value
                  ?.rLRalesCreptsPresentMidZone ?? '',
              rLRalesCreptsPresentMidZoneFineValue: stationGResponse.value
                  ?.rLRalesCreptsPresentMidZoneFine ?? '',
              rLRalesCreptsPresentMidZoneCoarseValue: stationGResponse.value
                  ?.rLRalesCreptsPresentMidZoneCoarse ?? '',
              rLRalesCreptsPresentBasalValue: stationGResponse.value
                  ?.rLRalesCreptsPresentBasal ?? '',
              rLRalesCreptsPresentBasalFineValue: stationGResponse.value
                  ?.rLRalesCreptsPresentBasalFine ?? '',
              rLRalesCreptsPresentBasalCoarseValue: stationGResponse.value
                  ?.rLRalesCreptsPresentBasalCoarse ?? '',
              rLRalesCreptsPresentSubScapularValue: stationGResponse.value
                  ?.rLRalesCreptsPresentSubScapular ?? '',
              rLRalesCreptsPresentSubScapularFineValue: stationGResponse.value
                  ?.rLRalesCreptsPresentSubScapularFine ?? '',
              rLRalesCreptsPresentSubScapularCoarseValue: stationGResponse.value
                  ?.rLRalesCreptsPresentSubScapularCoarse ?? '',
              rLRalesCreptsPresentDiffuseValue: stationGResponse.value
                  ?.rLRalesCreptsPresentDiffuse ?? '',
              rLRalesCreptsPresentDiffuseFineValue: stationGResponse.value
                  ?.rLRalesCreptsPresentDiffuseFine ?? '',
              rLRalesCreptsPresentDiffuseCoarseValue: stationGResponse.value
                  ?.rLRalesCreptsPresentDiffuseCoarse ?? '',
              rLRhonchiWheezingValue: stationGResponse.value
                  ?.rLRhonchiWheezing ?? '',
              rLRhonchiWheezingPresentValue: stationGResponse.value
                  ?.rLRhonchiWheezingPresent ?? '',
              rLAddedSoundsValue: stationGResponse.value?.rLAddedSounds ?? '',
              rLAddedZoneOfConcernValue: stationGResponse.value
                  ?.rLAddedZoneOfConcern ?? '',
              rLAddedZoneOfConcernAbnormalValue: stationGResponse.value
                  ?.rLAddedZoneOfConcernAbnormal ?? '',
              rLAddedSoundsPresentValue: stationGResponse.value
                  ?.rLAddedSoundsPresent ?? '',
              leftLungAirEntryNormalValue: stationGResponse.value
                  ?.leftLungAirEntryNormal ?? '',
              lLBreathSoundsValue: stationGResponse.value?.lLBreathSounds ?? '',
              lLBreathSoundsAbnormalValue: stationGResponse.value
                  ?.lLBreathSoundsAbnormal ?? '',
              lLBreathSoundsAbnormalApicalValue: stationGResponse.value
                  ?.lLBreathSoundsAbnormalApical ?? '',
              lLBreathSoundsAbnormalMidZoneValue: stationGResponse.value
                  ?.lLBreathSoundsAbnormalMidZone ?? '',
              lLBreathSoundsAbnormalBasalValue: stationGResponse.value
                  ?.lLBreathSoundsAbnormalBasal ?? '',
              lLBreathSoundsAbnormalSubScapularValue: stationGResponse.value
                  ?.lLBreathSoundsAbnormalSubScapular ?? '',
              lLBreathSoundsAbnormalDiffuseValue: stationGResponse.value
                  ?.lLBreathSoundsAbnormalDiffuse ?? '',
              lLRalesCreptsValue: stationGResponse.value?.lLRalesCrepts ?? '',
              lLRalesCreptsPresentValue: stationGResponse.value
                  ?.lLRalesCreptsPresent ?? '',
              lLRalesCreptsPresentApicalValue: stationGResponse.value
                  ?.lLRalesCreptsPresentApical ?? '',
              lLRalesCreptsPresentApicalFineValue: stationGResponse.value
                  ?.lLRalesCreptsPresentApicalFine ?? '',
              lLRalesCreptsPresentApicalCoarseValue: stationGResponse.value
                  ?.lLRalesCreptsPresentApicalCoarse ?? '',
              lLRalesCreptsPresentMidZoneValue: stationGResponse.value
                  ?.lLRalesCreptsPresentMidZone ?? '',
              lLRalesCreptsPresentMidZoneFineValue: stationGResponse.value
                  ?.lLRalesCreptsPresentMidZoneFine ?? '',
              lLRalesCreptsPresentMidZoneCoarseValue: stationGResponse.value
                  ?.lLRalesCreptsPresentMidZoneCoarse ?? '',
              lLRalesCreptsPresentBasalValue: stationGResponse.value
                  ?.lLRalesCreptsPresentBasal ?? '',
              lLRalesCreptsPresentBasalFineValue: stationGResponse.value
                  ?.lLRalesCreptsPresentBasalFine ?? '',
              lLRalesCreptsPresentBasalCoarseValue: stationGResponse.value
                  ?.lLRalesCreptsPresentBasalCoarse ?? '',
              lLRalesCreptsPresentSubScapularValue: stationGResponse.value
                  ?.lLRalesCreptsPresentSubScapular ?? '',
              lLRalesCreptsPresentSubScapularFineValue: stationGResponse.value
                  ?.lLRalesCreptsPresentSubScapularFine ?? '',
              lLRalesCreptsPresentSubScapularCoarseValue: stationGResponse.value
                  ?.lLRalesCreptsPresentSubScapularCoarse ?? '',
              lLRalesCreptsPresentDiffuseValue: stationGResponse.value
                  ?.lLRalesCreptsPresentDiffuse ?? '',
              lLRalesCreptsPresentDiffuseFineValue: stationGResponse.value
                  ?.lLRalesCreptsPresentDiffuseFine ?? '',
              lLRalesCreptsPresentDiffuseCoarseValue: stationGResponse.value
                  ?.lLRalesCreptsPresentDiffuseCoarse ?? '',
              lLRhonchiWheezingValue: stationGResponse.value
                  ?.lLRhonchiWheezing ?? '',
              lLRhonchiWheezingPresentValue: stationGResponse.value
                  ?.lLRhonchiWheezingPresent ?? '',
              lLAddedSoundsValue: stationGResponse.value?.lLAddedSounds ?? '',
              lLAddedZoneOfConcernValue: stationGResponse.value
                  ?.lLAddedZoneOfConcern ?? '',
              lLAddedZoneOfConcernAbnormalValue: stationGResponse.value
                  ?.lLAddedZoneOfConcernAbnormal ?? '',
              lLAddedSoundsPresentValue: stationGResponse.value
                  ?.lLAddedSoundsPresent ?? '',
              cardioVascularSystemsDoYouGetPalpitationValue: stationGResponse
                  .value?.cardioVascularSystemsDoYouGetPalpitation ?? '',
              cVSFaintedInHomeSchoolWorkplaceAtAnyTimeValue: stationGResponse
                  .value?.cVSFaintedInHomeSchoolWorkplaceAtAnyTime ?? '',
              cVSJugularPulsationsValue: stationGResponse.value
                  ?.cVSJugularPulsations ?? '',
              cVSJugularPulsationsVisibleValue: stationGResponse.value
                  ?.cVSJugularPulsationsVisible ?? '',
              cVSJugularPulsationsVisibleAbnormalValue: stationGResponse.value
                  ?.cVSJugularPulsationsVisibleAbnormal ?? '',
              cVSSuprasternalPulsationsValue: stationGResponse.value
                  ?.cVSSuprasternalPulsations ?? '',
              cVSSuprasternalPulsationsPresentValue: stationGResponse.value
                  ?.cVSSuprasternalPulsationsPresent ?? '',
              cVSPeripheralPulsationsRadialValue: stationGResponse.value
                  ?.cVSPeripheralPulsationsRadial ?? '',
              cVSPeripheralPulsationsRadialPresentValue: stationGResponse.value
                  ?.cVSPeripheralPulsationsRadialPresent ?? '',
              cVSPeripheralPulsationsRadialPresentAbnormalValue: stationGResponse
                  .value?.cVSPeripheralPulsationsRadialPresentAbnormal ?? '',
              cVSPeripheralPulsationsDorsalisPedisValue: stationGResponse.value
                  ?.cVSPeripheralPulsationsDorsalisPedis ?? '',
              cVSPeripheralPulsationsDorsalisPedisPresentValue: stationGResponse
                  .value?.cVSPeripheralPulsationsDorsalisPedisPresent ?? '',
              cVSPeripheralPulsationsDorsalisPedisAbnormalValue: stationGResponse
                  .value?.cVSPeripheralPulsationsDorsalisPedisAbnormal ?? '',
              cVSPeripheralPulsationsOtherAbnormalityValue: stationGResponse
                  .value?.cVSPeripheralPulsationsOtherAbnormality ?? '',
              cvss1Value: stationGResponse.value?.cvss1 ?? '',
              cvss2Value: stationGResponse.value?.cvss2 ?? '',
              cvss3Value: stationGResponse.value?.cvss3 ?? '',
              cVSMurmurValue: stationGResponse.value?.cVSMurmur ?? '',
              cVSMurmurPresentValue: stationGResponse.value?.cVSMurmurPresent ??
                  '',
              cVSMurmurPresentOtherValue: stationGResponse.value
                  ?.cVSMurmurPresentOther ?? '',
              cVSClickValue: stationGResponse.value?.cVSClick ?? '',
              cVSClickPresentPositionValue: stationGResponse.value
                  ?.cVSClickPresentPosition ?? '',
              cVSApexBeatValue: stationGResponse.value?.cVSApexBeat ?? '',
              cVSApexBeatPresentDisplacedValue: stationGResponse.value
                  ?.cVSApexBeatPresentDisplaced ?? '',
              alimentaryAndUrinarySystemDoYouHaveNauseaVomitingValue: stationGResponse
                  .value?.alimentaryAndUrinarySystemDoYouHaveNauseaVomiting ??
                  '',
              aUSDoYouHavePainInYourAbdomenValue: stationGResponse.value
                  ?.aUSDoYouHavePainInYourAbdomen ?? '',
              aUSDoYouFeelBurningWhenYouPassUrineValue: stationGResponse.value
                  ?.aUSDoYouFeelBurningWhenYouPassUrine ?? '',
              aUSCleftLipValue: stationGResponse.value?.aUSCleftLip ?? '',
              aUSCleftLipPresentValue: stationGResponse.value
                  ?.aUSCleftLipPresent ?? '',
              aUSCleftPalateValue: stationGResponse.value?.aUSCleftPalate ?? '',
              aUSCleftPalatePresentValue: stationGResponse.value
                  ?.aUSCleftPalatePresent ?? '',
              aUSAbdominalDistensionValue: stationGResponse.value
                  ?.aUSAbdominalDistension ?? '',
              aUSExaggerateBowelSoundsValue: stationGResponse.value
                  ?.aUSExaggerateBowelSounds ?? '',
              aUSGuardingValue: stationGResponse.value?.aUSGuarding ?? '',
              aUSRigidityValue: stationGResponse.value?.aUSRigidity ?? '',
              aUSRightHypochondriumPainValue: stationGResponse.value
                  ?.aUSRightHypochondriumPain ?? '',
              aUSRHPainYesPainScoreValue: stationGResponse.value
                  ?.aUSRHPainYesPainScore ?? 0,
              aUSRHTendernessValue: stationGResponse.value?.aUSRHTenderness ??
                  '',
              aUSRHTendernessPresentValue: stationGResponse.value
                  ?.aUSRHTendernessPresent ?? '',
              aUSRHSwellingLumpsValue: stationGResponse.value
                  ?.aUSRHSwellingLumps ?? '',
              aUSRHSwellingLumpsPresentDescriptionValue: stationGResponse.value
                  ?.aUSRHSwellingLumpsPresentDescription ?? '',
              aUSRHSwellingLumpsPresentSizeValue: stationGResponse.value
                  ?.aUSRHSwellingLumpsPresentSize ?? 0,
              aUSRHSwellingLumpsPresentTextureValue: stationGResponse.value
                  ?.aUSRHSwellingLumpsPresentTexture ?? '',
              aUSRHLiverValue: stationGResponse.value?.aUSRHLiver ?? '',
              aUSRHLiverPalpableValue: stationGResponse.value
                  ?.aUSRHLiverPalpable ?? '',
              aUSRHGallBladderValue: stationGResponse.value?.aUSRHGallBladder ??
                  '',
              aUSRHGallBladderTenderValue: stationGResponse.value
                  ?.aUSRHGallBladderTender ?? 0,
              aUSRightLumbarPainValue: stationGResponse.value
                  ?.aUSRightLumbarPain ?? '',
              aUSRLPainYesPainScoreValue: stationGResponse.value
                  ?.aUSRLPainYesPainScore ?? 0,
              aUSRLTendernessValue: stationGResponse.value?.aUSRLTenderness ??
                  '',
              aUSRLTendernessPresentValue: stationGResponse.value
                  ?.aUSRLTendernessPresent ?? '',
              aUSRLSwellingLumpsValue: stationGResponse.value
                  ?.aUSRLSwellingLumps ?? '',
              aUSRLSwellingLumpsPresentDescriptionValue: stationGResponse.value
                  ?.aUSRLSwellingLumpsPresentDescription ?? '',
              aUSRLSwellingLumpsPresentSizeValue: stationGResponse.value
                  ?.aUSRLSwellingLumpsPresentSize ?? 0,
              aUSRLSwellingLumpsPresentTextureValue: stationGResponse.value
                  ?.aUSRLSwellingLumpsPresentTexture ?? '',
              aUSRLRightKidneyValue: stationGResponse.value?.aUSRLRightKidney ??
                  '',
              aUSRLRightKidneyPalpableValue: stationGResponse.value
                  ?.aUSRLRightKidneyPalpable ?? '',
              aUSRightIliacPainValue: stationGResponse.value
                  ?.aUSRightIliacPain ?? '',
              aUSRIPainYesPainScoreValue: stationGResponse.value
                  ?.aUSRIPainYesPainScore ?? 0,
              ausrimbpValue: stationGResponse.value?.ausrimbp ?? '',
              aUSRIMBPPainScoreValue: stationGResponse.value
                  ?.aUSRIMBPPainScore ?? 0,
              aUSRITendernessValue: stationGResponse.value?.aUSRITenderness ??
                  '',
              aUSRITendernessPresentValue: stationGResponse.value
                  ?.aUSRITendernessPresent ?? '',
              aUSRISwellingLumpsValue: stationGResponse.value
                  ?.aUSRISwellingLumps ?? '',
              aUSRISwellingLumpsPresentDescriptionValue: stationGResponse.value
                  ?.aUSRISwellingLumpsPresentDescription ?? '',
              aUSRISwellingLumpsPresentSizeValue: stationGResponse.value
                  ?.aUSRISwellingLumpsPresentSize ?? 0,
              aUSRISwellingLumpsPresentTextureValue: stationGResponse.value
                  ?.aUSRISwellingLumpsPresentTexture ?? '',
              aUSEpigastricPainValue: stationGResponse.value
                  ?.aUSEpigastricPain ?? '',
              aUSEPainYesPainScoreValue: stationGResponse.value
                  ?.aUSEPainYesPainScore ?? 0,
              aUSETendernessValue: stationGResponse.value?.aUSETenderness ?? '',
              aUSETendernessPresentValue: stationGResponse.value
                  ?.aUSETendernessPresent ?? '',
              aUSETendernessPresentReboundValue: stationGResponse.value
                  ?.aUSETendernessPresentRebound ?? '',
              aUSESwellingLumpsValue: stationGResponse.value
                  ?.aUSESwellingLumps ?? '',
              aUSESwellingLumpsPresentDescriptionValue: stationGResponse.value
                  ?.aUSESwellingLumpsPresentDescription ?? '',
              aUSESwellingLumpsPresentSizeValue: stationGResponse.value
                  ?.aUSESwellingLumpsPresentSize ?? 0,
              aUSESwellingLumpsPresentTextureValue: stationGResponse.value
                  ?.aUSESwellingLumpsPresentTexture ?? '',
              aUSUmbilicalPainValue: stationGResponse.value?.aUSUmbilicalPain ??
                  '',
              aUSUPainYesPainScoreValue: stationGResponse.value
                  ?.aUSUPainYesPainScore ?? 0,
              aUSUTendernessValue: stationGResponse.value?.aUSUTenderness ?? '',
              aUSUTendernessPresentValue: stationGResponse.value
                  ?.aUSUTendernessPresent ?? '',
              aUSUTendernessPresentReboundValue: stationGResponse.value
                  ?.aUSUTendernessPresentRebound ?? '',
              aUSUSwellingLumpsValue: stationGResponse.value
                  ?.aUSUSwellingLumps ?? '',
              aUSUSwellingLumpsPresentDescriptionValue: stationGResponse.value
                  ?.aUSUSwellingLumpsPresentDescription ?? '',
              aUSUSwellingLumpsPresentSizeValue: stationGResponse.value
                  ?.aUSUSwellingLumpsPresentSize ?? 0,
              aUSUSwellingLumpsPresentTextureValue: stationGResponse.value
                  ?.aUSUSwellingLumpsPresentTexture ?? '',
              aUSSuprapubicPainValue: stationGResponse.value
                  ?.aUSSuprapubicPain ?? '',
              aUSSPainYesPainScoreValue: stationGResponse.value
                  ?.aUSSPainYesPainScore ?? 0,
              aUSSTendernessValue: stationGResponse.value?.aUSSTenderness ?? '',
              aUSSTendernessPresentValue: stationGResponse.value
                  ?.aUSSTendernessPresent ?? '',
              aUSSTendernessPresentReboundValue: stationGResponse.value
                  ?.aUSSTendernessPresentRebound ?? '',
              aUSSSwellingLumpsValue: stationGResponse.value
                  ?.aUSSSwellingLumps ?? '',
              aUSSSwellingLumpsPresentDescriptionValue: stationGResponse.value
                  ?.aUSSSwellingLumpsPresentDescription ?? '',
              aUSSSwellingLumpsPresentSizeValue: stationGResponse.value
                  ?.aUSSSwellingLumpsPresentSize ?? 0,
              aUSSSwellingLumpsPresentTextureValue: stationGResponse.value
                  ?.aUSSSwellingLumpsPresentTexture ?? '',
              aUSSUterusValue: stationGResponse.value?.aUSSUterus ?? '',
              aUSSUterusPalpableValue: stationGResponse.value
                  ?.aUSSUterusPalpable ?? '',
              aUSLeftHypochondriumPainValue: stationGResponse.value
                  ?.aUSLeftHypochondriumPain ?? '',
              aUSLHPainYesPainScoreValue: stationGResponse.value
                  ?.aUSLHPainYesPainScore ?? 0,
              aUSLHTendernessValue: stationGResponse.value?.aUSLHTenderness ??
                  '',
              aUSLHTendernessPresentValue: stationGResponse.value
                  ?.aUSLHTendernessPresent ?? '',
              aUSLHSwellingLumpsValue: stationGResponse.value
                  ?.aUSLHSwellingLumps ?? '',
              aUSLHSwellingLumpsPresentDescriptionValue: stationGResponse.value
                  ?.aUSLHSwellingLumpsPresentDescription ?? '',
              aUSLHSwellingLumpsPresentSizeValue: stationGResponse.value
                  ?.aUSLHSwellingLumpsPresentSize ?? 0,
              aUSLHSwellingLumpsPresentTextureValue: stationGResponse.value
                  ?.aUSLHSwellingLumpsPresentTexture ?? '',
              aUSLHSpleenValue: stationGResponse.value?.aUSLHSpleen ?? '',
              aUSLHSpleenPalpableValue: stationGResponse.value
                  ?.aUSLHSpleenPalpable ?? '',
              aUSLeftLumbarPainValue: stationGResponse.value
                  ?.aUSLeftLumbarPain ?? '',
              aUSLLPainYesPainScoreValue: stationGResponse.value
                  ?.aUSLLPainYesPainScore ?? 0,
              aUSLLTendernessValue: stationGResponse.value?.aUSLLTenderness ??
                  '',
              aUSLLTendernessPresentValue: stationGResponse.value
                  ?.aUSLLTendernessPresent ?? '',
              aUSLLSwellingLumpsValue: stationGResponse.value
                  ?.aUSLLSwellingLumps ?? '',
              aUSLLSwellingLumpsPresentDescriptionValue: stationGResponse.value
                  ?.aUSLLSwellingLumpsPresentDescription ?? '',
              aUSLLSwellingLumpsPresentSizeValue: stationGResponse.value
                  ?.aUSLLSwellingLumpsPresentSize ?? 0,
              aUSLLSwellingLumpsPresentTextureValue: stationGResponse.value
                  ?.aUSLLSwellingLumpsPresentTexture ?? '',
              aUSLLLeftKidneyValue: stationGResponse.value?.aUSLLLeftKidney ??
                  '',
              aUSLLLeftKidneyPalpableValue: stationGResponse.value
                  ?.aUSLLLeftKidneyPalpable ?? '',
              aUSLeftIliacPainValue: stationGResponse.value?.aUSLeftIliacPain ??
                  '',
              aUSLIPainYesPainScoreValue: stationGResponse.value
                  ?.aUSLIPainYesPainScore ?? 0,
              aUSLITendernessValue: stationGResponse.value?.aUSLITenderness ??
                  '',
              aUSLITendernessPresentValue: stationGResponse.value
                  ?.aUSLITendernessPresent ?? '',
              aUSLISwellingLumpsValue: stationGResponse.value
                  ?.aUSLISwellingLumps ?? '',
              aUSLISwellingLumpsPresentDescriptionValue: stationGResponse.value
                  ?.aUSLISwellingLumpsPresentDescription ?? '',
              aUSLISwellingLumpsPresentSizeValue: stationGResponse.value
                  ?.aUSLISwellingLumpsPresentSize ?? 0,
              aUSLISwellingLumpsPresentTextureValue: stationGResponse.value
                  ?.aUSLISwellingLumpsPresentTexture ?? '',
              aUSHerniaValue: stationGResponse.value?.aUSHernia ?? '',
              aUSHerniaPresentValue: stationGResponse.value?.aUSHerniaPresent ??
                  '',
              aUSUrinaryBladderValue: stationGResponse.value
                  ?.aUSUrinaryBladder ?? '',
              aUSUrinaryBladderPalpableValue: stationGResponse.value
                  ?.aUSUrinaryBladderPalpable ?? '',
              pubertalAssessmentGirlsValue: stationGResponse.value
                  ?.pubertalAssessmentGirls ?? '',
              pAGTannerScoreValue: stationGResponse.value?.pAGTannerScore ?? '',
              pAGMenarcheAttainedValue: stationGResponse.value
                  ?.pAGMenarcheAttained ?? '',
              pAGMAYesAgeOfMenarcheValue: stationGResponse.value
                  ?.pAGMAYesAgeOfMenarche ?? '',
              pAGMAYesLMPDateValue: stationGResponse.value?.pAGMAYesLMPDate ??
                  '',
              pAGMAYesCharacterRegularityValue: stationGResponse.value
                  ?.pAGMAYesCharacterRegularity ?? '',
              pAGMAYesCharacterFrequencyInDaysValue: stationGResponse.value
                  ?.pAGMAYesCharacterFrequencyInDays ?? '',
              pAGMAYesDurationInDaysValue: stationGResponse.value
                  ?.pAGMAYesDurationInDays ?? '',
              pAGMAYesFlowValue: stationGResponse.value?.pAGMAYesFlow ?? '',
              pAGMAYesComfortValue: stationGResponse.value?.pAGMAYesComfort ??
                  '',
              pAGMAYesPainInOtherPartsOfBodyDuringMensesValue: stationGResponse
                  .value?.pAGMAYesPainInOtherPartsOfBodyDuringMenses ?? '',
              pAGMAYesPainInOtherPartsOfBodyDuringMensesYesValue: stationGResponse
                  .value?.pAGMAYesPainInOtherPartsOfBodyDuringMensesYes ?? '',
              pAGMAYesPainInOtherPartsBodyDuringMensesYesOtherValue: stationGResponse
                  .value?.pAGMAYesPainInOtherPartsBodyDuringMensesYesOther ??
                  '',
              pAGYesCrackingOfVoiceOrChnageInVoiceValue: stationGResponse.value
                  ?.pAGYesCrackingOfVoiceOrChnageInVoice ?? '',
              pAGHaveYouExperiencedAChangeInBehaviourRecentlyValue: stationGResponse
                  .value?.pAGHaveYouExperiencedAChangeInBehaviourRecently ?? '',
              pAGChangeBehaviourYesValue: stationGResponse.value
                  ?.pAGChangeBehaviourYes ?? '',
              pAGChangeBehaviourYesQuietWithdrawnValue: stationGResponse.value
                  ?.pAGChangeBehaviourYesQuietWithdrawn ?? '',
              pAGChangeBehaviourOutgoingValue: stationGResponse.value
                  ?.pAGChangeBehaviourOutgoing ?? '',
              pAGChangeBehaviourAggressiveValue: stationGResponse.value
                  ?.pAGChangeBehaviourAggressive ?? '',
              pAGChangeBehaviourBoldAndDaringValue: stationGResponse.value
                  ?.pAGChangeBehaviourBoldAndDaring ?? '',
              pAGChangeBehaviourCarelessValue: stationGResponse.value
                  ?.pAGChangeBehaviourCareless ?? '',
              pAGPreferCompanyOfValue: stationGResponse.value
                  ?.pAGPreferCompanyOf ?? '',
              pAGAnyOtherAbnormalFindingValue: stationGResponse.value
                  ?.pAGAnyOtherAbnormalFinding ?? '',
              pAGAnyOtherAbnormalFindingYesValue: stationGResponse.value
                  ?.pAGAnyOtherAbnormalFindingYes ?? '',
              pubertalAssessmentBoysValue: stationGResponse.value
                  ?.pubertalAssessmentBoys ?? '',
              pABTannerScoreValue: stationGResponse.value?.pABTannerScore ?? '',
              pABYesCrackingOfVoiceOrChnageInVoiceValue: stationGResponse.value
                  ?.pABYesCrackingOfVoiceOrChnageInVoice ?? '',
              pABNightlyEmissionsValue: stationGResponse.value
                  ?.pABNightlyEmissions ?? '',
              pABHaveYouExperiencedAChangeInBehaviourRecentlyValue: stationGResponse
                  .value?.pABHaveYouExperiencedAChangeInBehaviourRecently ?? '',
              pABChangeBehaviourYesValue: stationGResponse.value
                  ?.pABChangeBehaviourYes ?? '',
              pABChangeBehaviourYesQuietWithdrawnValue: stationGResponse.value
                  ?.pABChangeBehaviourYesQuietWithdrawn ?? '',
              pABChangeBehaviourOutgoingValue: stationGResponse.value
                  ?.pABChangeBehaviourOutgoing ?? '',
              pABChangeBehaviourAggressiveValue: stationGResponse.value
                  ?.pABChangeBehaviourAggressive ?? '',
              pABChangeBehaviourBoldAndDaringValue: stationGResponse.value
                  ?.pABChangeBehaviourBoldAndDaring ?? '',
              pABChangeBehaviourCarelessValue: stationGResponse.value
                  ?.pABChangeBehaviourCareless ?? '',
              pABPreferCompanyOfValue: stationGResponse.value
                  ?.pABPreferCompanyOf ?? '',
              pABAnyOtherAbnormalFindingValue: stationGResponse.value
                  ?.pABAnyOtherAbnormalFinding ?? '',
              pABAnyOtherAbnormalFindingYesValue: stationGResponse.value
                  ?.pABAnyOtherAbnormalFindingYes ?? '',
              historyOfMedicationValue: stationGResponse.value
                  ?.historyOfMedication ?? '',
              historyOfMedicationYesValue: stationGResponse.value
                  ?.historyOfMedicationYes ?? '',
              nameOfMedicationValue: stationGResponse.value?.nameOfMedication ??
                  '',
              milestonesValue: stationGResponse.value?.milestones ?? '',
              otherObservationsValue: stationGResponse.value
                  ?.otherObservations ?? '',
              specialistReferralNeededValue: stationGResponse.value
                  ?.specialistReferralNeeded ?? '',
              specialistReferralNeededTypeValue: stationGResponse.value
                  ?.specialistReferralNeededType ?? '',
              specialistReferralNeededFlagValue: stationGResponse.value
                  ?.specialistReferralNeededFlag ?? '',
              otherValue: stationGResponse.value?.other ?? ''

          );

          AppUtils.getBottomSheet(children: [
            GetBuilder<HomeController>(
              builder: (homeController) =>
                  FinalConfirmationWidget(
                    title: "Station G details successfully saved",
                    child: FinalGPreviewWidget(data: dataValue),
                    onEdit: () => Get.back(),
                    onSubmit: () {
                      Get.dialog(
                        ConfirmationDialog(
                            onConfirm: () async {
                              await AppStorage.clearStationGid();
                              await AppStorage.clearStudent();
                              clearFormData();
                              Get.offAllNamed(Routes.DASHBOARD);
                              AppUtils.showSnackBar('Created Successfully');
                            }


                        ),
                      );
                    },
                  ),
            )
          ]);
        }
      default:
        AppUtils.showSnackBar('Something went wrong');
        break;
    }
  }

  void onPrevious() {
    if (selectedTabIdx.value > 0) {
      if (StudentInfo.calculateAge() < 5 && selectedTabIdx.value == 7) {
        selectedTabIdx.value -= 3;
      } else if (StudentInfo.getGender() == 'Female' &&
              selectedTabIdx.value == 7 ||
          StudentInfo.getGender() == 'Male' && selectedTabIdx.value == 6) {
        selectedTabIdx.value -= 2;
      } else {
        selectedTabIdx.value -= 1;
      }
    }
  }

  clearFormData() {
    selectedTabIdx.value = 0;

    nervesSystemController.selectedAlert.value = 'Yes';
    nervesSystemController.selectedOriented.value = 'Yes';
    nervesSystemController.selectedListens.value = 'Yes';
    nervesSystemController.selectedUnderstands.value = 'Yes';
    nervesSystemController.selectedResponds.value = 'Yes';
    nervesSystemController.isSpeechNormal.value = true;
    nervesSystemController.selectedAbnormalSpeech.value = '';
    nervesSystemController.otherAbnormalSpeech.controller.text = '';
    nervesSystemController.isHistoryOfHeadache.value = false;
    nervesSystemController.isHistoryOfDizziness.value = false;

    respiratorySystemController.isFeelBreathless.value = false;
    respiratorySystemController.haveCough.value = false;
    respiratorySystemController.isShapeOfChestNormal.value = true;
    respiratorySystemController.selectedAbNormalChestOption.value = '';
    respiratorySystemController.otherAbNormalChestOption.controller.text = '';
    respiratorySystemController.selectedAdditionalTypeOfRespiration.value = '';
    respiratorySystemController.selectedTypeAbdominio.value = '';
    respiratorySystemController.selectedTypeThoracic.value = '';
    respiratorySystemController.selectedTypeAbdominal.value = '';
    respiratorySystemController.otherTypeOfAbdomino.controller.text = '';
    respiratorySystemController.otherTypeOfThoracic.controller.text = '';
    respiratorySystemController.otherTypeOfAbdominal.controller.text = '';
    respiratorySystemController.selectedTrachea.value = 'Central';
    respiratorySystemController.selectedEvidenceOfTracheostomy.value = 'Absent';

    rlcontroller.isRightAirEntryNormal.value = true;
    rlcontroller.isRightBreathSoundNormal.value = true;
    rlcontroller.selectedRightAbNormalBreathSound.clear();
    rlcontroller.selectedRightBreathSoundApicalList.value = '';
    rlcontroller.selectedRightBreathSoundMidZoneList.value = '';
    rlcontroller.selectedRightBreathSoundBasalList.value = '';
    rlcontroller.selectedRightBreathSoundSubScapularList.value = '';
    rlcontroller.selectedRightBreathSoundDiffuseList.value = '';
    rlcontroller.isRightRalesAbsent.value = true;
    rlcontroller.selectedRightPresentRales.clear();
    rlcontroller.selectedRightRalesApicalList.value = '';
    rlcontroller.selectedRightRalesMidZoneList.value = '';
    rlcontroller.selectedRightRalesBasalList.value = '';
    rlcontroller.selectedRightRalesSubScapularList.value = '';
    rlcontroller.selectedRightRalesDiffuseList.value = '';
    rlcontroller.isRightApical.value = true;
    rlcontroller.isRightMidZone.value = true;
    rlcontroller.isRightBasal.value = true;
    rlcontroller.isRightSubScapular.value = true;
    rlcontroller.isRightDiffuse.value = true;
    rlcontroller.isRightRhonchiAbsent.value = true;
    rlcontroller.selectedRightRhonchiPresentList.value = '';
    rlcontroller.isRightAddedSoundAbsent.value = true;
    rlcontroller.addedSoundRightPresentDescription.controller.text = '';
    rlcontroller.isRightZoneOfConcernAbsent.value = true;
    rlcontroller.selectedRightPresentZoneOfConcern.clear();

    rlcontroller.isLeftAirEntryNormal.value = true;
    rlcontroller.isLeftBreathSoundNormal.value = true;
    rlcontroller.selectedLeftAbNormalBreathSound.clear();
    rlcontroller.selectedLeftBreathSoundApicalList.value = '';
    rlcontroller.selectedLeftBreathSoundMidZoneList.value = '';
    rlcontroller.selectedLeftBreathSoundBasalList.value = '';
    rlcontroller.selectedLeftBreathSoundSubScapularList.value = '';
    rlcontroller.selectedLeftBreathSoundDiffuseList.value = '';
    rlcontroller.isLeftRalesAbsent.value = true;
    rlcontroller.selectedLeftPresentRales.clear();
    rlcontroller.selectedLeftRalesApicalList.value = '';
    rlcontroller.selectedLeftRalesMidZoneList.value = '';
    rlcontroller.selectedLeftRalesBasalList.value = '';
    rlcontroller.selectedLeftRalesSubScapularList.value = '';
    rlcontroller.selectedLeftRalesDiffuseList.value = '';
    rlcontroller.isLeftApical.value = true;
    rlcontroller.isLeftMidZone.value = true;
    rlcontroller.isLeftBasal.value = true;
    rlcontroller.isLeftSubScapular.value = true;
    rlcontroller.isLeftDiffuse.value = true;
    rlcontroller.isLeftRhonchiAbsent.value = true;
    rlcontroller.selectedLeftRhonchiPresentList.value = '';
    rlcontroller.isLeftAddedSoundAbsent.value = true;
    rlcontroller.addedSoundLeftPresentDescription.controller.text = '';
    rlcontroller.isLeftZoneOfConcernAbsent.value = true;
    rlcontroller.selectedLeftPresentZoneOfConcern.clear();

    cardioVascularSystemsController.doYouGetPalpitation.value = false;
    cardioVascularSystemsController.haveYouFainted.value = false;
    cardioVascularSystemsController.isJugularPulsationsVisible.value = true;
    cardioVascularSystemsController.isNotVisibleJugularPulsationsNormal.value =
        true;
    cardioVascularSystemsController.selectedAbnormalJugularPulsations.clear();
    cardioVascularSystemsController.isSuprasternalPulsationsAbsent.value = true;
    cardioVascularSystemsController.selectedSuprasternalPresentOption.clear();
    cardioVascularSystemsController.isPeripheralRadialPresent.value = true;
    cardioVascularSystemsController.isPeripheralRadialNormal.value = true;
    cardioVascularSystemsController.selectedPeripheralRadialAbnormal.clear();
    cardioVascularSystemsController.isPeripheralDorsalisPresent.value = true;
    cardioVascularSystemsController.isPeripheralDorsalisNormal.value = true;
    cardioVascularSystemsController.selectedPeripheralDorsalisAbnormal.clear();
    cardioVascularSystemsController.otherAbnormality.controller.text = '';
    cardioVascularSystemsController.isS1Normal.value = true;
    cardioVascularSystemsController.isS2Normal.value = true;
    cardioVascularSystemsController.isS3Normal.value = true;
    cardioVascularSystemsController.isMurmurAbsent.value = true;
    cardioVascularSystemsController.selectedMurmurPresentOption.clear();
    cardioVascularSystemsController.otherMurmurPresent.controller.text = '';
    cardioVascularSystemsController.isClickAbsent.value = true;
    cardioVascularSystemsController.clickPosition.controller.text = '';
    cardioVascularSystemsController.isApexBeatNormal.value = true;
    cardioVascularSystemsController.apexBeatPosition.controller.text = '';

    alimentaryAndUrinaryController.isVomiting.value = true;
    alimentaryAndUrinaryController.isAbdomen.value = true;
    alimentaryAndUrinaryController.isUrine.value = true;
    alimentaryAndUrinaryController.isCleftLip.value = true;
    alimentaryAndUrinaryController.isNotVisibleCleftLipPresent.value = true;
    alimentaryAndUrinaryController.isCleftPalate.value = true;
    alimentaryAndUrinaryController.isNotVisibleCleftPalatePresent.value = true;
    alimentaryAndUrinaryController.isAbdominal.value = true;
    alimentaryAndUrinaryController.isExaggerated.value = true;
    alimentaryAndUrinaryController.isGuarding.value = true;
    alimentaryAndUrinaryController.isRigidity.value = true;

    alimentaryAndUrinaryController.isRightHypochondriumPain.value = true;
    alimentaryAndUrinaryController.upperPainRightHypochondrium.value = 0;
    alimentaryAndUrinaryController.isRightHypochondriumTenderness.value = true;
    alimentaryAndUrinaryController.selectedRightHypoTenderness.value = 'Mild';
    alimentaryAndUrinaryController.isRightHypoSwelling.value = true;
    alimentaryAndUrinaryController
        .rightHypoSwellingDescription.controller.text = '';
    alimentaryAndUrinaryController.rightHypoSwellingSize.controller.text = '';
    alimentaryAndUrinaryController.selectedRightHypoTexture.value = 'Soft';
    alimentaryAndUrinaryController.isRightHypoLiver.value = true;
    alimentaryAndUrinaryController.selectedRightHypoLiver.value = '1F';
    alimentaryAndUrinaryController.isRightHypoGall.value = true;
    alimentaryAndUrinaryController.upperGallPainRightHypochondrium.value = 0;

    alimentaryAndUrinaryController.isRightLumberPain.value = true;
    alimentaryAndUrinaryController.upperPainRightLumber.value = 0;
    alimentaryAndUrinaryController.isRightLumberTenderness.value = true;
    alimentaryAndUrinaryController.selectedRightLumberTenderness.value = 'Mild';
    alimentaryAndUrinaryController.isRightLumberSwelling.value = true;
    alimentaryAndUrinaryController.rightLumberSwellingSize.controller.text = '';
    alimentaryAndUrinaryController
        .rightLumberSwellingDescription.controller.text = '';
    alimentaryAndUrinaryController.selectedRightLumberTexture.value = 'Soft';
    alimentaryAndUrinaryController.isRightKidney.value = true;
    alimentaryAndUrinaryController.selectedRightKidney.value = 'Soft';

    alimentaryAndUrinaryController.isRightIliacPain.value = true;
    alimentaryAndUrinaryController.upperPainRightIliac.value = 0;
    alimentaryAndUrinaryController.isRightIliacBurneys.value = true;
    alimentaryAndUrinaryController.upperBurneysRightIliac.value = 0;
    alimentaryAndUrinaryController.isRightIliacTenderness.value = true;
    alimentaryAndUrinaryController.selectedRightIliacTenderness.value = 'Mild';
    alimentaryAndUrinaryController.isRightIliacSwelling.value = true;
    alimentaryAndUrinaryController.rightIliacSwellingSize.controller.text = '';
    alimentaryAndUrinaryController
        .rightIliacSwellingDescription.controller.text = '';
    alimentaryAndUrinaryController.selectedRightIliacTexture.value = 'Soft';

    alimentaryAndUrinaryController.isEpigastricPain.value = true;
    alimentaryAndUrinaryController.upperEpigastric.value = 0;
    alimentaryAndUrinaryController.selectedEpigastricTenderness.value =
        'Absent';
    alimentaryAndUrinaryController.selectedEpigastricPresentTenderness.value =
        'Mild';
    alimentaryAndUrinaryController.selectedEpigastricPresentReTenderness.value =
        'Mild';
    alimentaryAndUrinaryController.isEpigastricSwelling.value = true;
    alimentaryAndUrinaryController.epigastricSwellingSize.controller.text = '';
    alimentaryAndUrinaryController
        .epigastricSwellingDescription.controller.text = '';
    alimentaryAndUrinaryController.selectedEpigastricTexture.value = 'Soft';

    alimentaryAndUrinaryController.isUmbilicalPain.value = true;
    alimentaryAndUrinaryController.upperUmbilical.value = 0;
    alimentaryAndUrinaryController.selectedRightUmbilicalTenderness.value =
        'Absent';
    alimentaryAndUrinaryController.selectedUmbilicalPresentTenderness.value =
        'Mild';
    alimentaryAndUrinaryController.selectedUmbilicalPresentReTenderness.value =
        'Mild';
    alimentaryAndUrinaryController.isUmbilicalSwelling.value = true;
    alimentaryAndUrinaryController.umbilicalSwellingSize.controller.text = '';
    alimentaryAndUrinaryController
        .umbilicalSwellingDescription.controller.text = '';
    alimentaryAndUrinaryController.selectedUmbilicalTexture.value = 'Soft';

    alimentaryAndUrinaryController.isSuprapubicPain.value = true;
    alimentaryAndUrinaryController.upperSuprapubic.value = 0;
    alimentaryAndUrinaryController.selectedSuprapubicTenderness.value =
        'Absent';
    alimentaryAndUrinaryController.selectedSuprapubicPresentTenderness.value =
        'Mild';
    alimentaryAndUrinaryController.selectedSuprapubicPresentReTenderness.value =
        'Mild';
    alimentaryAndUrinaryController.isSuprapubicSwelling.value = true;
    alimentaryAndUrinaryController.suprapubicSwellingSize.controller.text = '';
    alimentaryAndUrinaryController
        .suprapubicSwellingDescription.controller.text = '';
    alimentaryAndUrinaryController.selectedSuprapubicTexture.value = 'Soft';
    alimentaryAndUrinaryController.isSuprapubicUterus.value = true;
    alimentaryAndUrinaryController.selectedUterus.value = 'Soft';

    alimentaryAndUrinaryController.isLeftHypochondriumPain.value = true;
    alimentaryAndUrinaryController.upperPainLeftHypochondrium.value = 0;
    alimentaryAndUrinaryController.isLeftHypochondriumTenderness.value = true;
    alimentaryAndUrinaryController.selectedLeftHypoPresentTenderness.value =
        'Mild';
    alimentaryAndUrinaryController.isLeftHypoSwelling.value = true;
    alimentaryAndUrinaryController.leftHypoSwellingDescription.controller.text =
        '';
    alimentaryAndUrinaryController.leftHypoSwellingSize.controller.text = '';
    alimentaryAndUrinaryController.selectedLeftHypoTexture.value = 'Soft';
    alimentaryAndUrinaryController.isLeftHypoSpleen.value = true;
    alimentaryAndUrinaryController.selectedLeftHypoSpleen.value = '1F';

    alimentaryAndUrinaryController.isLeftLumberPain.value = true;
    alimentaryAndUrinaryController.upperPainLeftLumber.value = 0;
    alimentaryAndUrinaryController.isLeftLumberTenderness.value = true;
    alimentaryAndUrinaryController.selectedLeftLumberTenderness.value = 'Mild';
    alimentaryAndUrinaryController.isLeftLumberSwelling.value = true;
    alimentaryAndUrinaryController.leftLumberSwellingSize.controller.text = '';
    alimentaryAndUrinaryController
        .leftLumberSwellingDescription.controller.text = '';
    alimentaryAndUrinaryController.selectedLeftLumberTexture.value = 'Soft';
    alimentaryAndUrinaryController.isLeftKidney.value = true;
    alimentaryAndUrinaryController.selectedLeftKidney.value = 'Soft';

    alimentaryAndUrinaryController.isLeftIliacPain.value = true;
    alimentaryAndUrinaryController.upperPainLeftIliac.value = 0;
    alimentaryAndUrinaryController.isLeftIliacTenderness.value = true;
    alimentaryAndUrinaryController.selectedLeftIliacTenderness.value = 'Mild';
    alimentaryAndUrinaryController.isLeftIliacSwelling.value = true;
    alimentaryAndUrinaryController.leftIliacSwellingSize.controller.text = '';
    alimentaryAndUrinaryController
        .leftIliacSwellingDescription.controller.text = '';
    alimentaryAndUrinaryController.selectedLeftIliacTexture.value = 'Soft';
    alimentaryAndUrinaryController.isHernia.value = true;
    alimentaryAndUrinaryController.selectedHerniaPresent.clear();
    alimentaryAndUrinaryController.isUrinaryBladder.value = true;
    alimentaryAndUrinaryController.selectedUrinaryBladderPalpable.value = '1F';

    pubertalAssessmentGirlsController.isPubertalAssessmentGirls.value = true;
    pubertalAssessmentGirlsController.upperTannerScore.value = 0;
    pubertalAssessmentGirlsController.isMenarche.value = true;
    pubertalAssessmentGirlsController.ageOfMenarche.controller.text='';
    pubertalAssessmentGirlsController.lMPdate.controller.text='';
    pubertalAssessmentGirlsController.isRegularity.value=true;
    pubertalAssessmentGirlsController.selectedFrequencyInDays.value='<16';
    pubertalAssessmentGirlsController.selectedDurationInDays.value='<1';
    pubertalAssessmentGirlsController.selectedFlow.value='Moderate';
    pubertalAssessmentGirlsController.selectedComfort.value='Painless';
    pubertalAssessmentGirlsController.isPain.value=true;
    pubertalAssessmentGirlsController.selectedPainYes.clear();
    pubertalAssessmentGirlsController.otherPainYes.controller.text = '';
    pubertalAssessmentGirlsController.isCrackingVoice.value = true;
    pubertalAssessmentGirlsController
        .anyAbnormalFindingsWrapper.controller.text = '';
    pubertalAssessmentGirlsController.isHaveYouExperienced.value = false;
    pubertalAssessmentGirlsController.selectedPreferOfCompany.value = 'Both';

    pubertalAssessmentBoysController.upperTannerScoreBoys.value = 0;
    pubertalAssessmentBoysController.isCrackingVoiceBoys.value = true;
    pubertalAssessmentBoysController.isNightlyEmissions.value = true;
    pubertalAssessmentBoysController.isHaveYouExperiencedBoys.value = false;
    pubertalAssessmentBoysController.selectedPreferOfCompanyBoys.value = 'Both';
    pubertalAssessmentBoysController.isAnyAbnormalFindingsBoys.value = false;
    pubertalAssessmentBoysController
        .anyAbnormalFindingsWrapperBoys.controller.text = '';

    homcontroller.isMedication.value = true;
    homcontroller.nameOfMedication.controller.text = '';
    homcontroller.nameOfMedicationTextList.clear();

    oobcontroller.selectedReferralType.clear();
    oobcontroller.selectedReFlag.value = '';
    oobcontroller.otherObservations.controller.clear();
    oobcontroller.otherWrapper.controller.clear();
    oobcontroller.isSpecialistReferralNeeded.value = false;
  }

  Future<bool> getStationGetails() async {
    try {
      RepoResponse<GenericResponse> response =
          await repository.getStationGDetails(id: AppStorage.getStationGId());
      if (response.data?.status == 200 || response.data?.status == 201) {
        var data = response.data?.result as List;
        stationGResponse.value = StationGgetModel.fromJson(data.first);
        return true;
      } else {
        AppUtils.showErrorMessage(response);
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
