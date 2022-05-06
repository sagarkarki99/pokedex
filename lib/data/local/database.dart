import 'dart:io';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

Future<void> initDatabase() async {
  final dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  await Hive.openBox(LocalStorageKey.favouritesKey);
}

class LocalStorageKey {
  static const String favouritesKey = 'favouritesKey';
}
