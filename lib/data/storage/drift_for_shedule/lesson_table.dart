import 'package:drift/drift.dart';
import 'dart:io';

import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'lesson_table.g.dart';

class LessonsTable extends Table {
  TextColumn get discipline => text().withLength(min: 2, max: 128)();
  TextColumn get auditorium => text().withLength(min: 2, max: 128)();
  TextColumn get building => text().withLength(min: 2, max: 128)();
  TextColumn get date => text().withLength(min: 2, max: 128)();
  TextColumn get dayOfWeekString => text().withLength(min: 2, max: 128)();
  TextColumn get beginLesson => text().withLength(min: 2, max: 128)();
  TextColumn get endLesson => text().withLength(min: 2, max: 128)();
  TextColumn get group => text().withLength(min: 2, max: 128)();
  TextColumn get stream => text().withLength(min: 2, max: 128)();
  TextColumn get kindOfWork => text().withLength(min: 2, max: 128)();
  TextColumn get lecturer => text().withLength(min: 2, max: 128)();
  TextColumn get contentTableOfLessonsName => text().withLength(min: 1, max: 2)();
}

@DriftDatabase(tables: [LessonsTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    final cachebase = (await getTemporaryDirectory()).path;
    sqlite3.tempDirectory = cachebase;

    return NativeDatabase.createInBackground(file);
  });
}
