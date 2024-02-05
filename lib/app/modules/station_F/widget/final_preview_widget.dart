import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_F/widget/F_preview_model.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/common_text.dart';
import '../../../data/values/app_string.dart';
import '../controllers/station_f_controller.dart';

class FinalFPreviewWidget extends GetView<StationFController> {
  final StationFPreviewModel data;
  const FinalFPreviewWidget({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const CommonText(text: "Skin"),
          const SizedBox(height: Dimens.gapX2),
          nameValueWidget(name: "Skin Color / Tone", value: data.skinColorValue),
          const SizedBox(height: Dimens.gapX2),
          Visibility(
                visible: data.skinColorValue == 'Abnormal' ,
                child: nameValueWidget(
              name: "Skin Color / Tone Abnormal",
              value: data.skinColorAbnormalValue),
              ),
          nameValueWidget(name: "Texture of Skin", value: data.skinTextureValue),
          const SizedBox(height: Dimens.gapX2),
          Visibility(
                visible:  data.skinTextureValue == 'Abnormal',
                child: nameValueWidget(
              name: "Texture of Skin Abnormal",
              value: data.skinTextureAbnormalValue),
          ),
          nameValueWidget(name: "Rash", value: data.rashValue),
          const SizedBox(height: Dimens.gapX2),
          Visibility(
                visible: data.rashValue =='Present',
                child: nameValueWidget(name: "Rash Present", value: data.rashPresentValue),
          ),
          Visibility(
                visible : data.rashValue =='Present' && controller.selectedRashPresent.contains('Face'),
                child: nameValueWidget(
              name: "Rash Present Face", value: data.skinRashPresentFaceValue),
          ),
          Visibility(
                visible :  data.rashValue =='Present' && controller.selectedRashPresent.contains('Neck'),
                child: nameValueWidget(
              name: "Rash Present Neck", value: data.skinRashPresentNeckValue),
          ),
          Visibility(
                visible : data.rashValue =='Present' && controller.selectedRashPresent.contains('Chest'),
                child: nameValueWidget(
              name: "Rash Present chest", value: data.skinRashPresentChestValue),
          ),
          Visibility(
                visible : data.rashValue =='Present' && controller.selectedRashPresent.contains('Abdomen'),
              child:
          nameValueWidget(
              name: "Rash Present Abdomen",
              value: data.skinRashPresentAbdomenValue),
          ),
          Visibility(
                visible : data.rashValue =='Present' && controller.selectedRashPresent.contains('Groin'),
              child:
          nameValueWidget(
              name: "Rash Present Groin", value: data.skinRashPresentGroinValue),
          ),
          Visibility(
                visible : data.rashValue =='Present' && controller.selectedRashPresent.contains('Back'),
              child:
          nameValueWidget(
              name: "Rash Present Back", value: data.skinRashPresentBackValue),
          ),
          Visibility(
                visible : data.rashValue =='Present' && controller.selectedRashPresent.contains('Arms'),
                child:
          nameValueWidget(
              name: "Rash Present Arms", value: data.skinRashPresentArmsValue),
          ),
          Visibility(
                visible : data.rashValue =='Present' && controller.selectedRashPresent.contains('Hands'),
                child:
          nameValueWidget(
              name: "Rash Present Hands", value: data.skinRashPresentHandsValue),
          ),
          Visibility(
                visible : data.rashValue =='Present' && controller.selectedRashPresent.contains('Legs'),
                child:
          nameValueWidget(
              name: "Rash Present Legs", value: data.skinRashPresentLegsValue),
          ),
          Visibility(
                visible : data.rashValue =='Present' && controller.selectedRashPresent.contains('Feet'),
                child:
          nameValueWidget(
              name: "Rash Present Feet", value: data.skinRashPresentFeetValue),
          ),
          nameValueWidget(
              name: "Other Skin lesions", value: data.otherSkinLesionsValue),
          const SizedBox(height: Dimens.gapX2),
          //    selectedOtherSkinLesions1
              Visibility(
                   visible: data.otherSkinLesionsValue =='Yes' ,
                    child:
          nameValueWidget(
              name: "Other Skin lesions Yes", value: data.otherSkinLesionsYesValue),
              ),
          Visibility(
               visible: data.otherSkinLesionsValue =='Yes' &&  controller.selectedOtherSkinLesions1.contains('Other'),
                child:
          nameValueWidget(
              name: "Other Skin lesions Yes Other",
              value: data.otherSkinLesionsYesOtherValue),
          ),
          Visibility(
               visible: data.otherSkinLesionsValue =='Yes' && controller.selectedOtherSkinLesions1.contains('Birth marks'),
                    child:
          nameValueWidget(
              name: "Other Skin lesions Yes BirthMarks",
              value: data.otherSkinLesionsYesBirthMarksValue),
          ),
          Visibility(
                visible:  data.otherSkinLesionsValue =='Yes' && controller.selectedOtherSkinLesions1.contains('Birth marks') &&
                    data.otherSkinLesionsYesBirthMarksValue =='Other',
                child:
          nameValueWidget(
              name: "Other Skin lesions Yes BirthMarks other",
              value: data.otherSkinLesionsYesBirthMarksOtherValue),
          ),

          nameValueWidget(name: "Acne", value: data.acneValue),
          Visibility(
                visible:  data.acneValue =='Yes',
                child:
          nameValueWidget(name: "Acne Yes", value: data.acneYesValue),
          ),
          const SizedBox(height: Dimens.gapX2),
          nameValueWidget(name: "Color", value: data.nailsColorValue),
          Visibility(
                visible: data.shapeNormalValue == 'Abnormal',
                child:
          nameValueWidget(name: "Shape Abnormal", value: data.shapeAbnormalValue),
          ),
          nameValueWidget(
              name: "Deformity / Surface", value: data.deformitySurfaceValue),
          Visibility(
                visible: data.deformitySurfaceValue =='Yes',
                child:
          nameValueWidget(
              name: "Deformity / Surface Yes",
              value: data.deformitySurfaceYesValue),
          ),
          nameValueWidget(name: "Cuticles", value: data.cuticlesValue),
          nameValueWidget(name: "Nail Bed Infection", value: data.nailBedValue),
          const CommonText(text: "Head"),
          const SizedBox(height: Dimens.gapX2),
          Text("Skull", style: AppStyles.tsBlackMedium18),
          Padding(
              padding: const EdgeInsets.only(left: Dimens.gapX2),
              child: nameValueWidget(
                  name: "Fontanelle", value: data.fontanelleSkullValue)),
          Visibility(
                visible: data.fontanelleSkullValue =='Open',
                child:
          Padding(
              padding: const EdgeInsets.only(left: Dimens.gapX2),
              child: nameValueWidget(
                  name: "Fontanelle Open", value: data.fontanelleSkullOpenValue)),
          ),
          Visibility(
                visible:  controller.selectedSkullFontanella.contains('Frontal Fontanella'),
                child:
          Padding(
              padding: const EdgeInsets.only(left: Dimens.gapX2),
              child: nameValueWidget(
                  name: "Fontanelle Open Fontanella",
                  value: data.fontanelleSkullOpenFontanellaValue)),
          ),
          Visibility(
                visible:  controller.selectedSkullFontanella.contains('Occipital Fontanella'),
                child:
          Padding(
              padding: const EdgeInsets.only(left: Dimens.gapX2),
              child: nameValueWidget(
                  name: "Fontanelle Open Occipital",
                  value: data.fontanelleSkullOpenOccipitalValue)),
          ),
          Padding(
              padding: const EdgeInsets.only(left: Dimens.gapX2),
              child: nameValueWidget(
                  name: "Appearance & Size", value: data.appearanceSizeValue)),
          Visibility(
               visible: data.appearanceSizeValue =='Other',
                child:
          Padding(
              padding: const EdgeInsets.only(left: Dimens.gapX2),
              child: nameValueWidget(
                  name: "Appearance & Size Other",
                  value: data.appearanceSizeOtherValue)),
          ),
          nameValueWidget(name: "Hair Appearance", value: data.hairAppearanceValue),
          const SizedBox(height: Dimens.gapX2),
          Visibility(
              visible: data.hairAppearanceValue == 'Abnormal',child:
          nameValueWidget(
              name: "Hair Appearance Abnormal",
              value: data.hairAppearanceAbnormalValue),
          ),
          Visibility(
                visible:  data.hairAppearanceValue == 'Abnormal'  &&  data.hairAppearanceAbnormalValue =='Other',
                child:
          nameValueWidget(
              name: "Hair Appearance Abnormal Other",
              value: data.hairAppearanceAbnormalOtherValue),
          ),
          const SizedBox(height: Dimens.gapX2),
          nameValueWidget(name: "Scalp", value: data.scalpValue),
          const SizedBox(height: Dimens.gapX2),
          Visibility(
                visible: data.scalpValue == 'Abnormal',
                child:
          nameValueWidget(name: "Scalp Abnormal", value: data.scalpAbnormalValue),
          ),
          nameValueWidget(name: "Parasites", value: data.parasitesValue),
          const SizedBox(height: Dimens.gapX2),
          Visibility(
                visible: data.parasitesValue == 'Yes',
                child:
          nameValueWidget(name: "Parasites Yes", value: data.parasitesYesValue),
          ),
          Visibility(
                visible: data.parasitesValue == 'Yes' && data.parasitesYesValue == 'Other' ,
              child:
          nameValueWidget(
              name: "Parasites Yes Other", value: data.parasitesYesOtherValue),
          ),
          nameValueWidget(name: "Hair Loss", value: data.hairLossValue),
          const SizedBox(height: Dimens.gapX2),
          Visibility(
                visible: data.hairLossValue =='Yes',
                child:
          nameValueWidget(name: "Hair Loss yes", value: data.hairLossYesValue),
          ),
          const CommonText(text: "Thyroid Glands & Lymph Nodes"),
          nameValueWidget(name: "Thyroid Glands", value: data.thyroidGlandsValue),
          Visibility(
                visible: data.thyroidGlandsValue == 'Abnormal',
                child:
          nameValueWidget(
              name: "Thyroid Glands Enlarged",
              value: data.thyroidLymphThyroidGlandEnlargedValue),
          ),
          nameValueWidget(name: "Cervical LN", value: data.cervicalValue),
          const SizedBox(height: Dimens.gapX2),
          Visibility(
                visible: data.cervicalValue =='Palpable' ,
                child:
          nameValueWidget(
              name: "Cervical LN Palpable", value: data.cervicalPalpableValue),
          ),
          nameValueWidget(
              name: "Supraclavicular LN",
              value: data.notPalpableSupraclavicularValue),
          const SizedBox(height: Dimens.gapX2),
          Visibility(
                visible:  data.notPalpableSupraclavicularValue =='Palpable' ,
                child:
          nameValueWidget(
              name: "Supraclavicular LN Palpable",
              value: data.palpableSupraclavicularValue),
          ),
          nameValueWidget(
              name: "Axillary LN", value: data.notPalpableAxillaryValue),
          const SizedBox(height: Dimens.gapX2),
          Visibility(
                visible: data.notPalpableAxillaryValue == 'Palpable',
                child:
          nameValueWidget(
              name: "Axillary LN Palpable", value: data.palpableAxillaryValue),
          ),
          nameValueWidget(
              name: "Supratrochlear LN",
              value: data.notPalpableSupratrochlearValue),
          Visibility(
                visible: data.notPalpableSupratrochlearValue == 'Palpable',
                child:
          nameValueWidget(
              name: "Supratrochlear LN Palpable",
              value: data.palpableSupratrochlearValue),
          ),
          nameValueWidget(
              name: "Inguinal LN", value: data.notPalpableInguinalValue),
          const SizedBox(height: Dimens.gapX2),
          Visibility(
                visible: data.notPalpableInguinalValue =='Palpable',
                child:
          nameValueWidget(
              name: "Inguinal LN Palpable", value: data.palpableInguinalValue),
          ),
          const CommonText(text: "Eyes"),
          const SizedBox(height: Dimens.gapX2),
          nameValueWidget(name: "Conjuctiva", value: data.conjuctivaValue),
          nameValueWidget(name: "Sclera", value: data.scleraValue),
          nameValueWidget(name: "Discharge", value: data.dischargeValue),
          Visibility(
                visible : data.dischargeValue == 'Yes',
                child:
          nameValueWidget(name: "Discharge Yes", value: data.dischargeYesValue),
          ),
          Visibility(
                visible: data.dischargeValue == 'Yes' && data.dischargeYesRightValue =='Yes',
                child:
          nameValueWidget(
              name: "Discharge Yes Right", value: data.dischargeYesRightValue),
          ),
          Visibility(
                visible: data.dischargeValue == 'Yes' && data.dischargeYesLeftValue =='Yes',
                child:
          nameValueWidget(
              name: "Discharge Yes Left", value: data.dischargeYesLeftValue),
          ),
          nameValueWidget(name: "Eyelids", value: data.eyelidValue),
              Visibility(
                  visible: data.eyelidValue == 'Abnormal',
                    child:
                    nameValueWidget(name: "Eyelid Abnormal", value: data.eyelidAbnormalValue),
          ),
          const CommonText(text: "Ears"),
          const SizedBox(height: Dimens.gapX2),
          nameValueWidget(name: "Hearing", value: data.hearingValue),
          Visibility(
                visible: data.hearingValue=='Abnormal' ,
                child:
          nameValueWidget(
              name: "Hearing Abnormal", value: data.hearingAbnormalValue),
          ),
          Visibility(
                 visible: data.hearingValue=='Abnormal' &&  data.hearingAbnormalReducedValue == 'Yes',
                child:
          nameValueWidget(
              name: "Hearing Abnormal Reduced",
              value: data.hearingAbnormalReducedValue),
          ),
          Visibility(
              visible: data.hearingValue=='Abnormal' &&  data.hearingAbnormalReducedValue == 'Yes'
                  && data.hearingAbnormalReducedWearsHearingValue == 'Yes',
                child:
          nameValueWidget(
              name: "Hearing Reduced WearsHearing",
              value: data.hearingAbnormalReducedWearsHearingValue),
          ),
          Visibility(
                visible: data.hearingValue=='Abnormal' && data.hearingAbnormalReducedValue == 'Yes'&&
                    data.hearingAbnormalReducedWearsHearingYesValue =='Yes',
              child:
          nameValueWidget(
              name: "Hearing Reduced WearsHearing Yes" ,
              value: data.hearingAbnormalReducedWearsHearingYesValue),
          ),
          Visibility(
                visible: data.hearingValue=='Abnormal' &&  data.hearingAbnormalOtherValue == 'Othr',
                child:
          nameValueWidget(
              name: "Hearing Abnormal Other",
              value: data.hearingAbnormalOtherValue),
          ),
          nameValueWidget(
              name: "Discharge Hearing", value: data.dischargeHearingValue),
          const SizedBox(height: Dimens.gapX2),
          Visibility(
                visible:  data.dischargeHearingValue =='Yes',
                child:
          nameValueWidget(
              name: "Discharge Hearing Yes", value: data.dischargeHearingYesValue),
          ),
          Visibility(
                visible:  data.dischargeHearingValue =='Yes' &&  data.dischargeHearingYesRightValue =='Yes',
                child:
          nameValueWidget(
              name: "Discharge Hearing Yes Right",
              value: data.dischargeHearingYesRightValue),
          ),
          Visibility(
              visible:  data.dischargeHearingValue =='Yes' &&  data.dischargeHearingYesLeftValue == 'Yes',
                  child:
          nameValueWidget(
              name: "Discharge Hearing Yes Left",
              value: data.dischargeHearingYesLeftValue),
          ),
          nameValueWidget(name: "Wax", value: data.waxValue),
          Visibility(
                visible: data.waxValue =='Present' ,
                child:
          nameValueWidget(name: "Wax", value: data.waxPresentValue),
          ),
          nameValueWidget(name: "Eardrum", value: data.eardrumValue),
          Visibility(
                visible: data.eardrumValue =='Abnormal',
                child:
          nameValueWidget(
              name: "Eardrum Abnormal", value: data.eardrumAbnormalValue),
          ),
          Visibility(
                visible:  data.eardrumValue =='Abnormal' && data.eardrumAbnormalValue =='Right Ear'  ,
                child:
          nameValueWidget(
              name: "Eardrum Abnormal Right",
              value: data.eardrumAbnormalRightValue),
          ),
          Visibility(
              visible:  data.eardrumValue =='Abnormal' && data.eardrumAbnormalValue =='Left Ear',
              child:
          nameValueWidget(
              name: "Eardrum Abnormal left", value: data.eardrumAbnormalLeftValue),
          ),
          const CommonText(text: "Nose"),
          const SizedBox(height: Dimens.gapX2),
          nameValueWidget(name: "Discharge", value: data.noseDischargeValue),
          Visibility(
                visible:  data.noseDischargeValue =='Yes',
                child:
          nameValueWidget(
              name: "Discharge Nose Yes", value: data.noseDischargeYesValue),
          ),
          Visibility(
                visible:  data.noseDischargeValue =='Yes' &&  data.noseDischargeYesValue =='Right Nostril',
                child:
          nameValueWidget(
              name: "Discharge Nose Yes Right",
              value: data.noseDischargeYesRightValue),
          ),
          Visibility(
                visible:  data.noseDischargeValue =='Yes' &&  data.noseDischargeYesValue =='Left Nostril',
                child:
          nameValueWidget(
              name: "Discharge Nose Yes Left",
              value: data.noseDischargeYesLeftValue),
          ),
          nameValueWidget(name: "Dryness", value: data.drynessValue),
          const SizedBox(height: Dimens.gapX2),
          Visibility(
                visible: data.drynessValue =='Yes' ,
                child:
          nameValueWidget(name: "Dryness yes", value: data.drynessYesValue),
          ),
          nameValueWidget(name: "Crusting", value: data.crustingValue),
          const SizedBox(height: Dimens.gapX2),
          Visibility(
                visible: data.crustingValue =='Yes',
                child:
          nameValueWidget(name: "Crusting Yes", value: data.crustingYesValue),
          ),
          nameValueWidget(name: "Polyps", value: data.polypsValue),
          const SizedBox(height: Dimens.gapX2),
          Visibility(
                visible: data.polypsValue == 'Yes',
                child:
          nameValueWidget(name: "Polyps Yes", value: data.polypsYesValue),
          ),
          nameValueWidget(name: "Septum / Bridge", value: data.septumValue),
          nameValueWidget(name: "Sinuses", value: data.sinusesValue),
          const CommonText(text: "Mouth & Throat"),
          const SizedBox(height: Dimens.gapX2),
          nameValueWidget(name: "Mucosa", value: data.mucosaValue),
          Visibility( visible: data.mucosaValue == 'Abnormal',
                child:
          nameValueWidget(name: "Mucosa Abnormal", value: data.mucosaAbnormalValue),
          ),
          Visibility(
                visible: data.mucosaValue == 'Abnormal' && data.mucosaAbnormalValue == 'Other' ,
                child:
          nameValueWidget(
              name: "Mucosa Abnormal other", value: data.mucosaAbnormalOtherValue),
          ),
          nameValueWidget(name: "Tongue", value: data.tongueValue),
          Visibility(
                visible: data.tongueValue == 'Abnormal' ,
                child:
          nameValueWidget(name: "Tongue Abnormal", value: data.tongueAbnormalValue),
          ),
          Visibility(
              visible: data.tongueValue == 'Abnormal' && data.tongueAbnormalValue == 'Other',
                child:
          nameValueWidget(
              name: "Tongue Abnormal", value: data.tongueAbnormalOtherValue),
          ),
          nameValueWidget(name: "Tonsils", value: data.tonsilsValue),
          Visibility(
                visible: data.tonsilsValue =='Abnormal' ,
                child:
          nameValueWidget(
              name: "Tonsils Abnormal", value: data.tonsilsAbnormalValue),
          ),
          nameValueWidget(name: "Uvula", value: data.uvulaValue),
          const SizedBox(height: Dimens.gapX2),
          Visibility(
                visible: data.uvulaValue =='Abnormal',
                child:
          nameValueWidget(name: "Uvula Abnormal", value: data.uvulaAbnormalValue),
          ),
          nameValueWidget(name: "Palate", value: data.palateValue),
          Visibility(
                visible: data.palateValue =='CLeft Palate',
                child:
          nameValueWidget(name: "CLeft Palate", value: data.palateCleftValue),
          ),
          const SizedBox(height: Dimens.gapX2),
          Visibility(
                visible: data.palateValue =='CLeft Lip & Palate',
                child:
          nameValueWidget(
              name: "CLeft Lip & Palate", value: data.palateCleftLipValue),
          ),
          Visibility(
                 visible: data.palateValue =='Other',
                child:
          nameValueWidget(name: "Other", value: data.palateOtherValue),
          ),
          const CommonText(text: "Hygiene"),
          const SizedBox(height: Dimens.gapX2),
          nameValueWidget(name: "Nails", value: data.nailsValue),
          nameValueWidget(name: "Hair", value: data.hairValue),
          nameValueWidget(name: "Skin", value: data.skinValue),
          nameValueWidget(name: "Odour", value: data.odourValue),
        Visibility(
           visible: controller.otherObservations.controller.text.isNotEmpty,
           child: nameValueWidget(
           name: AppStrings.otherObservations,
            value: controller.otherObservations.controller.text),
),

        nameValueWidget(
            name: 'Specialist Referral Recommended',
            value: controller.isSpecialistReferralNeeded.value ? 'Yes' : 'No',
            ),
            Visibility(
            visible: controller.isSpecialistReferralNeeded.value,
            child: Column(
            children: [
            nameValueWidget(
            name: 'Type',
            value: controller.selectedReferralType.join(', ')),
            Visibility(
            visible:
            controller.selectedReferralType.contains('Other'),
            child: nameValueWidget(
            name: 'Other',
            value: controller.otherWrapper.controller.text)),
            nameValueWidget(
            name: 'Flag ', value: controller.selectedReFlag.value),
            ],
            ),
            )        ])).paddingAll(Dimens.gapX1);
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
          Dimens.heightGap2
    ],
  );
}