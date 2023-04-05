// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_tasks_database.dart';

// ignore_for_file: type=lint
class $TasksTableTable extends TasksTable
    with TableInfo<$TasksTableTable, TasksTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TasksTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isCompletedMeta =
      const VerificationMeta('isCompleted');
  @override
  late final GeneratedColumn<bool> isCompleted =
      GeneratedColumn<bool>('is_completed', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("is_completed" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
  static const VerificationMeta _termDateTimeMeta =
      const VerificationMeta('termDateTime');
  @override
  late final GeneratedColumn<DateTime> termDateTime = GeneratedColumn<DateTime>(
      'term_date_time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, isCompleted, termDateTime];
  @override
  String get aliasedName => _alias ?? 'tasks_table';
  @override
  String get actualTableName => 'tasks_table';
  @override
  VerificationContext validateIntegrity(Insertable<TasksTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('is_completed')) {
      context.handle(
          _isCompletedMeta,
          isCompleted.isAcceptableOrUnknown(
              data['is_completed']!, _isCompletedMeta));
    } else if (isInserting) {
      context.missing(_isCompletedMeta);
    }
    if (data.containsKey('term_date_time')) {
      context.handle(
          _termDateTimeMeta,
          termDateTime.isAcceptableOrUnknown(
              data['term_date_time']!, _termDateTimeMeta));
    } else if (isInserting) {
      context.missing(_termDateTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TasksTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TasksTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      isCompleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_completed'])!,
      termDateTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}term_date_time'])!,
    );
  }

  @override
  $TasksTableTable createAlias(String alias) {
    return $TasksTableTable(attachedDatabase, alias);
  }
}

class TasksTableData extends DataClass implements Insertable<TasksTableData> {
  final int id;
  final String name;
  final bool isCompleted;
  final DateTime termDateTime;
  const TasksTableData(
      {required this.id,
      required this.name,
      required this.isCompleted,
      required this.termDateTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['is_completed'] = Variable<bool>(isCompleted);
    map['term_date_time'] = Variable<DateTime>(termDateTime);
    return map;
  }

  TasksTableCompanion toCompanion(bool nullToAbsent) {
    return TasksTableCompanion(
      id: Value(id),
      name: Value(name),
      isCompleted: Value(isCompleted),
      termDateTime: Value(termDateTime),
    );
  }

  factory TasksTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TasksTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      isCompleted: serializer.fromJson<bool>(json['isCompleted']),
      termDateTime: serializer.fromJson<DateTime>(json['termDateTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'isCompleted': serializer.toJson<bool>(isCompleted),
      'termDateTime': serializer.toJson<DateTime>(termDateTime),
    };
  }

  TasksTableData copyWith(
          {int? id, String? name, bool? isCompleted, DateTime? termDateTime}) =>
      TasksTableData(
        id: id ?? this.id,
        name: name ?? this.name,
        isCompleted: isCompleted ?? this.isCompleted,
        termDateTime: termDateTime ?? this.termDateTime,
      );
  @override
  String toString() {
    return (StringBuffer('TasksTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('isCompleted: $isCompleted, ')
          ..write('termDateTime: $termDateTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, isCompleted, termDateTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TasksTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.isCompleted == this.isCompleted &&
          other.termDateTime == this.termDateTime);
}

class TasksTableCompanion extends UpdateCompanion<TasksTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<bool> isCompleted;
  final Value<DateTime> termDateTime;
  const TasksTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.isCompleted = const Value.absent(),
    this.termDateTime = const Value.absent(),
  });
  TasksTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required bool isCompleted,
    required DateTime termDateTime,
  })  : name = Value(name),
        isCompleted = Value(isCompleted),
        termDateTime = Value(termDateTime);
  static Insertable<TasksTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<bool>? isCompleted,
    Expression<DateTime>? termDateTime,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (isCompleted != null) 'is_completed': isCompleted,
      if (termDateTime != null) 'term_date_time': termDateTime,
    });
  }

  TasksTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<bool>? isCompleted,
      Value<DateTime>? termDateTime}) {
    return TasksTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      isCompleted: isCompleted ?? this.isCompleted,
      termDateTime: termDateTime ?? this.termDateTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (isCompleted.present) {
      map['is_completed'] = Variable<bool>(isCompleted.value);
    }
    if (termDateTime.present) {
      map['term_date_time'] = Variable<DateTime>(termDateTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TasksTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('isCompleted: $isCompleted, ')
          ..write('termDateTime: $termDateTime')
          ..write(')'))
        .toString();
  }
}

abstract class _$TasksDatabase extends GeneratedDatabase {
  _$TasksDatabase(QueryExecutor e) : super(e);
  late final $TasksTableTable tasksTable = $TasksTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [tasksTable];
}
