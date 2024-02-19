// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_table.dart';

// ignore_for_file: type=lint
class $LessonsTableTable extends LessonsTable
    with TableInfo<$LessonsTableTable, LessonsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LessonsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _disciplineMeta =
      const VerificationMeta('discipline');
  @override
  late final GeneratedColumn<String> discipline = GeneratedColumn<String>(
      'discipline', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 128),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _auditoriumMeta =
      const VerificationMeta('auditorium');
  @override
  late final GeneratedColumn<String> auditorium = GeneratedColumn<String>(
      'auditorium', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 128),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _buildingMeta =
      const VerificationMeta('building');
  @override
  late final GeneratedColumn<String> building = GeneratedColumn<String>(
      'building', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 128),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
      'date', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 128),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _dayOfWeekStringMeta =
      const VerificationMeta('dayOfWeekString');
  @override
  late final GeneratedColumn<String> dayOfWeekString = GeneratedColumn<String>(
      'day_of_week_string', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 128),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _beginLessonMeta =
      const VerificationMeta('beginLesson');
  @override
  late final GeneratedColumn<String> beginLesson = GeneratedColumn<String>(
      'begin_lesson', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 128),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _endLessonMeta =
      const VerificationMeta('endLesson');
  @override
  late final GeneratedColumn<String> endLesson = GeneratedColumn<String>(
      'end_lesson', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 128),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _groupMeta = const VerificationMeta('group');
  @override
  late final GeneratedColumn<String> group = GeneratedColumn<String>(
      'group', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 128),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _streamMeta = const VerificationMeta('stream');
  @override
  late final GeneratedColumn<String> stream = GeneratedColumn<String>(
      'stream', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 128),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _kindOfWorkMeta =
      const VerificationMeta('kindOfWork');
  @override
  late final GeneratedColumn<String> kindOfWork = GeneratedColumn<String>(
      'kind_of_work', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 128),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _lecturerMeta =
      const VerificationMeta('lecturer');
  @override
  late final GeneratedColumn<String> lecturer = GeneratedColumn<String>(
      'lecturer', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 128),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _contentTableOfLessonsNameMeta =
      const VerificationMeta('contentTableOfLessonsName');
  @override
  late final GeneratedColumn<String> contentTableOfLessonsName =
      GeneratedColumn<String>(
          'content_table_of_lessons_name', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
              minTextLength: 1, maxTextLength: 2),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        discipline,
        auditorium,
        building,
        date,
        dayOfWeekString,
        beginLesson,
        endLesson,
        group,
        stream,
        kindOfWork,
        lecturer,
        contentTableOfLessonsName
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'lessons_table';
  @override
  VerificationContext validateIntegrity(Insertable<LessonsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('discipline')) {
      context.handle(
          _disciplineMeta,
          discipline.isAcceptableOrUnknown(
              data['discipline']!, _disciplineMeta));
    } else if (isInserting) {
      context.missing(_disciplineMeta);
    }
    if (data.containsKey('auditorium')) {
      context.handle(
          _auditoriumMeta,
          auditorium.isAcceptableOrUnknown(
              data['auditorium']!, _auditoriumMeta));
    } else if (isInserting) {
      context.missing(_auditoriumMeta);
    }
    if (data.containsKey('building')) {
      context.handle(_buildingMeta,
          building.isAcceptableOrUnknown(data['building']!, _buildingMeta));
    } else if (isInserting) {
      context.missing(_buildingMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('day_of_week_string')) {
      context.handle(
          _dayOfWeekStringMeta,
          dayOfWeekString.isAcceptableOrUnknown(
              data['day_of_week_string']!, _dayOfWeekStringMeta));
    } else if (isInserting) {
      context.missing(_dayOfWeekStringMeta);
    }
    if (data.containsKey('begin_lesson')) {
      context.handle(
          _beginLessonMeta,
          beginLesson.isAcceptableOrUnknown(
              data['begin_lesson']!, _beginLessonMeta));
    } else if (isInserting) {
      context.missing(_beginLessonMeta);
    }
    if (data.containsKey('end_lesson')) {
      context.handle(_endLessonMeta,
          endLesson.isAcceptableOrUnknown(data['end_lesson']!, _endLessonMeta));
    } else if (isInserting) {
      context.missing(_endLessonMeta);
    }
    if (data.containsKey('group')) {
      context.handle(
          _groupMeta, group.isAcceptableOrUnknown(data['group']!, _groupMeta));
    } else if (isInserting) {
      context.missing(_groupMeta);
    }
    if (data.containsKey('stream')) {
      context.handle(_streamMeta,
          stream.isAcceptableOrUnknown(data['stream']!, _streamMeta));
    } else if (isInserting) {
      context.missing(_streamMeta);
    }
    if (data.containsKey('kind_of_work')) {
      context.handle(
          _kindOfWorkMeta,
          kindOfWork.isAcceptableOrUnknown(
              data['kind_of_work']!, _kindOfWorkMeta));
    } else if (isInserting) {
      context.missing(_kindOfWorkMeta);
    }
    if (data.containsKey('lecturer')) {
      context.handle(_lecturerMeta,
          lecturer.isAcceptableOrUnknown(data['lecturer']!, _lecturerMeta));
    } else if (isInserting) {
      context.missing(_lecturerMeta);
    }
    if (data.containsKey('content_table_of_lessons_name')) {
      context.handle(
          _contentTableOfLessonsNameMeta,
          contentTableOfLessonsName.isAcceptableOrUnknown(
              data['content_table_of_lessons_name']!,
              _contentTableOfLessonsNameMeta));
    } else if (isInserting) {
      context.missing(_contentTableOfLessonsNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  LessonsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LessonsTableData(
      discipline: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}discipline'])!,
      auditorium: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}auditorium'])!,
      building: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}building'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}date'])!,
      dayOfWeekString: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}day_of_week_string'])!,
      beginLesson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}begin_lesson'])!,
      endLesson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}end_lesson'])!,
      group: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}group'])!,
      stream: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}stream'])!,
      kindOfWork: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kind_of_work'])!,
      lecturer: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lecturer'])!,
      contentTableOfLessonsName: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}content_table_of_lessons_name'])!,
    );
  }

  @override
  $LessonsTableTable createAlias(String alias) {
    return $LessonsTableTable(attachedDatabase, alias);
  }
}

class LessonsTableData extends DataClass
    implements Insertable<LessonsTableData> {
  final String discipline;
  final String auditorium;
  final String building;
  final String date;
  final String dayOfWeekString;
  final String beginLesson;
  final String endLesson;
  final String group;
  final String stream;
  final String kindOfWork;
  final String lecturer;
  final String contentTableOfLessonsName;
  const LessonsTableData(
      {required this.discipline,
      required this.auditorium,
      required this.building,
      required this.date,
      required this.dayOfWeekString,
      required this.beginLesson,
      required this.endLesson,
      required this.group,
      required this.stream,
      required this.kindOfWork,
      required this.lecturer,
      required this.contentTableOfLessonsName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['discipline'] = Variable<String>(discipline);
    map['auditorium'] = Variable<String>(auditorium);
    map['building'] = Variable<String>(building);
    map['date'] = Variable<String>(date);
    map['day_of_week_string'] = Variable<String>(dayOfWeekString);
    map['begin_lesson'] = Variable<String>(beginLesson);
    map['end_lesson'] = Variable<String>(endLesson);
    map['group'] = Variable<String>(group);
    map['stream'] = Variable<String>(stream);
    map['kind_of_work'] = Variable<String>(kindOfWork);
    map['lecturer'] = Variable<String>(lecturer);
    map['content_table_of_lessons_name'] =
        Variable<String>(contentTableOfLessonsName);
    return map;
  }

  LessonsTableCompanion toCompanion(bool nullToAbsent) {
    return LessonsTableCompanion(
      discipline: Value(discipline),
      auditorium: Value(auditorium),
      building: Value(building),
      date: Value(date),
      dayOfWeekString: Value(dayOfWeekString),
      beginLesson: Value(beginLesson),
      endLesson: Value(endLesson),
      group: Value(group),
      stream: Value(stream),
      kindOfWork: Value(kindOfWork),
      lecturer: Value(lecturer),
      contentTableOfLessonsName: Value(contentTableOfLessonsName),
    );
  }

  factory LessonsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LessonsTableData(
      discipline: serializer.fromJson<String>(json['discipline']),
      auditorium: serializer.fromJson<String>(json['auditorium']),
      building: serializer.fromJson<String>(json['building']),
      date: serializer.fromJson<String>(json['date']),
      dayOfWeekString: serializer.fromJson<String>(json['dayOfWeekString']),
      beginLesson: serializer.fromJson<String>(json['beginLesson']),
      endLesson: serializer.fromJson<String>(json['endLesson']),
      group: serializer.fromJson<String>(json['group']),
      stream: serializer.fromJson<String>(json['stream']),
      kindOfWork: serializer.fromJson<String>(json['kindOfWork']),
      lecturer: serializer.fromJson<String>(json['lecturer']),
      contentTableOfLessonsName:
          serializer.fromJson<String>(json['contentTableOfLessonsName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'discipline': serializer.toJson<String>(discipline),
      'auditorium': serializer.toJson<String>(auditorium),
      'building': serializer.toJson<String>(building),
      'date': serializer.toJson<String>(date),
      'dayOfWeekString': serializer.toJson<String>(dayOfWeekString),
      'beginLesson': serializer.toJson<String>(beginLesson),
      'endLesson': serializer.toJson<String>(endLesson),
      'group': serializer.toJson<String>(group),
      'stream': serializer.toJson<String>(stream),
      'kindOfWork': serializer.toJson<String>(kindOfWork),
      'lecturer': serializer.toJson<String>(lecturer),
      'contentTableOfLessonsName':
          serializer.toJson<String>(contentTableOfLessonsName),
    };
  }

  LessonsTableData copyWith(
          {String? discipline,
          String? auditorium,
          String? building,
          String? date,
          String? dayOfWeekString,
          String? beginLesson,
          String? endLesson,
          String? group,
          String? stream,
          String? kindOfWork,
          String? lecturer,
          String? contentTableOfLessonsName}) =>
      LessonsTableData(
        discipline: discipline ?? this.discipline,
        auditorium: auditorium ?? this.auditorium,
        building: building ?? this.building,
        date: date ?? this.date,
        dayOfWeekString: dayOfWeekString ?? this.dayOfWeekString,
        beginLesson: beginLesson ?? this.beginLesson,
        endLesson: endLesson ?? this.endLesson,
        group: group ?? this.group,
        stream: stream ?? this.stream,
        kindOfWork: kindOfWork ?? this.kindOfWork,
        lecturer: lecturer ?? this.lecturer,
        contentTableOfLessonsName:
            contentTableOfLessonsName ?? this.contentTableOfLessonsName,
      );
  @override
  String toString() {
    return (StringBuffer('LessonsTableData(')
          ..write('discipline: $discipline, ')
          ..write('auditorium: $auditorium, ')
          ..write('building: $building, ')
          ..write('date: $date, ')
          ..write('dayOfWeekString: $dayOfWeekString, ')
          ..write('beginLesson: $beginLesson, ')
          ..write('endLesson: $endLesson, ')
          ..write('group: $group, ')
          ..write('stream: $stream, ')
          ..write('kindOfWork: $kindOfWork, ')
          ..write('lecturer: $lecturer, ')
          ..write('contentTableOfLessonsName: $contentTableOfLessonsName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      discipline,
      auditorium,
      building,
      date,
      dayOfWeekString,
      beginLesson,
      endLesson,
      group,
      stream,
      kindOfWork,
      lecturer,
      contentTableOfLessonsName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LessonsTableData &&
          other.discipline == this.discipline &&
          other.auditorium == this.auditorium &&
          other.building == this.building &&
          other.date == this.date &&
          other.dayOfWeekString == this.dayOfWeekString &&
          other.beginLesson == this.beginLesson &&
          other.endLesson == this.endLesson &&
          other.group == this.group &&
          other.stream == this.stream &&
          other.kindOfWork == this.kindOfWork &&
          other.lecturer == this.lecturer &&
          other.contentTableOfLessonsName == this.contentTableOfLessonsName);
}

class LessonsTableCompanion extends UpdateCompanion<LessonsTableData> {
  final Value<String> discipline;
  final Value<String> auditorium;
  final Value<String> building;
  final Value<String> date;
  final Value<String> dayOfWeekString;
  final Value<String> beginLesson;
  final Value<String> endLesson;
  final Value<String> group;
  final Value<String> stream;
  final Value<String> kindOfWork;
  final Value<String> lecturer;
  final Value<String> contentTableOfLessonsName;
  final Value<int> rowid;
  const LessonsTableCompanion({
    this.discipline = const Value.absent(),
    this.auditorium = const Value.absent(),
    this.building = const Value.absent(),
    this.date = const Value.absent(),
    this.dayOfWeekString = const Value.absent(),
    this.beginLesson = const Value.absent(),
    this.endLesson = const Value.absent(),
    this.group = const Value.absent(),
    this.stream = const Value.absent(),
    this.kindOfWork = const Value.absent(),
    this.lecturer = const Value.absent(),
    this.contentTableOfLessonsName = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LessonsTableCompanion.insert({
    required String discipline,
    required String auditorium,
    required String building,
    required String date,
    required String dayOfWeekString,
    required String beginLesson,
    required String endLesson,
    required String group,
    required String stream,
    required String kindOfWork,
    required String lecturer,
    required String contentTableOfLessonsName,
    this.rowid = const Value.absent(),
  })  : discipline = Value(discipline),
        auditorium = Value(auditorium),
        building = Value(building),
        date = Value(date),
        dayOfWeekString = Value(dayOfWeekString),
        beginLesson = Value(beginLesson),
        endLesson = Value(endLesson),
        group = Value(group),
        stream = Value(stream),
        kindOfWork = Value(kindOfWork),
        lecturer = Value(lecturer),
        contentTableOfLessonsName = Value(contentTableOfLessonsName);
  static Insertable<LessonsTableData> custom({
    Expression<String>? discipline,
    Expression<String>? auditorium,
    Expression<String>? building,
    Expression<String>? date,
    Expression<String>? dayOfWeekString,
    Expression<String>? beginLesson,
    Expression<String>? endLesson,
    Expression<String>? group,
    Expression<String>? stream,
    Expression<String>? kindOfWork,
    Expression<String>? lecturer,
    Expression<String>? contentTableOfLessonsName,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (discipline != null) 'discipline': discipline,
      if (auditorium != null) 'auditorium': auditorium,
      if (building != null) 'building': building,
      if (date != null) 'date': date,
      if (dayOfWeekString != null) 'day_of_week_string': dayOfWeekString,
      if (beginLesson != null) 'begin_lesson': beginLesson,
      if (endLesson != null) 'end_lesson': endLesson,
      if (group != null) 'group': group,
      if (stream != null) 'stream': stream,
      if (kindOfWork != null) 'kind_of_work': kindOfWork,
      if (lecturer != null) 'lecturer': lecturer,
      if (contentTableOfLessonsName != null)
        'content_table_of_lessons_name': contentTableOfLessonsName,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LessonsTableCompanion copyWith(
      {Value<String>? discipline,
      Value<String>? auditorium,
      Value<String>? building,
      Value<String>? date,
      Value<String>? dayOfWeekString,
      Value<String>? beginLesson,
      Value<String>? endLesson,
      Value<String>? group,
      Value<String>? stream,
      Value<String>? kindOfWork,
      Value<String>? lecturer,
      Value<String>? contentTableOfLessonsName,
      Value<int>? rowid}) {
    return LessonsTableCompanion(
      discipline: discipline ?? this.discipline,
      auditorium: auditorium ?? this.auditorium,
      building: building ?? this.building,
      date: date ?? this.date,
      dayOfWeekString: dayOfWeekString ?? this.dayOfWeekString,
      beginLesson: beginLesson ?? this.beginLesson,
      endLesson: endLesson ?? this.endLesson,
      group: group ?? this.group,
      stream: stream ?? this.stream,
      kindOfWork: kindOfWork ?? this.kindOfWork,
      lecturer: lecturer ?? this.lecturer,
      contentTableOfLessonsName:
          contentTableOfLessonsName ?? this.contentTableOfLessonsName,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (discipline.present) {
      map['discipline'] = Variable<String>(discipline.value);
    }
    if (auditorium.present) {
      map['auditorium'] = Variable<String>(auditorium.value);
    }
    if (building.present) {
      map['building'] = Variable<String>(building.value);
    }
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (dayOfWeekString.present) {
      map['day_of_week_string'] = Variable<String>(dayOfWeekString.value);
    }
    if (beginLesson.present) {
      map['begin_lesson'] = Variable<String>(beginLesson.value);
    }
    if (endLesson.present) {
      map['end_lesson'] = Variable<String>(endLesson.value);
    }
    if (group.present) {
      map['group'] = Variable<String>(group.value);
    }
    if (stream.present) {
      map['stream'] = Variable<String>(stream.value);
    }
    if (kindOfWork.present) {
      map['kind_of_work'] = Variable<String>(kindOfWork.value);
    }
    if (lecturer.present) {
      map['lecturer'] = Variable<String>(lecturer.value);
    }
    if (contentTableOfLessonsName.present) {
      map['content_table_of_lessons_name'] =
          Variable<String>(contentTableOfLessonsName.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LessonsTableCompanion(')
          ..write('discipline: $discipline, ')
          ..write('auditorium: $auditorium, ')
          ..write('building: $building, ')
          ..write('date: $date, ')
          ..write('dayOfWeekString: $dayOfWeekString, ')
          ..write('beginLesson: $beginLesson, ')
          ..write('endLesson: $endLesson, ')
          ..write('group: $group, ')
          ..write('stream: $stream, ')
          ..write('kindOfWork: $kindOfWork, ')
          ..write('lecturer: $lecturer, ')
          ..write('contentTableOfLessonsName: $contentTableOfLessonsName, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $LessonsTableTable lessonsTable = $LessonsTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [lessonsTable];
}
