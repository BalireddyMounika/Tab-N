import 'package:intl/intl.dart';
import 'package:nivish/utils/storage/storage_utils.dart';

class StudentInfo {
  static int calculateAge() {
    String? dob = AppStorage.getStudent().studentDOB;
    DateTime currentDate = DateTime.now();
    DateTime dateOfBirth = DateFormat('yyyy-MM-dd').parse(dob!);

    int age = currentDate.year - dateOfBirth.year;

    if (currentDate.month < dateOfBirth.month ||
        (currentDate.month == dateOfBirth.month &&
            currentDate.day < dateOfBirth.day)) {
      age--;
    }
    return age;
  }

  static String? getGender() {
    String? gender = AppStorage.getStudent().gender;
    return gender;
  }
}