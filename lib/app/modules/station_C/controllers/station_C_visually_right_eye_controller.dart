import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

import '../../../../base/base_controller.dart';
import '../../../../utils/helper/text_field_wrapper.dart';

class VisuallyChallengedController extends BaseController {
  TextFieldWrapper dateRE = TextFieldWrapper();
  TextFieldWrapper dateLE = TextFieldWrapper();
  TextFieldWrapper typeHereRE = TextFieldWrapper();
  TextFieldWrapper typeHereLE = TextFieldWrapper();

  // chooseDateOfBirthRE() async {
  //   DateTime currentDate = DateTime.now();
  //   DateTime? pickedEventData = await showDatePicker(
  //     context: Get.context!,
  //     initialDate: currentDate,
  //     firstDate: DateTime(1900),
  //     lastDate: currentDate,
  //   );
  //   if (pickedEventData != null && pickedEventData != dateRE.controller.text) {
  //     final dateFormat = DateFormat('MM-yyyy').format(pickedEventData);
  //     dateRE.controller.text = dateFormat;
  //   }
  // }
  //
  // chooseDateOfBirthLE() async {
  //   DateTime currentDate = DateTime.now();
  //   DateTime? pickedEventData = await showDatePicker(
  //     context: Get.context!,
  //     initialDate: currentDate,
  //     firstDate: DateTime(1900),
  //     lastDate: currentDate,
  //   );
  //   if (pickedEventData != null && pickedEventData != dateLE.controller.text) {
  //     final dateFormat = DateFormat('MM-yyyy').format(pickedEventData);
  //     dateLE.controller.text = dateFormat;
  //   }
  // }
  Future<void> chooseDateOfBirthRE() async {
    DateTime currentDate = DateTime.now();
    DateTime? pickedEventData = await showMonthPicker(
      context: Get.context!,
      initialDate: currentDate,
      firstDate: DateTime(1900),
      lastDate: currentDate,
    );
    if (pickedEventData != null) {
      final dateFormat = DateFormat('MM-yyyy').format(pickedEventData);
      dateRE.controller.text = dateFormat;
    }
  }

  Future<void> chooseDateOfBirthLE() async {
    DateTime currentDate = DateTime.now();
    DateTime? pickedEventData = await showMonthPicker(
      context: Get.context!,
      initialDate: currentDate,
      firstDate: DateTime(1900),
      lastDate: currentDate,
    );
    if (pickedEventData != null) {
      final dateFormat = DateFormat('MM-yyyy').format(pickedEventData);
      dateLE.controller.text = dateFormat;
    }
  }
  /// RE (Right EYE)
  RxBool isRE = false.obs;
  RxBool isEnucleationRE = RxBool(false);
  RxBool isArtificialRE = false.obs;

  RxString selectedContractRE = RxString('Counting Fingers');
  RxString selectedCornealOpacityRE = RxString('Counting Fingers');
  RxString selectedGlaucomaRE = RxString('Counting Fingers');
  RxString selectedPhthisisBulbitRE = RxString('Counting Fingers');

  RxList<String> noEnucleationOptinList = RxList(
    [
      "Counting Fingers",
      "Hand Motion",
      "Light Perception",
      "No Light Perception",
    ],
  );
  RxList<String> selectedYesRemoveRE = RxList();

  RxList<String> yesRemoveRE = RxList(['Tumor', 'Injury', 'Accident', "Other"]);

  RxList<String> selectedContractRe = RxList();

  RxList<String> noREList =
      RxList(['Cataract', 'Corneal opacity', 'Glaucoma', 'Phthisis bulbi']);

  /// LE (Left Eye)
  RxBool isLE = false.obs;
  RxBool isEnucleationLE = false.obs;
  RxBool isArtificialLE = false.obs;

  RxString selectedContractLE = RxString('Counting Fingers');
  RxString selectedCornealOpacityLE = RxString('Counting Fingers');
  RxString selectedGlaucomaLE = RxString('Counting Fingers');
  RxString selectedPhthisisBulbitLE = RxString('Counting Fingers');

  TextFieldWrapper dateLeft = TextFieldWrapper();
  TextFieldWrapper typeHereLeft = TextFieldWrapper();

  RxList<String> selectedYesRemoveLE = RxList();
  RxList<String> yesRemoveLE = RxList(['Tumor', 'Injury', 'Accident', "Other"]);
  RxList<String> selectedContractLe = RxList();

  RxList<String> noLEList =
      RxList(['Cataract', 'Corneal opacity', 'Glaucoma', 'Phthisis bulbi']);
}
