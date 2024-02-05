import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nivish/app.dart';

void main() async {
  await initGetStorage();
  runApp(const App());
}

Future initGetStorage() async {
  await GetStorage.init();
}
