import 'package:get_storage/get_storage.dart';
import 'package:nivish/app/data/model/dto/StudentModel.dart';
import 'package:nivish/app/data/model/dto/User.dart';

class AppStorage {
  AppStorage._privateConstructor();

  static final _box = GetStorage();

  //user ==============
  static User getUser() => User.fromJson(_box.read(StorageKeys.USER));

  static void setUser(User? user) =>
      _box.write(StorageKeys.USER, user?.toJson());

  static bool isUserExists() => _box.read(StorageKeys.USER) != null;

  // student ============
  static Student getStudent() =>
      Student.fromJson(_box.read(StorageKeys.STUDENT));

  static void setStudent(Student? student) =>
      _box.write(StorageKeys.STUDENT, student?.toJson());

  static Future<void> clearStudent() => _box.remove(StorageKeys.STUDENT);

  static bool isStudentExists() => _box.read(StorageKeys.STUDENT) != null;

  //station A ===============
  static int getStationAId() => _box.read(StorageKeys.stationAId);

  static void setStationAId(int? id) => _box.write(StorageKeys.stationAId, id);

  static Future<void> clearStationAid() => _box.remove(StorageKeys.stationAId);

  static bool isStationAIdExists() => _box.read(StorageKeys.stationAId) != null;
  //station B ===============
  static int getStationBId() => _box.read(StorageKeys.stationBId);

  static void setStationBId(int? id) => _box.write(StorageKeys.stationBId, id);

  static Future<void> clearStationBid() => _box.remove(StorageKeys.stationBId);

  static bool isStationBIdExists() => _box.read(StorageKeys.stationBId) != null;
  //station C ===============
  static int getStationCId() => _box.read(StorageKeys.stationCId);

  static void setStationCId(int? id) => _box.write(StorageKeys.stationCId, id);

  static Future<void> clearStationCid() => _box.remove(StorageKeys.stationCId);

  static bool isStationCIdExists() => _box.read(StorageKeys.stationCId) != null;
  //station D ===============
  static int getStationDId() => _box.read(StorageKeys.stationDId);

  static void setStationDId(int? id) => _box.write(StorageKeys.stationDId, id);

  static Future<void> clearStationDid() => _box.remove(StorageKeys.stationDId);

  static bool isStationDIdExists() => _box.read(StorageKeys.stationDId) != null;

  //station F ===============
  static int getStationFId() => _box.read(StorageKeys.stationFId);

  static void setStationFId(int? id) => _box.write(StorageKeys.stationFId, id);

  static Future<void> clearStationFid() => _box.remove(StorageKeys.stationFId);

  static bool isStationFIdExists() => _box.read(StorageKeys.stationFId) != null;
  //Station E=========
  static int getStationEId() => _box.read(StorageKeys.stationEId);

  static void setStationEId(int? id) => _box.write(StorageKeys.stationEId, id);

  static Future<void> clearStationEid() => _box.remove(StorageKeys.stationEId);

  static bool isStationEIdExists() => _box.read(StorageKeys.stationEId) != null;

  //Station H=========
  static int getStationHId() => _box.read(StorageKeys.stationHId);

  static void setStationHId(int? id) => _box.write(StorageKeys.stationHId, id);

  static Future<void> clearStationHid() => _box.remove(StorageKeys.stationHId);

  static bool isStationHIdExists() => _box.read(StorageKeys.stationHId) != null;

  //Station G=========
  static int getStationGId() => _box.read(StorageKeys.stationGId);

  static void setStationGId(int? id) => _box.write(StorageKeys.stationGId, id);

  static Future<void> clearStationGid() => _box.remove(StorageKeys.stationGId);

  static bool isStationGIdExists() => _box.read(StorageKeys.stationGId) != null;

  static void clear() async {
    _box.erase();
    print(isUserExists());
  }
}

class StorageKeys {
  StorageKeys._privateConstructor();
  static const APP_CONFIG = 'app_config';
  static const USER = 'user';
  static const STUDENT = 'student';

  ///stations Id
  static const stationAId = 'stationAId';
  static const stationBId = 'stationBId';
  static const stationCId = 'stationCId';
  static const stationDId = 'stationDId';
  static const stationFId = 'stationFId';
  static const stationEId = 'stationEId';
  static const stationHId = 'stationHId';
  static const stationGId = 'stationGId';
}
