import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_G/controllers/nervous_system_controller.dart';
import 'package:nivish/app/modules/station_G/controllers/station_g_controller.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/common_text.dart';

import '../../../../widgets/Age_Gender_validations.dart';
import 'StationGpreviewModel.dart';

class FinalGPreviewWidget extends GetView<StationGController> {
  NervesSystemController controller1 = Get.put(NervesSystemController());
  final StationGPreviewModel data;
  FinalGPreviewWidget({required this.data, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const CommonText(text: "Central Nervous System"),
      Dimens.heightGap2,
      nameValueWidget(
          name: "Alert", value: data.centralNervousSystemAlertValue),
      nameValueWidget(name: "Oriented", value: data.cNSOrientedValue),
      nameValueWidget(name: "Listens", value: data.cNSListensValue),
      nameValueWidget(name: "Understands", value: data.cNSListensValue),
      nameValueWidget(name: "Responds", value: data.cNSRespondsValue),
      nameValueWidget(name: "Speech", value: data.cNSSpeechValue),
      Visibility(
        visible: data.cNSSpeechValue == 'Abnormal',
        child: nameValueWidget(
            name: "Speech Abnormal", value: data.cNSSpeechAbnormalValue),
      ),
      Visibility(
        visible: data.cNSSpeechValue == 'Abnormal' &&
            controller1.selectedAbnormalSpeech.value == 'Other',
        child: nameValueWidget(
            name: "Speech Abnormal Other",
            value: data.cNSSpeechAbnormalOtherValue),
      ),
      nameValueWidget(
          name: "History of Headache", value: data.cNSHistoryOfHeadacheValue),
      Visibility(
        visible: data.cNSHistoryOfHeadacheValue == 'Yes',
        child: Column(
          children: [
            nameValueWidget(
                name: "History of Headache Yes Frequency",
                value: data.cNSHistoryOfHeadacheYesFrequencyValue),
            Visibility(
                visible:
                    data.cNSHistoryOfHeadacheYesFrequencyValue == 'Continuous',
                child: nameValueWidget(
                    name: "History of Headache Yes Frequency Continuous",
                    value:
                        data.cNSHistoryOfHeadacheYesFrequencyContinuousValue)),
            nameValueWidget(
                name: "History of Headache Yes Associated With",
                value: data.cNSHistoryOfHeadacheYesAssociatedWithValue),
            Visibility(
                visible: controller1.selectedHeadacheAssociatedWithOptions
                    .contains('Occurrence'),
                child: nameValueWidget(
                    name: "History of Headache Yes Associated With Occurrence",
                    value: data
                        .cNSHistoryOfHeadacheYesAssociatedWithOccurrenceValue)),
            Visibility(
              visible: controller1.selectedHeadacheAssociatedWithOptions
                  .contains('Other'),
              child: nameValueWidget(
                  name: "History of Headache Yes Associated With Other",
                  value: data.cNSHistoryOfHeadacheYesAssociatedWithOtherValue),
            ),
            nameValueWidget(
                name: "History of Headache Yes From",
                value: data.cNSHistoryOfHeadacheYesFromValue),
            nameValueWidget(
                name: "History of Headache Yes Duration",
                value: data.cNSHistoryOfHeadacheYesDurationValue)
          ],
        ),
      ),
      nameValueWidget(
          name: "History of Dizziness", value: data.cNSHistoryOfDizzinessValue),
      Visibility(
        visible: data.cNSHistoryOfHeadacheYesDurationValue == 'Yes',
        child: nameValueWidget(
            name: "History of Dizziness Yes",
            value: data.cNSHistoryOfDizzinessYesFrequencyValue),
      ),
      Visibility(
        visible: data.cNSHistoryOfHeadacheYesDurationValue == 'Yes' &&
            data.cNSHistoryOfDizzinessYesFrequencyContinuousValue == 'Yes',
        child: nameValueWidget(
            name: "History of Dizziness Yes Continuous",
            value: data.cNSHistoryOfDizzinessYesFrequencyContinuousValue),
      ),
      Visibility(
        visible: data.cNSHistoryOfHeadacheYesDurationValue == 'Yes',
        child: nameValueWidget(
            name: "History of Dizziness Yes Associated With",
            value: data.cNSHistoryOfDizzinessYesAssociatedWithValue),
      ),
      Visibility(
        visible: data.cNSHistoryOfHeadacheYesDurationValue == 'Yes' &&
            data.cNSHistoryOfDizzinessYesAssociatedWithOccurrenceValue == 'Yes',
        child: nameValueWidget(
            name: "History of Dizziness Yes Associated With Occurrence",
            value: data.cNSHistoryOfDizzinessYesAssociatedWithOccurrenceValue),
      ),
      Visibility(
        visible: data.cNSHistoryOfHeadacheYesDurationValue == 'Yes' &&
            data.cNSHistoryOfDizzinessYesAssociatedWithOccurrenceValue ==
                'Yes' &&
            data.cNSHistoryOfDizzinessYesAssociatedWithOtherValue == 'Yes',
        child: nameValueWidget(
            name: "History of Dizziness Yes Associated With Other",
            value: data.cNSHistoryOfDizzinessYesAssociatedWithOtherValue),
      ),
      const CommonText(text: "Respiratory System"), Dimens.heightGap2,

      nameValueWidget(
          name: 'Do you feel Breathless?',
          value: data.respiratorySystemDoYouFeelBreathlessValue),
      nameValueWidget(
          name: 'Do you have Cough?', value: data.rSDoYouHaveACoughValue),
      nameValueWidget(name: 'Shape Of Chest', value: data.rSShapeOfChestValue),
      Visibility(
        visible: data.rSShapeOfChestValue == 'Abnormal',
        child: nameValueWidget(
            name: 'Shape Of Chest Abnormal',
            value: data.rSShapeOfChestAbnormalValue),
      ),
      Visibility(
        visible: data.rSShapeOfChestValue == 'Abnormal' &&
            data.rSShapeOfChestAbnormalOtherValue == 'Yes',
        child: nameValueWidget(
            name: 'Shape Of Chest Other',
            value: data.rSShapeOfChestAbnormalOtherValue),
      ),
      nameValueWidget(
          name: 'Type Of Respiration', value: data.rSTypeOfRespirationValue),
      Visibility(
        visible: data.rSTypeOfRespirationValue == 'Abdominal',
        child: nameValueWidget(
            name: 'Type Of Respiration Abdominal',
            value: data.rSTypeOfRespirationAbdominalValue),
      ),
      Visibility(
        visible: data.rSTypeOfRespirationValue == 'Abdominal' &&
            data.rSTypeOfRespirationAbdominalOtherValue == ' Yes',
        child: nameValueWidget(
            name: 'Type Of Respiration Abdominal Other',
            value: data.rSTypeOfRespirationAbdominalOtherValue),
      ),
      Visibility(
        visible: data.rSTypeOfRespirationValue == 'Thoracic',
        child: nameValueWidget(
            name: 'Type Of Respiration Thoracic',
            value: data.rSTypeOfRespirationThoracicValue),
      ),
      Visibility(
        visible: data.rSTypeOfRespirationValue == 'Thoracic' &&
            data.rSTypeOfRespirationThoracicOtherValue == 'Yes',
        child: nameValueWidget(
            name: 'Type Of Respiration Thoracic Other',
            value: data.rSTypeOfRespirationThoracicOtherValue),
      ),
      Visibility(
        visible: data.rSTypeOfRespirationValue == 'Abdomino-Thoracic',
        child: nameValueWidget(
            name: 'Type Of Respiration Abdomino-Thoracic',
            value: data.rSTypeOfRespirationAbdominoThoracicValue),
      ),
      Visibility(
        visible: data.rSTypeOfRespirationValue == 'Abdomino-Thoracic' &&
            data.rSTypeOfRespirationAbdominoThoracicOtherValue == 'Yes',
        child: nameValueWidget(
            name: 'Type Of Respiration Abdomino-Thoracic Other',
            value: data.rSTypeOfRespirationAbdominoThoracicOtherValue),
      ),
      nameValueWidget(name: 'Trachea', value: data.rSTracheaValue),
      nameValueWidget(
          name: 'Evidence Of Tracheostomy',
          value: data.rSEvidenceOfTracheostomyValue),
      const CommonText(text: "Right Lung"),
      Dimens.heightGap2,
      nameValueWidget(
          name: 'Air Entry Normal', value: data.rightLungAirEntryNormalValue),
      nameValueWidget(name: 'Breath Sound', value: data.rLBreathSoundsValue),
      Visibility(
        visible: data.rLBreathSoundsValue == 'Abnormal',
        child: nameValueWidget(
            name: 'Breath Sound Abnormal',
            value: data.rLBreathSoundsAbnormalValue),
      ),
      Visibility(
        visible: data.rLBreathSoundsValue == 'Abnormal' &&
            data.rLBreathSoundsAbnormalValue == 'Apical',
        child: nameValueWidget(
            name: 'Breath Sound Abnormal Apical',
            value: data.rLBreathSoundsAbnormalApicalValue),
      ),
      Visibility(
        visible: data.rLBreathSoundsValue == 'Abnormal' &&
            data.rLBreathSoundsAbnormalValue == 'Mid Zone',
        child: nameValueWidget(
            name: 'Breath Sound Abnormal Mid Zone',
            value: data.rLBreathSoundsAbnormalMidZoneValue),
      ),
      Visibility(
        visible: data.rLBreathSoundsValue == 'Abnormal' &&
            data.rLBreathSoundsAbnormalValue == 'Basal',
        child: nameValueWidget(
            name: 'Breath Sound Abnormal Basal',
            value: data.rLBreathSoundsAbnormalBasalValue),
      ),
      Visibility(
        visible: data.rLBreathSoundsValue == 'Abnormal' &&
            data.rLBreathSoundsAbnormalValue == 'Sub Scapular',
        child: nameValueWidget(
            name: 'Breath Sound Abnormal Sub Scapular',
            value: data.rLBreathSoundsAbnormalSubScapularValue),
      ),
      Visibility(
        visible: data.rLBreathSoundsValue == 'Abnormal' &&
            data.rLBreathSoundsAbnormalValue == 'Diffuse',
        child: nameValueWidget(
            name: 'Breath Sound Abnormal Diffuse',
            value: data.rLBreathSoundsAbnormalDiffuseValue),
      ),
      nameValueWidget(name: 'Rales/Crepts', value: data.rLRalesCreptsValue),
      Visibility(
        visible: data.rLRalesCreptsValue == 'Present',
        child: nameValueWidget(
            name: 'RRales/Crepts Present',
            value: data.rLRalesCreptsPresentValue),
      ),
      Visibility(
        visible: data.rLRalesCreptsValue == 'Present' &&
            data.rLRalesCreptsPresentValue == 'Apical',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Apical',
            value: data.rLRalesCreptsPresentApicalValue),
      ),
      Visibility(
        visible: data.rLRalesCreptsValue == 'Present' &&
            data.rLRalesCreptsPresentValue == 'Apical' &&
            data.rLRalesCreptsPresentApicalValue == 'Fine',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Apical Fine',
            value: data.rLRalesCreptsPresentApicalFineValue),
      ),
      Visibility(
        visible: data.rLRalesCreptsValue == 'Present' &&
            data.rLRalesCreptsPresentValue == 'Apical' &&
            data.rLRalesCreptsPresentApicalValue == 'Coarse',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Apical Coarse',
            value: data.rLRalesCreptsPresentApicalCoarseValue),
      ),
      Visibility(
        visible: data.rLRalesCreptsValue == 'Present' &&
            data.rLRalesCreptsPresentValue == 'Mid Zone',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Mid Zone',
            value: data.rLRalesCreptsPresentMidZoneValue),
      ),
      Visibility(
        visible: data.rLRalesCreptsValue == 'Present' &&
            data.rLRalesCreptsPresentValue == 'Mid Zone' &&
            data.rLRalesCreptsPresentMidZoneValue == 'Fine',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Mid Zone Fine',
            value: data.rLRalesCreptsPresentMidZoneFineValue),
      ),
      Visibility(
        visible: data.rLRalesCreptsValue == 'Present' &&
            data.rLRalesCreptsPresentValue == 'Mid Zone' &&
            data.rLRalesCreptsPresentMidZoneValue == 'Coarse',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Mid Zone Coarse',
            value: data.rLRalesCreptsPresentMidZoneCoarseValue),
      ),
      Visibility(
        visible: data.rLRalesCreptsValue == 'Present' &&
            data.rLRalesCreptsPresentValue == 'Basal',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Basal',
            value: data.rLRalesCreptsPresentBasalValue),
      ),
      Visibility(
        visible: data.rLRalesCreptsValue == 'Present' &&
            data.rLRalesCreptsPresentValue == 'Basal' &&
            data.rLRalesCreptsPresentBasalValue == 'Fine',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Basal Fine',
            value: data.rLRalesCreptsPresentBasalFineValue),
      ),
      Visibility(
        visible: data.rLRalesCreptsValue == 'Present' &&
            data.rLRalesCreptsPresentValue == 'Basal' &&
            data.rLRalesCreptsPresentBasalValue == 'Coarse',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Basal Coarse',
            value: data.rLRalesCreptsPresentBasalCoarseValue),
      ),
      Visibility(
        visible: data.rLRalesCreptsValue == 'Present' &&
            data.rLRalesCreptsPresentValue == 'Sub Scapular',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Sub Scapular',
            value: data.rLRalesCreptsPresentSubScapularValue),
      ),
      Visibility(
        visible: data.rLRalesCreptsValue == 'Present' &&
            data.rLRalesCreptsPresentValue == 'Sub Scapular' &&
            data.rLRalesCreptsPresentSubScapularValue == 'Fine',
        child: nameValueWidget(
            name: 'Rales/Crepts Present SubScapular Fine',
            value: data.rLRalesCreptsPresentSubScapularFineValue),
      ),
      Visibility(
        visible: data.rLRalesCreptsValue == 'Present' &&
            data.rLRalesCreptsPresentValue == 'Sub Scapular' &&
            data.rLRalesCreptsPresentSubScapularValue == 'Coarse',
        child: nameValueWidget(
            name: 'Rales/Crepts Present SubScapular Coarse',
            value: data.rLRalesCreptsPresentSubScapularCoarseValue),
      ),
      Visibility(
        visible: data.rLRalesCreptsValue == 'Present' &&
            data.rLRalesCreptsPresentValue == 'Diffuse',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Diffuse',
            value: data.rLRalesCreptsPresentDiffuseValue),
      ),
      Visibility(
        visible: data.rLRalesCreptsValue == 'Present' &&
            data.rLRalesCreptsPresentValue == 'Diffuse' &&
            data.rLRalesCreptsPresentDiffuseValue == 'Fine',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Diffuse Fine',
            value: data.rLRalesCreptsPresentDiffuseFineValue),
      ),
      Visibility(
        visible: data.rLRalesCreptsValue == 'Present' &&
            data.rLRalesCreptsPresentValue == 'Diffuse' &&
            data.rLRalesCreptsPresentDiffuseValue == 'Coarse',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Diffuse Coarse',
            value: data.rLRalesCreptsPresentDiffuseCoarseValue),
      ),
      nameValueWidget(
          name: 'Rhonchi/Wheezing', value: data.rLRhonchiWheezingValue),
      Visibility(
        visible: data.rLRhonchiWheezingValue == 'Present',
        child: nameValueWidget(
            name: 'Rhonchi/Wheezing Present',
            value: data.rLRhonchiWheezingPresentValue),
      ),
      nameValueWidget(name: 'Added Sounds', value: data.rLAddedSoundsValue),
      Visibility(
        visible: data.rLAddedSoundsValue == 'Present',
        child: nameValueWidget(
            name: 'Added Sounds Present',
            value: data.rLAddedSoundsPresentValue),
      ),
      nameValueWidget(
          name: 'Zone Of Concern', value: data.rLAddedZoneOfConcernValue),
      Visibility(
        visible: data.rLAddedZoneOfConcernValue == 'Abnormal',
        child: nameValueWidget(
            name: 'Zone Of Concern Abnormal',
            value: data.rLAddedZoneOfConcernAbnormalValue),
      ),
      const CommonText(text: "Left Lung"), Dimens.heightGap2,

      nameValueWidget(
          name: 'Air Entry Normal', value: data.leftLungAirEntryNormalValue),
      nameValueWidget(name: 'Breath Sound', value: data.lLBreathSoundsValue),
      Visibility(
        visible: data.lLBreathSoundsValue == 'Abnormal',
        child: nameValueWidget(
            name: 'Breath Sound Abnormal',
            value: data.lLBreathSoundsAbnormalValue),
      ),
      Visibility(
        visible: data.lLBreathSoundsValue == 'Abnormal' &&
            data.lLBreathSoundsAbnormalValue == 'Apical',
        child: nameValueWidget(
            name: 'Breath Sound Abnormal Apical',
            value: data.lLBreathSoundsAbnormalApicalValue),
      ),
      Visibility(
        visible: data.lLBreathSoundsValue == 'Abnormal' &&
            data.lLBreathSoundsAbnormalValue == 'Mid Zone',
        child: nameValueWidget(
            name: 'Breath Sound Abnormal Mid Zone',
            value: data.lLBreathSoundsAbnormalMidZoneValue),
      ),
      Visibility(
        visible: data.lLBreathSoundsValue == 'Abnormal' &&
            data.lLBreathSoundsAbnormalValue == 'Basal',
        child: nameValueWidget(
            name: 'Breath Sound Abnormal Basal',
            value: data.lLBreathSoundsAbnormalBasalValue),
      ),
      Visibility(
        visible: data.lLBreathSoundsValue == 'Abnormal' &&
            data.lLBreathSoundsAbnormalValue == 'Sub Scapular',
        child: nameValueWidget(
            name: 'Breath Sound Abnormal Sub Scapular',
            value: data.lLBreathSoundsAbnormalSubScapularValue),
      ),
      Visibility(
        visible: data.lLBreathSoundsValue == 'Abnormal' &&
            data.lLBreathSoundsAbnormalValue == 'Diffuse',
        child: nameValueWidget(
            name: 'Breath Sound Abnormal Diffuse',
            value: data.lLBreathSoundsAbnormalDiffuseValue),
      ),
      nameValueWidget(name: 'Rales/Crepts', value: data.lLRalesCreptsValue),
      Visibility(
        visible: data.lLRalesCreptsValue == 'Present',
        child: nameValueWidget(
            name: 'Rales/Crepts Present',
            value: data.lLRalesCreptsPresentValue),
      ),
      Visibility(
        visible: data.lLRalesCreptsValue == 'Present' &&
            data.lLRalesCreptsPresentValue == 'Apical',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Apical',
            value: data.lLRalesCreptsPresentApicalValue),
      ),
      Visibility(
        visible: data.lLRalesCreptsValue == 'Present' &&
            data.lLRalesCreptsPresentValue == 'Apical' &&
            data.lLRalesCreptsPresentApicalValue == 'Fine',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Apical Fine',
            value: data.lLRalesCreptsPresentApicalFineValue),
      ),
      Visibility(
        visible: data.lLRalesCreptsValue == 'Present' &&
            data.lLRalesCreptsPresentValue == 'Apical' &&
            data.lLRalesCreptsPresentApicalValue == 'Coarse',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Apical Coarse',
            value: data.lLRalesCreptsPresentApicalCoarseValue),
      ),
      Visibility(
        visible: data.lLRalesCreptsValue == 'Present' &&
            data.lLRalesCreptsPresentValue == 'Mid Zone',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Mid Zone',
            value: data.lLRalesCreptsPresentMidZoneValue),
      ),
      Visibility(
        visible: data.lLRalesCreptsValue == 'Present' &&
            data.lLRalesCreptsPresentValue == 'Mid Zone' &&
            data.lLRalesCreptsPresentMidZoneValue == 'Fine',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Mid Zone Fine',
            value: data.lLRalesCreptsPresentMidZoneFineValue),
      ),
      Visibility(
        visible: data.lLRalesCreptsValue == 'Present' &&
            data.lLRalesCreptsPresentValue == 'Mid Zone' &&
            data.lLRalesCreptsPresentMidZoneValue == 'Coarse',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Mid Zone Coarse',
            value: data.lLRalesCreptsPresentMidZoneCoarseValue),
      ),
      Visibility(
        visible: data.lLRalesCreptsValue == 'Present' &&
            data.lLRalesCreptsPresentValue == 'Basal',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Basal',
            value: data.lLRalesCreptsPresentBasalValue),
      ),
      Visibility(
        visible: data.lLRalesCreptsValue == 'Present' &&
            data.lLRalesCreptsPresentValue == 'Basal' &&
            data.lLRalesCreptsPresentBasalValue == 'Fine',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Basal Fine',
            value: data.lLRalesCreptsPresentBasalFineValue),
      ),
      Visibility(
        visible: data.lLRalesCreptsValue == 'Present' &&
            data.lLRalesCreptsPresentValue == 'Basal' &&
            data.lLRalesCreptsPresentBasalValue == 'Coarse',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Basal Coarse',
            value: data.lLRalesCreptsPresentBasalCoarseValue),
      ),
      Visibility(
        visible: data.lLRalesCreptsValue == 'Present' &&
            data.lLRalesCreptsPresentValue == 'Sub Scapular',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Sub Scapular',
            value: data.lLRalesCreptsPresentSubScapularValue),
      ),
      Visibility(
        visible: data.lLRalesCreptsValue == 'Present' &&
            data.lLRalesCreptsPresentValue == 'Sub Scapular' &&
            data.lLRalesCreptsPresentSubScapularValue == 'Fine',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Sub Scapular Fine',
            value: data.lLRalesCreptsPresentSubScapularFineValue),
      ),
      Visibility(
        visible: data.lLRalesCreptsValue == 'Present' &&
            data.lLRalesCreptsPresentValue == 'Sub Scapular' &&
            data.lLRalesCreptsPresentSubScapularValue == 'Coarse',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Sub Scapular Coarse',
            value: data.lLRalesCreptsPresentSubScapularCoarseValue),
      ),
      Visibility(
        visible: data.lLRalesCreptsValue == 'Present' &&
            data.lLRalesCreptsPresentValue == 'Diffuse',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Diffuse',
            value: data.lLRalesCreptsPresentDiffuseValue),
      ),
      Visibility(
        visible: data.lLRalesCreptsValue == 'Present' &&
            data.lLRalesCreptsPresentValue == 'Diffuse' &&
            data.lLRalesCreptsPresentDiffuseValue == 'Fine',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Diffuse Fine',
            value: data.lLRalesCreptsPresentDiffuseFineValue),
      ),
      Visibility(
        visible: data.lLRalesCreptsValue == 'Present' &&
            data.lLRalesCreptsPresentValue == 'Diffuse' &&
            data.lLRalesCreptsPresentDiffuseValue == 'Coarse',
        child: nameValueWidget(
            name: 'Rales/Crepts Present Diffuse Coarse',
            value: data.lLRalesCreptsPresentDiffuseCoarseValue),
      ),
      nameValueWidget(
          name: 'Rhonchi/Wheezing', value: data.lLRhonchiWheezingValue),
      Visibility(
        visible: data.lLRhonchiWheezingValue == 'Present',
        child: nameValueWidget(
            name: 'Rhonchi/Wheezing Present',
            value: data.lLRhonchiWheezingPresentValue),
      ),
      nameValueWidget(name: 'Added Sounds', value: data.lLAddedSoundsValue),
      Visibility(
        visible: data.lLAddedSoundsValue == ' Present',
        child: nameValueWidget(
            name: 'Added Sounds Present',
            value: data.lLAddedSoundsPresentValue),
      ),
      nameValueWidget(
          name: 'Zone Of Concern', value: data.lLAddedZoneOfConcernValue),
      Visibility(
        visible: data.lLAddedZoneOfConcernValue == 'Abnormal',
        child: nameValueWidget(
            name: 'Zone Of Concern Abnormal',
            value: data.lLAddedZoneOfConcernAbnormalValue),
      ),
      const CommonText(text: "Cardio-Vascular Systems"), Dimens.heightGap2,

      nameValueWidget(
          name: 'Do you get Palpitation?',
          value: data.cardioVascularSystemsDoYouGetPalpitationValue),
      nameValueWidget(
          name: 'Have you Fainted in the Home/School/ Workplace at any time?',
          value: data.cVSFaintedInHomeSchoolWorkplaceAtAnyTimeValue),
      nameValueWidget(
          name: 'Jugular Pulsations', value: data.cVSJugularPulsationsValue),
      Visibility(
        visible: data.cVSJugularPulsationsValue == 'Visible',
        child: nameValueWidget(
            name: 'Jugular Pulsations Visible',
            value: data.cVSJugularPulsationsVisibleValue),
      ),
      Visibility(
        visible: data.cVSJugularPulsationsValue == 'Visible' &&
            data.cVSJugularPulsationsVisibleValue == 'Abnormal',
        child: nameValueWidget(
            name: 'Jugular Pulsations Visible Abnormal',
            value: data.cVSJugularPulsationsVisibleAbnormalValue),
      ),
      nameValueWidget(
          name: 'Suprasternal Pulsations',
          value: data.cVSSuprasternalPulsationsValue),
      Visibility(
        visible: data.cVSSuprasternalPulsationsValue == 'Present',
        child: nameValueWidget(
            name: 'Suprasternal Pulsations Present',
            value: data.cVSSuprasternalPulsationsPresentValue),
      ),
      nameValueWidget(
          name: 'Peripheral Pulsations Radial',
          value: data.cVSPeripheralPulsationsRadialValue),
      Visibility(
        visible: data.cVSPeripheralPulsationsRadialValue == 'Present',
        child: nameValueWidget(
            name: 'Peripheral Pulsations Radial Present',
            value: data.cVSPeripheralPulsationsRadialPresentValue),
      ),
      Visibility(
        visible: data.cVSPeripheralPulsationsRadialValue == 'Present' &&
            data.cVSPeripheralPulsationsRadialPresentValue == 'Abnormal',
        child: nameValueWidget(
            name: 'Peripheral Pulsations Radial Present Abnormal',
            value: data.cVSPeripheralPulsationsRadialPresentAbnormalValue),
      ),
      nameValueWidget(
          name: 'Peripheral Pulsations Dorsalis Pedis',
          value: data.cVSPeripheralPulsationsDorsalisPedisValue),
      Visibility(
        visible: data.cVSPeripheralPulsationsDorsalisPedisValue == 'Present',
        child: nameValueWidget(
            name: 'Peripheral Pulsations Dorsalis Pedis Present',
            value: data.cVSPeripheralPulsationsDorsalisPedisPresentValue),
      ),
      Visibility(
        visible: data.cVSPeripheralPulsationsDorsalisPedisValue == 'Present' &&
            data.cVSPeripheralPulsationsDorsalisPedisPresentValue == 'Abnormal',
        child: nameValueWidget(
            name: 'Peripheral Pulsations Dorsalis Pedis Abnormal',
            value: data.cVSPeripheralPulsationsDorsalisPedisAbnormalValue),
      ),
      nameValueWidget(
          name: 'Peripheral Pulsations Other Abnormality',
          value: data.cVSPeripheralPulsationsOtherAbnormalityValue),
      nameValueWidget(name: 'S1', value: data.cvss1Value),
      nameValueWidget(name: 'S2', value: data.cvss2Value),
      nameValueWidget(name: 'S3', value: data.cvss3Value),
      nameValueWidget(name: 'Murmur', value: data.cVSMurmurValue),
      Visibility(
        visible: data.cVSMurmurValue == 'Present',
        child: nameValueWidget(
            name: 'Murmur Present', value: data.cVSMurmurPresentValue),
      ),
      Visibility(
        visible: data.cVSMurmurValue == 'Present' &&
            data.cVSMurmurPresentValue == 'Other',
        child: nameValueWidget(
            name: 'Murmur Present Other',
            value: data.cVSMurmurPresentOtherValue),
      ),
      nameValueWidget(name: 'Click', value: data.cVSClickValue),
      Visibility(
        visible: data.cVSClickValue == 'Present',
        child: nameValueWidget(
            name: 'Click Present Position',
            value: data.cVSClickPresentPositionValue),
      ),
      nameValueWidget(name: 'Apex Beat', value: data.cVSApexBeatValue),
      Visibility(
        visible: data.cVSApexBeatValue == 'Displaced',
        child: nameValueWidget(
            name: 'Apex Beat Present Displaced',
            value: data.cVSApexBeatPresentDisplacedValue),
      ),

      const CommonText(text: "Alimentary & Urinary System"), Dimens.heightGap2,

      nameValueWidget(
          name: 'Do you have Nausea/ Vomiting?"',
          value: data.alimentaryAndUrinarySystemDoYouHaveNauseaVomitingValue),
      nameValueWidget(
          name: 'Do you have pain in the Abdomen?',
          value: data.aUSDoYouHavePainInYourAbdomenValue),
      nameValueWidget(
          name: 'Do you have Burning sensation when you pass Urine?',
          value: data.aUSDoYouFeelBurningWhenYouPassUrineValue),
      nameValueWidget(name: 'Cleft Lip', value: data.aUSCleftLipValue),
      Visibility(
        visible: data.aUSCleftLipValue == 'Present',
        child: nameValueWidget(
            name: 'Cleft Lip Present', value: data.aUSCleftLipPresentValue),
      ),
      nameValueWidget(name: 'Cleft Palate', value: data.aUSCleftPalateValue),
      Visibility(
        visible: data.aUSCleftPalateValue == 'Present',
        child: nameValueWidget(
            name: 'Cleft Palate Present',
            value: data.aUSCleftPalatePresentValue),
      ),
      nameValueWidget(
          name: 'Abdominal Distension',
          value: data.aUSAbdominalDistensionValue),
      nameValueWidget(
          name: 'Exaggerated', value: data.aUSExaggerateBowelSoundsValue),
      nameValueWidget(name: 'Guarding', value: data.aUSGuardingValue),
      nameValueWidget(name: 'Rigidity', value: data.aUSRigidityValue),
      const CommonText(text: "Right Hypochondrium"),
      Dimens.heightGap2,
      nameValueWidget(name: 'Pain', value: data.aUSRightHypochondriumPainValue),
      Visibility(
        visible: data.aUSRightHypochondriumPainValue == 'Yes',
        child: nameValueWidget(
            name: 'Pain Score', value: "${data.aUSRHPainYesPainScoreValue}"),
      ),
      nameValueWidget(name: 'Tenderness', value: data.aUSRHTendernessValue),
      Visibility(
        visible: data.aUSRHTendernessValue == 'Present',
        child: nameValueWidget(
            name: 'Tenderness Present',
            value: data.aUSRHTendernessPresentValue),
      ),
      nameValueWidget(
          name: 'Swelling/Lumps', value: data.aUSRHSwellingLumpsValue),
      Visibility(
        visible: data.aUSRHSwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Description',
            value: data.aUSRHSwellingLumpsPresentDescriptionValue),
      ),
      Visibility(
        visible: data.aUSRHSwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Size',
            value: "${data.aUSRHSwellingLumpsPresentSizeValue}"),
      ),
      Visibility(
        visible: data.aUSRHSwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Texture',
            value: data.aUSRHSwellingLumpsPresentTextureValue),
      ),
      nameValueWidget(name: 'Liver', value: data.aUSRHLiverValue),
      Visibility(
        visible: data.aUSRHLiverValue == 'Palpable',
        child: nameValueWidget(
            name: 'Liver Palpable', value: data.aUSRHLiverPalpableValue),
      ),
      nameValueWidget(name: 'Gall Baldder', value: data.aUSRHGallBladderValue),
      Visibility(
        visible: data.aUSRHGallBladderValue == 'Tender',
        child: nameValueWidget(
            name: 'Pain Score', value: "${data.aUSRHGallBladderTenderValue}"),
      ),
      const CommonText(text: "Right Lumbar"), Dimens.heightGap2,

      nameValueWidget(name: 'Pain', value: data.aUSRightLumbarPainValue),
      Visibility(
        visible: data.aUSRightLumbarPainValue == 'Yes',
        child: nameValueWidget(
            name: 'Pain Score', value: "${data.aUSRLPainYesPainScoreValue}"),
      ),
      nameValueWidget(name: 'Tenderness', value: data.aUSRLTendernessValue),
      Visibility(
        visible: data.aUSRLTendernessValue == 'Present',
        child: nameValueWidget(
            name: 'Tenderness Present',
            value: data.aUSRLTendernessPresentValue),
      ),
      nameValueWidget(
          name: 'Swelling/Lumps', value: data.aUSRLSwellingLumpsValue),
      Visibility(
        visible: data.aUSRLSwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Description',
            value: data.aUSRLSwellingLumpsPresentDescriptionValue),
      ),
      Visibility(
        visible: data.aUSRLSwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Size',
            value: "${data.aUSRLSwellingLumpsPresentSizeValue}"),
      ),
      Visibility(
        visible: data.aUSRLSwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Texture',
            value: data.aUSRLSwellingLumpsPresentTextureValue),
      ),
      nameValueWidget(name: 'Right Kidney', value: data.aUSRLRightKidneyValue),
      Visibility(
        visible: data.aUSRLRightKidneyValue == 'Palpable',
        child: nameValueWidget(
            name: 'Right Kidney Palpable',
            value: data.aUSRLRightKidneyPalpableValue),
      ),
      const CommonText(text: "Right Iliac"), Dimens.heightGap2,

      nameValueWidget(name: 'Pain', value: data.aUSRightIliacPainValue),
      Visibility(
        visible: data.aUSRightIliacPainValue == 'Yes',
        child: nameValueWidget(
            name: 'Pain Score', value: "${data.aUSRIPainYesPainScoreValue}"),
      ),
      nameValueWidget(name: "Mc Burney's point", value: data.ausrimbpValue),
      Visibility(
        visible: data.ausrimbpValue == 'Tender',
        child: nameValueWidget(
            name: 'Pain Score', value: "${data.aUSRIMBPPainScoreValue}"),
      ),
      nameValueWidget(name: 'Tenderness', value: data.aUSRITendernessValue),
      Visibility(
        visible: data.aUSRITendernessValue == 'Present',
        child: nameValueWidget(
            name: 'Tenderness Present',
            value: data.aUSRITendernessPresentValue),
      ),
      nameValueWidget(
          name: 'Swelling/Lumps', value: data.aUSRISwellingLumpsValue),
      Visibility(
        visible: data.aUSRISwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Description',
            value: data.aUSRISwellingLumpsPresentDescriptionValue),
      ),
      Visibility(
        visible: data.aUSRISwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Size',
            value: "${data.aUSRISwellingLumpsPresentSizeValue}"),
      ),
      Visibility(
        visible: data.aUSRISwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Texture',
            value: data.aUSRISwellingLumpsPresentTextureValue),
      ),
      const CommonText(text: "Epigastric"), Dimens.heightGap2,

      nameValueWidget(name: 'Pain', value: data.aUSEpigastricPainValue),
      Visibility(
        visible: data.aUSEpigastricPainValue == 'Yes',
        child: nameValueWidget(
            name: 'Pain Score', value: "${data.aUSEPainYesPainScoreValue}"),
      ),
      nameValueWidget(name: 'Tenderness', value: data.aUSETendernessValue),
      Visibility(
        visible: data.aUSETendernessValue == 'Present',
        child: nameValueWidget(
            name: 'Tenderness Present', value: data.aUSETendernessPresentValue),
      ),
      Visibility(
        visible: data.aUSETendernessValue == 'Present Rebound',
        child: nameValueWidget(
            name: 'Tenderness Present Rebound',
            value: data.aUSETendernessPresentReboundValue),
      ),
      nameValueWidget(
          name: 'Swelling/Lumps', value: data.aUSESwellingLumpsValue),
      Visibility(
        visible: data.aUSESwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Description',
            value: data.aUSESwellingLumpsPresentDescriptionValue),
      ),
      Visibility(
        visible: data.aUSESwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Size',
            value: "${data.aUSESwellingLumpsPresentSizeValue}"),
      ),
      Visibility(
        visible: data.aUSESwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Texture',
            value: data.aUSESwellingLumpsPresentTextureValue),
      ),
      const CommonText(text: "Umbilical"), Dimens.heightGap2,

      nameValueWidget(name: 'Pain', value: data.aUSUmbilicalPainValue),
      Visibility(
        visible: data.aUSUmbilicalPainValue == 'Yes',
        child: nameValueWidget(
            name: 'Pain Score', value: "${data.aUSUPainYesPainScoreValue}"),
      ),
      nameValueWidget(name: 'Tenderness', value: data.aUSUTendernessValue),
      Visibility(
        visible: data.aUSUTendernessValue == 'Present',
        child: nameValueWidget(
            name: 'Tenderness Present', value: data.aUSUTendernessPresentValue),
      ),
      Visibility(
        visible: data.aUSUTendernessValue == 'Present Rebound',
        child: nameValueWidget(
            name: 'Tenderness Present Rebound',
            value: data.aUSUTendernessPresentReboundValue),
      ),
      nameValueWidget(
          name: 'Swelling/Lumps', value: data.aUSUSwellingLumpsValue),
      Visibility(
        visible: data.aUSUSwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Description',
            value: data.aUSUSwellingLumpsPresentDescriptionValue),
      ),
      Visibility(
        visible: data.aUSUSwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Size',
            value: "${data.aUSUSwellingLumpsPresentSizeValue}"),
      ),
      Visibility(
        visible: data.aUSUSwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Texture',
            value: data.aUSUSwellingLumpsPresentTextureValue),
      ),
      const CommonText(text: "Suprapubic"), Dimens.heightGap2,

      nameValueWidget(name: 'Pain', value: data.aUSSuprapubicPainValue),
      Visibility(
        visible: data.aUSSuprapubicPainValue == 'Yes',
        child: nameValueWidget(
            name: 'Pain Score', value: "${data.aUSSPainYesPainScoreValue}"),
      ),
      nameValueWidget(name: 'Tenderness', value: data.aUSSTendernessValue),
      Visibility(
        visible: data.aUSSTendernessValue == 'Present',
        child: nameValueWidget(
            name: 'Tenderness Present', value: data.aUSSTendernessPresentValue),
      ),
      Visibility(
        visible: data.aUSSTendernessValue == 'Present Rebound',
        child: nameValueWidget(
            name: 'Tenderness Present Rebound',
            value: data.aUSSTendernessPresentReboundValue),
      ),
      nameValueWidget(
          name: 'Swelling/Lumps', value: data.aUSSSwellingLumpsValue),
      Visibility(
        visible: data.aUSSSwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Description',
            value: data.aUSSSwellingLumpsPresentDescriptionValue),
      ),
      Visibility(
        visible: data.aUSSSwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Size',
            value: "${data.aUSSSwellingLumpsPresentSizeValue}"),
      ),
      Visibility(
        visible: data.aUSSSwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Texture',
            value: data.aUSSSwellingLumpsPresentTextureValue),
      ),
      nameValueWidget(name: 'Uterus', value: data.aUSSUterusValue),
      nameValueWidget(
          name: 'Uterus Palpable', value: data.aUSSUterusPalpableValue),
      const CommonText(text: "Left Hypochondrium"),
      Dimens.heightGap2,
      nameValueWidget(name: 'Pain', value: data.aUSLeftHypochondriumPainValue),
      Visibility(
        visible: data.aUSLeftHypochondriumPainValue == 'Yes',
        child: nameValueWidget(
            name: 'Pain Score', value: "${data.aUSLHPainYesPainScoreValue}"),
      ),
      nameValueWidget(name: 'Tenderness', value: data.aUSLHTendernessValue),
      Visibility(
        visible: data.aUSLHTendernessValue == 'Present',
        child: nameValueWidget(
            name: 'Tenderness Present',
            value: data.aUSLHTendernessPresentValue),
      ),
      nameValueWidget(
          name: 'Swelling/Lumps', value: data.aUSLHSwellingLumpsValue),
      Visibility(
        visible: data.aUSLHSwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Description',
            value: data.aUSLHSwellingLumpsPresentDescriptionValue),
      ),
      Visibility(
        visible: data.aUSLHSwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Size',
            value: "${data.aUSLHSwellingLumpsPresentSizeValue}"),
      ),
      Visibility(
        visible: data.aUSLHSwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Texture',
            value: data.aUSLHSwellingLumpsPresentTextureValue),
      ),
      nameValueWidget(name: 'Spleen', value: data.aUSLHSpleenValue),
      Visibility(
        visible: data.aUSLHSpleenValue == 'Palpable',
        child: nameValueWidget(
            name: 'Spleen Palpable', value: data.aUSLHSpleenPalpableValue),
      ),
      const CommonText(text: "Left Lumbar"), Dimens.heightGap2,

      nameValueWidget(name: 'Pain', value: data.aUSLeftLumbarPainValue),
      Visibility(
        visible: data.aUSLeftLumbarPainValue == 'Yes',
        child: nameValueWidget(
            name: 'Pain Score', value: "${data.aUSLLPainYesPainScoreValue}"),
      ),
      nameValueWidget(name: 'Tenderness', value: data.aUSLLTendernessValue),
      Visibility(
        visible: data.aUSLLTendernessValue == 'Present',
        child: nameValueWidget(
            name: 'Tenderness Present',
            value: data.aUSLLTendernessPresentValue),
      ),
      nameValueWidget(
          name: 'Swelling/Lumps', value: data.aUSLLSwellingLumpsValue),
      Visibility(
        visible: data.aUSLLSwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Description',
            value: data.aUSLLSwellingLumpsPresentDescriptionValue),
      ),
      Visibility(
        visible: data.aUSLLSwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Size',
            value: "${data.aUSLLSwellingLumpsPresentSizeValue}"),
      ),
      Visibility(
        visible: data.aUSLLSwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Texture',
            value: data.aUSLLSwellingLumpsPresentTextureValue),
      ),
      nameValueWidget(name: 'Left Kidney', value: data.aUSLLLeftKidneyValue),
      Visibility(
        visible: data.aUSLLLeftKidneyValue == 'Palpable',
        child: nameValueWidget(
            name: 'Left Kidney Palpable',
            value: data.aUSLLLeftKidneyPalpableValue),
      ),
      const CommonText(text: "Left Iliac"), Dimens.heightGap2,

      nameValueWidget(name: 'Pain', value: data.aUSLeftIliacPainValue),
      Visibility(
        visible: data.aUSLeftIliacPainValue == 'Yes',
        child: nameValueWidget(
            name: 'Pain Score', value: "${data.aUSLIPainYesPainScoreValue}"),
      ),
      nameValueWidget(name: 'Tenderness', value: data.aUSLITendernessValue),
      Visibility(
        visible: data.aUSLITendernessValue == 'Present',
        child: nameValueWidget(
            name: 'Tenderness Present',
            value: data.aUSLITendernessPresentValue),
      ),
      nameValueWidget(
          name: 'Swelling/Lumps', value: data.aUSLISwellingLumpsValue),
      Visibility(
        visible: data.aUSLISwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Description',
            value: data.aUSLISwellingLumpsPresentDescriptionValue),
      ),
      Visibility(
        visible: data.aUSLISwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Size',
            value: "${data.aUSLISwellingLumpsPresentSizeValue}"),
      ),
      Visibility(
        visible: data.aUSLISwellingLumpsValue == 'Present',
        child: nameValueWidget(
            name: 'Swelling/Lumps Texture',
            value: data.aUSLISwellingLumpsPresentTextureValue),
      ),
      nameValueWidget(name: 'Hernia', value: data.aUSHerniaValue),
      Visibility(
        visible: data.aUSHerniaValue == 'Present',
        child: nameValueWidget(
            name: 'Hernia Present', value: data.aUSHerniaPresentValue),
      ),
      nameValueWidget(
          name: 'Urinary Bladder', value: data.aUSUrinaryBladderValue),
      Visibility(
        visible: data.aUSUrinaryBladderValue == 'Palpable',
        child: nameValueWidget(
            name: 'Urinary Bladder Palpable',
            value: data.aUSUrinaryBladderPalpableValue),
      ),

      ///Girls
      const CommonText(text: "Pubertal Assessment-Girls"), Dimens.heightGap2,

      nameValueWidget(name: '', value: data.pubertalAssessmentGirlsValue),
      nameValueWidget(name: 'Tanner Score', value: data.pAGTannerScoreValue),
      nameValueWidget(
          name: 'Menarche Attained (In Years)',
          value: data.pAGMenarcheAttainedValue),
      Visibility(
        visible: data.pAGMenarcheAttainedValue == 'Yes',
        child: nameValueWidget(
            name: 'Age Of Menarche', value: data.pAGMAYesAgeOfMenarcheValue),
      ),
      Visibility(
        visible: data.pAGMenarcheAttainedValue == 'Yes',
        child:
            nameValueWidget(name: 'LMP Date', value: data.pAGMAYesLMPDateValue),
      ),
      Visibility(
        visible: data.pAGMenarcheAttainedValue == 'Yes',
        child: nameValueWidget(
            name: 'Regularity', value: data.pAGMAYesCharacterRegularityValue),
      ),
      Visibility(
        visible: data.pAGMenarcheAttainedValue == 'Yes',
        child: nameValueWidget(
            name: 'Frequency In Days',
            value: data.pAGMAYesCharacterFrequencyInDaysValue),
      ),
      Visibility(
        visible: data.pAGMenarcheAttainedValue == 'Yes',
        child: nameValueWidget(
            name: 'Duration In Days', value: data.pAGMAYesDurationInDaysValue),
      ),
      Visibility(
        visible: data.pAGMenarcheAttainedValue == 'Yes',
        child: nameValueWidget(name: 'Flow', value: data.pAGMAYesFlowValue),
      ),
      Visibility(
        visible: data.pAGMenarcheAttainedValue == 'Yes',
        child:
            nameValueWidget(name: 'Comfort', value: data.pAGMAYesComfortValue),
      ),
      Visibility(
        visible: data.pAGMenarcheAttainedValue == 'Yes',
        child: nameValueWidget(
            name: 'Pain In Other Parts Of The Body During Menses',
            value: data.pAGMAYesPainInOtherPartsOfBodyDuringMensesValue),
      ),
      Visibility(
        visible: data.pAGMenarcheAttainedValue == 'Yes' &&
            data.pAGMAYesPainInOtherPartsOfBodyDuringMensesValue == 'Yes',
        child: nameValueWidget(
            name: 'Pain In Other Parts Of The Body During Menses Yes',
            value: data.pAGMAYesPainInOtherPartsOfBodyDuringMensesYesValue),
      ),
      Visibility(
        visible: data.pAGMenarcheAttainedValue == 'Yes' &&
            data.pAGMAYesPainInOtherPartsOfBodyDuringMensesValue == 'Yes' &&
            data.pAGMAYesPainInOtherPartsOfBodyDuringMensesYesValue == 'Other',
        child: nameValueWidget(
            name: 'Pain In Other Parts Of The Body During Menses Other',
            value: data.pAGMAYesPainInOtherPartsBodyDuringMensesYesOtherValue),
      ),
      nameValueWidget(
          name: 'Cracking In Voice Or Change In Voice',
          value: data.pAGYesCrackingOfVoiceOrChnageInVoiceValue),
      nameValueWidget(
          name: 'Have You Experienced A Change In Behaviour Recently',
          value: data.pAGHaveYouExperiencedAChangeInBehaviourRecentlyValue),
      Visibility(
        visible:
            data.pAGHaveYouExperiencedAChangeInBehaviourRecentlyValue == 'Yes',
        child: nameValueWidget(
            name: 'Have You Experienced A Change In Behaviour Recently Yes',
            value: data.pAGChangeBehaviourYesValue),
      ),
      Visibility(
        visible: data.pAGHaveYouExperiencedAChangeInBehaviourRecentlyValue ==
                'Yes' &&
            data.pAGChangeBehaviourYesValue == 'Quiet and Withdrawn',
        child: nameValueWidget(
            name: 'Quiet and Withdrawn',
            value: data.pAGChangeBehaviourYesQuietWithdrawnValue),
      ),
      Visibility(
        visible: data.pAGHaveYouExperiencedAChangeInBehaviourRecentlyValue ==
                'Yes' &&
            data.pAGChangeBehaviourYesValue == 'Outgoing',
        child: nameValueWidget(
            name: 'Outgoing', value: data.pAGChangeBehaviourOutgoingValue),
      ),
      Visibility(
        visible: data.pAGHaveYouExperiencedAChangeInBehaviourRecentlyValue ==
                'Yes' &&
            data.pAGChangeBehaviourYesValue == 'Aggressive',
        child: nameValueWidget(
            name: 'Aggressive', value: data.pAGChangeBehaviourAggressiveValue),
      ),
      Visibility(
        visible: data.pAGHaveYouExperiencedAChangeInBehaviourRecentlyValue ==
                'Yes' &&
            data.pAGChangeBehaviourYesValue == 'Bold and Daring',
        child: nameValueWidget(
            name: 'Bold and Daring',
            value: data.pAGChangeBehaviourBoldAndDaringValue),
      ),
      Visibility(
        visible: data.pAGHaveYouExperiencedAChangeInBehaviourRecentlyValue ==
                'Yes' &&
            data.pAGChangeBehaviourYesValue == 'Careless',
        child: nameValueWidget(
            name: 'Careless', value: data.pAGChangeBehaviourCarelessValue),
      ),
      nameValueWidget(
          name: 'Prefer company of', value: data.pAGPreferCompanyOfValue),
      nameValueWidget(
          name:
              'Any Abnormal finding: eg- Breast Lump, Testicular Lump, Abnormal Genitalia, Pain, Discharge etc',
          value: data.pAGAnyOtherAbnormalFindingValue),
      Visibility(
        visible: data.pAGAnyOtherAbnormalFindingValue == 'Yes',
        child: nameValueWidget(
            name:
                'Any Abnormal finding: eg- Breast Lump, Testicular Lump, Abnormal Genitalia, Pain, Discharge etc Yes',
            value: data.pAGAnyOtherAbnormalFindingYesValue),
      ),

      Visibility(
        visible: StudentInfo.getGender() == 'Male' &&
            StudentInfo.calculateAge() >= 5,
        child: Column(
          children: [
            const CommonText(text: "Pubertal Assessment-Boys"),
            Dimens.heightGap2,
            Visibility(
                visible: StudentInfo.calculateAge() >= 5 &&
                    StudentInfo.calculateAge() < 18,
                child: nameValueWidget(
                    name: '', value: data.pubertalAssessmentBoysValue)),
            nameValueWidget(
                name: 'Tanner Score', value: data.pABTannerScoreValue),
            nameValueWidget(
                name: 'Cracking In Voice Or Change In Voice',
                value: data.pABYesCrackingOfVoiceOrChnageInVoiceValue),
            nameValueWidget(
                name: 'Nightly Emissions',
                value: data.pABNightlyEmissionsValue),
            nameValueWidget(
                name: 'Have You Experienced A Change In Behaviour Recently',
                value:
                    data.pABHaveYouExperiencedAChangeInBehaviourRecentlyValue),
            Visibility(
              visible:
                  data.pABHaveYouExperiencedAChangeInBehaviourRecentlyValue ==
                      'Yes',
              child: Column(
                children: [
                  nameValueWidget(
                      name:
                          'Have You Experienced A Change In Behaviour Recently Yes',
                      value: data.pABChangeBehaviourYesValue),
                  Visibility(
                    visible: data.pABChangeBehaviourYesValue
                        .contains('Quiet and Withdrawn'),
                    child: nameValueWidget(
                        name: 'Quiet and Withdrawn',
                        value: data.pABChangeBehaviourYesQuietWithdrawnValue),
                  ),
                  Visibility(
                    visible:
                        data.pABChangeBehaviourYesValue.contains('Outgoing'),
                    child: nameValueWidget(
                        name: 'Outgoing',
                        value: data.pABChangeBehaviourOutgoingValue),
                  ),
                  Visibility(
                    visible:
                        data.pABChangeBehaviourYesValue.contains('Aggressive'),
                    child: nameValueWidget(
                        name: 'Aggressive',
                        value: data.pABChangeBehaviourAggressiveValue),
                  ),
                  Visibility(
                    visible: data.pABChangeBehaviourYesValue
                        .contains('Bold and Daring'),
                    child: nameValueWidget(
                        name: 'Bold and Daring',
                        value: data.pABChangeBehaviourBoldAndDaringValue),
                  ),
                  Visibility(
                    visible:
                        data.pABChangeBehaviourYesValue.contains('Careless'),
                    child: nameValueWidget(
                        name: 'Careless',
                        value: data.pABChangeBehaviourCarelessValue),
                  ),
                ],
              ),
            ),
            nameValueWidget(
                name: 'Do you prefer company of',
                value: data.pABPreferCompanyOfValue),
            nameValueWidget(
                name:
                    'Any Abnormal finding: eg- Breast Lump, Testicular Lump, Abnormal Genitalia, Pain, Discharge etc',
                value: data.pABAnyOtherAbnormalFindingValue),
            Visibility(
              visible: data.pABAnyOtherAbnormalFindingValue == 'Yes',
              child: nameValueWidget(
                  name:
                      'Any Abnormal finding: eg- Breast Lump, Testicular Lump, Abnormal Genitalia, Pain, Discharge etc Yes',
                  value: data.pABAnyOtherAbnormalFindingYesValue),
            ),
          ],
        ),
      ),
      const CommonText(text: "History Of Medication"),
      Dimens.heightGap2,
      nameValueWidget(name: 'Medication', value: data.historyOfMedicationValue),
      Visibility(
        visible: data.historyOfMedicationYesValue == 'Yes',
        child: nameValueWidget(
            name: 'Medication Yes', value: data.historyOfMedicationYesValue),
      ),
      Visibility(
        visible: data.historyOfMedicationYesValue == 'Yes',
        child: nameValueWidget(
            name: 'Name Of Medication', value: data.nameOfMedicationValue),
      ),
      Visibility(
        visible: data.otherObservationsValue.isNotEmpty,
        child: nameValueWidget(
            name: 'Other Observations', value: data.otherObservationsValue),
      ),
      nameValueWidget(
          name: 'Specialist Referral Recommended',
          value: data.specialistReferralNeededValue),
      Visibility(
        visible: data.specialistReferralNeededValue == 'Yes',
        child: Column(
          children: [
            nameValueWidget(
                name: 'Type', value: data.specialistReferralNeededTypeValue),
            Visibility(
                visible:
                    data.specialistReferralNeededTypeValue.contains('Other'),
                child: nameValueWidget(name: 'Other', value: data.otherValue)),
            nameValueWidget(
                name: 'Flag ', value: data.specialistReferralNeededFlagValue),
          ],
        ),
      )
    ]));
  }
}

Widget nameValueWidget({required String name, required String value}) {
  return Column(
    children: [
      Row(
        children: [
          Expanded(child: Text('$name', style: AppStyles.tsBlackMedium18)),
          const Expanded(child: Text(':', style: AppStyles.tsBlackMedium18)),
          Expanded(child: Text(value, style: AppStyles.tsBlackMedium18)),
        ],
      ),
      Dimens.heightGap2,
    ],
  );
}
