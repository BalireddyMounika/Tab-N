import 'package:get/get_utils/src/get_utils/get_utils.dart';

extension TextValidators on String {
  bool isValidEmail() =>
      RegExp(r"^[a-zA-Z0-9.a-zA-Z!#$%&'*-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(this.trim());

  bool isValidPhone() =>
      this.trim().isNotEmpty && int.parse(this.trim()).toString().length == 10;

  bool isValidOTP() => this.trim().length == 4;

  bool isValidName() => this.trim().isNotEmpty;
}

String? mandatoryValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Mandatory';
  }
  return null;
}

String? emailValidator(String? value) {
  if (!GetUtils.isEmail(value ?? "")) {
    return 'Invalid Email';
  }
  return null;
}
