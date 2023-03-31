// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TasksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pageOpened,
    required TResult Function(String taskName, DateTime taskTerm) taskAdded,
    required TResult Function(bool isDone, int id) taskStatusChanged,
    required TResult Function(bool showCompletedTasks)
        showCompletedTasksStatusChanged,
    required TResult Function(TasksSortType sortType) tasksSortTypeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pageOpened,
    TResult? Function(String taskName, DateTime taskTerm)? taskAdded,
    TResult? Function(bool isDone, int id)? taskStatusChanged,
    TResult? Function(bool showCompletedTasks)? showCompletedTasksStatusChanged,
    TResult? Function(TasksSortType sortType)? tasksSortTypeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageOpened,
    TResult Function(String taskName, DateTime taskTerm)? taskAdded,
    TResult Function(bool isDone, int id)? taskStatusChanged,
    TResult Function(bool showCompletedTasks)? showCompletedTasksStatusChanged,
    TResult Function(TasksSortType sortType)? tasksSortTypeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageOpened value) pageOpened,
    required TResult Function(_TaskAdded value) taskAdded,
    required TResult Function(_TaskStatusChanged value) taskStatusChanged,
    required TResult Function(_ShowCompletedTasksStatusChanged value)
        showCompletedTasksStatusChanged,
    required TResult Function(_TasksSortTypeChanged value) tasksSortTypeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageOpened value)? pageOpened,
    TResult? Function(_TaskAdded value)? taskAdded,
    TResult? Function(_TaskStatusChanged value)? taskStatusChanged,
    TResult? Function(_ShowCompletedTasksStatusChanged value)?
        showCompletedTasksStatusChanged,
    TResult? Function(_TasksSortTypeChanged value)? tasksSortTypeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageOpened value)? pageOpened,
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_TaskStatusChanged value)? taskStatusChanged,
    TResult Function(_ShowCompletedTasksStatusChanged value)?
        showCompletedTasksStatusChanged,
    TResult Function(_TasksSortTypeChanged value)? tasksSortTypeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksEventCopyWith<$Res> {
  factory $TasksEventCopyWith(
          TasksEvent value, $Res Function(TasksEvent) then) =
      _$TasksEventCopyWithImpl<$Res, TasksEvent>;
}

/// @nodoc
class _$TasksEventCopyWithImpl<$Res, $Val extends TasksEvent>
    implements $TasksEventCopyWith<$Res> {
  _$TasksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PageOpenedCopyWith<$Res> {
  factory _$$_PageOpenedCopyWith(
          _$_PageOpened value, $Res Function(_$_PageOpened) then) =
      __$$_PageOpenedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PageOpenedCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$_PageOpened>
    implements _$$_PageOpenedCopyWith<$Res> {
  __$$_PageOpenedCopyWithImpl(
      _$_PageOpened _value, $Res Function(_$_PageOpened) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PageOpened implements _PageOpened {
  const _$_PageOpened();

  @override
  String toString() {
    return 'TasksEvent.pageOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PageOpened);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pageOpened,
    required TResult Function(String taskName, DateTime taskTerm) taskAdded,
    required TResult Function(bool isDone, int id) taskStatusChanged,
    required TResult Function(bool showCompletedTasks)
        showCompletedTasksStatusChanged,
    required TResult Function(TasksSortType sortType) tasksSortTypeChanged,
  }) {
    return pageOpened();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pageOpened,
    TResult? Function(String taskName, DateTime taskTerm)? taskAdded,
    TResult? Function(bool isDone, int id)? taskStatusChanged,
    TResult? Function(bool showCompletedTasks)? showCompletedTasksStatusChanged,
    TResult? Function(TasksSortType sortType)? tasksSortTypeChanged,
  }) {
    return pageOpened?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageOpened,
    TResult Function(String taskName, DateTime taskTerm)? taskAdded,
    TResult Function(bool isDone, int id)? taskStatusChanged,
    TResult Function(bool showCompletedTasks)? showCompletedTasksStatusChanged,
    TResult Function(TasksSortType sortType)? tasksSortTypeChanged,
    required TResult orElse(),
  }) {
    if (pageOpened != null) {
      return pageOpened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageOpened value) pageOpened,
    required TResult Function(_TaskAdded value) taskAdded,
    required TResult Function(_TaskStatusChanged value) taskStatusChanged,
    required TResult Function(_ShowCompletedTasksStatusChanged value)
        showCompletedTasksStatusChanged,
    required TResult Function(_TasksSortTypeChanged value) tasksSortTypeChanged,
  }) {
    return pageOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageOpened value)? pageOpened,
    TResult? Function(_TaskAdded value)? taskAdded,
    TResult? Function(_TaskStatusChanged value)? taskStatusChanged,
    TResult? Function(_ShowCompletedTasksStatusChanged value)?
        showCompletedTasksStatusChanged,
    TResult? Function(_TasksSortTypeChanged value)? tasksSortTypeChanged,
  }) {
    return pageOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageOpened value)? pageOpened,
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_TaskStatusChanged value)? taskStatusChanged,
    TResult Function(_ShowCompletedTasksStatusChanged value)?
        showCompletedTasksStatusChanged,
    TResult Function(_TasksSortTypeChanged value)? tasksSortTypeChanged,
    required TResult orElse(),
  }) {
    if (pageOpened != null) {
      return pageOpened(this);
    }
    return orElse();
  }
}

abstract class _PageOpened implements TasksEvent {
  const factory _PageOpened() = _$_PageOpened;
}

/// @nodoc
abstract class _$$_TaskAddedCopyWith<$Res> {
  factory _$$_TaskAddedCopyWith(
          _$_TaskAdded value, $Res Function(_$_TaskAdded) then) =
      __$$_TaskAddedCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskName, DateTime taskTerm});
}

/// @nodoc
class __$$_TaskAddedCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$_TaskAdded>
    implements _$$_TaskAddedCopyWith<$Res> {
  __$$_TaskAddedCopyWithImpl(
      _$_TaskAdded _value, $Res Function(_$_TaskAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskName = null,
    Object? taskTerm = null,
  }) {
    return _then(_$_TaskAdded(
      taskName: null == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String,
      taskTerm: null == taskTerm
          ? _value.taskTerm
          : taskTerm // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_TaskAdded implements _TaskAdded {
  const _$_TaskAdded({required this.taskName, required this.taskTerm});

  @override
  final String taskName;
  @override
  final DateTime taskTerm;

  @override
  String toString() {
    return 'TasksEvent.taskAdded(taskName: $taskName, taskTerm: $taskTerm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskAdded &&
            (identical(other.taskName, taskName) ||
                other.taskName == taskName) &&
            (identical(other.taskTerm, taskTerm) ||
                other.taskTerm == taskTerm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskName, taskTerm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskAddedCopyWith<_$_TaskAdded> get copyWith =>
      __$$_TaskAddedCopyWithImpl<_$_TaskAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pageOpened,
    required TResult Function(String taskName, DateTime taskTerm) taskAdded,
    required TResult Function(bool isDone, int id) taskStatusChanged,
    required TResult Function(bool showCompletedTasks)
        showCompletedTasksStatusChanged,
    required TResult Function(TasksSortType sortType) tasksSortTypeChanged,
  }) {
    return taskAdded(taskName, taskTerm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pageOpened,
    TResult? Function(String taskName, DateTime taskTerm)? taskAdded,
    TResult? Function(bool isDone, int id)? taskStatusChanged,
    TResult? Function(bool showCompletedTasks)? showCompletedTasksStatusChanged,
    TResult? Function(TasksSortType sortType)? tasksSortTypeChanged,
  }) {
    return taskAdded?.call(taskName, taskTerm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageOpened,
    TResult Function(String taskName, DateTime taskTerm)? taskAdded,
    TResult Function(bool isDone, int id)? taskStatusChanged,
    TResult Function(bool showCompletedTasks)? showCompletedTasksStatusChanged,
    TResult Function(TasksSortType sortType)? tasksSortTypeChanged,
    required TResult orElse(),
  }) {
    if (taskAdded != null) {
      return taskAdded(taskName, taskTerm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageOpened value) pageOpened,
    required TResult Function(_TaskAdded value) taskAdded,
    required TResult Function(_TaskStatusChanged value) taskStatusChanged,
    required TResult Function(_ShowCompletedTasksStatusChanged value)
        showCompletedTasksStatusChanged,
    required TResult Function(_TasksSortTypeChanged value) tasksSortTypeChanged,
  }) {
    return taskAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageOpened value)? pageOpened,
    TResult? Function(_TaskAdded value)? taskAdded,
    TResult? Function(_TaskStatusChanged value)? taskStatusChanged,
    TResult? Function(_ShowCompletedTasksStatusChanged value)?
        showCompletedTasksStatusChanged,
    TResult? Function(_TasksSortTypeChanged value)? tasksSortTypeChanged,
  }) {
    return taskAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageOpened value)? pageOpened,
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_TaskStatusChanged value)? taskStatusChanged,
    TResult Function(_ShowCompletedTasksStatusChanged value)?
        showCompletedTasksStatusChanged,
    TResult Function(_TasksSortTypeChanged value)? tasksSortTypeChanged,
    required TResult orElse(),
  }) {
    if (taskAdded != null) {
      return taskAdded(this);
    }
    return orElse();
  }
}

abstract class _TaskAdded implements TasksEvent {
  const factory _TaskAdded(
      {required final String taskName,
      required final DateTime taskTerm}) = _$_TaskAdded;

  String get taskName;
  DateTime get taskTerm;
  @JsonKey(ignore: true)
  _$$_TaskAddedCopyWith<_$_TaskAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TaskStatusChangedCopyWith<$Res> {
  factory _$$_TaskStatusChangedCopyWith(_$_TaskStatusChanged value,
          $Res Function(_$_TaskStatusChanged) then) =
      __$$_TaskStatusChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDone, int id});
}

/// @nodoc
class __$$_TaskStatusChangedCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$_TaskStatusChanged>
    implements _$$_TaskStatusChangedCopyWith<$Res> {
  __$$_TaskStatusChangedCopyWithImpl(
      _$_TaskStatusChanged _value, $Res Function(_$_TaskStatusChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDone = null,
    Object? id = null,
  }) {
    return _then(_$_TaskStatusChanged(
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TaskStatusChanged implements _TaskStatusChanged {
  const _$_TaskStatusChanged({required this.isDone, required this.id});

  @override
  final bool isDone;
  @override
  final int id;

  @override
  String toString() {
    return 'TasksEvent.taskStatusChanged(isDone: $isDone, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskStatusChanged &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDone, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskStatusChangedCopyWith<_$_TaskStatusChanged> get copyWith =>
      __$$_TaskStatusChangedCopyWithImpl<_$_TaskStatusChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pageOpened,
    required TResult Function(String taskName, DateTime taskTerm) taskAdded,
    required TResult Function(bool isDone, int id) taskStatusChanged,
    required TResult Function(bool showCompletedTasks)
        showCompletedTasksStatusChanged,
    required TResult Function(TasksSortType sortType) tasksSortTypeChanged,
  }) {
    return taskStatusChanged(isDone, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pageOpened,
    TResult? Function(String taskName, DateTime taskTerm)? taskAdded,
    TResult? Function(bool isDone, int id)? taskStatusChanged,
    TResult? Function(bool showCompletedTasks)? showCompletedTasksStatusChanged,
    TResult? Function(TasksSortType sortType)? tasksSortTypeChanged,
  }) {
    return taskStatusChanged?.call(isDone, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageOpened,
    TResult Function(String taskName, DateTime taskTerm)? taskAdded,
    TResult Function(bool isDone, int id)? taskStatusChanged,
    TResult Function(bool showCompletedTasks)? showCompletedTasksStatusChanged,
    TResult Function(TasksSortType sortType)? tasksSortTypeChanged,
    required TResult orElse(),
  }) {
    if (taskStatusChanged != null) {
      return taskStatusChanged(isDone, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageOpened value) pageOpened,
    required TResult Function(_TaskAdded value) taskAdded,
    required TResult Function(_TaskStatusChanged value) taskStatusChanged,
    required TResult Function(_ShowCompletedTasksStatusChanged value)
        showCompletedTasksStatusChanged,
    required TResult Function(_TasksSortTypeChanged value) tasksSortTypeChanged,
  }) {
    return taskStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageOpened value)? pageOpened,
    TResult? Function(_TaskAdded value)? taskAdded,
    TResult? Function(_TaskStatusChanged value)? taskStatusChanged,
    TResult? Function(_ShowCompletedTasksStatusChanged value)?
        showCompletedTasksStatusChanged,
    TResult? Function(_TasksSortTypeChanged value)? tasksSortTypeChanged,
  }) {
    return taskStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageOpened value)? pageOpened,
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_TaskStatusChanged value)? taskStatusChanged,
    TResult Function(_ShowCompletedTasksStatusChanged value)?
        showCompletedTasksStatusChanged,
    TResult Function(_TasksSortTypeChanged value)? tasksSortTypeChanged,
    required TResult orElse(),
  }) {
    if (taskStatusChanged != null) {
      return taskStatusChanged(this);
    }
    return orElse();
  }
}

abstract class _TaskStatusChanged implements TasksEvent {
  const factory _TaskStatusChanged(
      {required final bool isDone,
      required final int id}) = _$_TaskStatusChanged;

  bool get isDone;
  int get id;
  @JsonKey(ignore: true)
  _$$_TaskStatusChangedCopyWith<_$_TaskStatusChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowCompletedTasksStatusChangedCopyWith<$Res> {
  factory _$$_ShowCompletedTasksStatusChangedCopyWith(
          _$_ShowCompletedTasksStatusChanged value,
          $Res Function(_$_ShowCompletedTasksStatusChanged) then) =
      __$$_ShowCompletedTasksStatusChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool showCompletedTasks});
}

/// @nodoc
class __$$_ShowCompletedTasksStatusChangedCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$_ShowCompletedTasksStatusChanged>
    implements _$$_ShowCompletedTasksStatusChangedCopyWith<$Res> {
  __$$_ShowCompletedTasksStatusChangedCopyWithImpl(
      _$_ShowCompletedTasksStatusChanged _value,
      $Res Function(_$_ShowCompletedTasksStatusChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showCompletedTasks = null,
  }) {
    return _then(_$_ShowCompletedTasksStatusChanged(
      showCompletedTasks: null == showCompletedTasks
          ? _value.showCompletedTasks
          : showCompletedTasks // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShowCompletedTasksStatusChanged
    implements _ShowCompletedTasksStatusChanged {
  const _$_ShowCompletedTasksStatusChanged({required this.showCompletedTasks});

  @override
  final bool showCompletedTasks;

  @override
  String toString() {
    return 'TasksEvent.showCompletedTasksStatusChanged(showCompletedTasks: $showCompletedTasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowCompletedTasksStatusChanged &&
            (identical(other.showCompletedTasks, showCompletedTasks) ||
                other.showCompletedTasks == showCompletedTasks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showCompletedTasks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowCompletedTasksStatusChangedCopyWith<
          _$_ShowCompletedTasksStatusChanged>
      get copyWith => __$$_ShowCompletedTasksStatusChangedCopyWithImpl<
          _$_ShowCompletedTasksStatusChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pageOpened,
    required TResult Function(String taskName, DateTime taskTerm) taskAdded,
    required TResult Function(bool isDone, int id) taskStatusChanged,
    required TResult Function(bool showCompletedTasks)
        showCompletedTasksStatusChanged,
    required TResult Function(TasksSortType sortType) tasksSortTypeChanged,
  }) {
    return showCompletedTasksStatusChanged(showCompletedTasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pageOpened,
    TResult? Function(String taskName, DateTime taskTerm)? taskAdded,
    TResult? Function(bool isDone, int id)? taskStatusChanged,
    TResult? Function(bool showCompletedTasks)? showCompletedTasksStatusChanged,
    TResult? Function(TasksSortType sortType)? tasksSortTypeChanged,
  }) {
    return showCompletedTasksStatusChanged?.call(showCompletedTasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageOpened,
    TResult Function(String taskName, DateTime taskTerm)? taskAdded,
    TResult Function(bool isDone, int id)? taskStatusChanged,
    TResult Function(bool showCompletedTasks)? showCompletedTasksStatusChanged,
    TResult Function(TasksSortType sortType)? tasksSortTypeChanged,
    required TResult orElse(),
  }) {
    if (showCompletedTasksStatusChanged != null) {
      return showCompletedTasksStatusChanged(showCompletedTasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageOpened value) pageOpened,
    required TResult Function(_TaskAdded value) taskAdded,
    required TResult Function(_TaskStatusChanged value) taskStatusChanged,
    required TResult Function(_ShowCompletedTasksStatusChanged value)
        showCompletedTasksStatusChanged,
    required TResult Function(_TasksSortTypeChanged value) tasksSortTypeChanged,
  }) {
    return showCompletedTasksStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageOpened value)? pageOpened,
    TResult? Function(_TaskAdded value)? taskAdded,
    TResult? Function(_TaskStatusChanged value)? taskStatusChanged,
    TResult? Function(_ShowCompletedTasksStatusChanged value)?
        showCompletedTasksStatusChanged,
    TResult? Function(_TasksSortTypeChanged value)? tasksSortTypeChanged,
  }) {
    return showCompletedTasksStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageOpened value)? pageOpened,
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_TaskStatusChanged value)? taskStatusChanged,
    TResult Function(_ShowCompletedTasksStatusChanged value)?
        showCompletedTasksStatusChanged,
    TResult Function(_TasksSortTypeChanged value)? tasksSortTypeChanged,
    required TResult orElse(),
  }) {
    if (showCompletedTasksStatusChanged != null) {
      return showCompletedTasksStatusChanged(this);
    }
    return orElse();
  }
}

abstract class _ShowCompletedTasksStatusChanged implements TasksEvent {
  const factory _ShowCompletedTasksStatusChanged(
          {required final bool showCompletedTasks}) =
      _$_ShowCompletedTasksStatusChanged;

  bool get showCompletedTasks;
  @JsonKey(ignore: true)
  _$$_ShowCompletedTasksStatusChangedCopyWith<
          _$_ShowCompletedTasksStatusChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TasksSortTypeChangedCopyWith<$Res> {
  factory _$$_TasksSortTypeChangedCopyWith(_$_TasksSortTypeChanged value,
          $Res Function(_$_TasksSortTypeChanged) then) =
      __$$_TasksSortTypeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({TasksSortType sortType});
}

/// @nodoc
class __$$_TasksSortTypeChangedCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$_TasksSortTypeChanged>
    implements _$$_TasksSortTypeChangedCopyWith<$Res> {
  __$$_TasksSortTypeChangedCopyWithImpl(_$_TasksSortTypeChanged _value,
      $Res Function(_$_TasksSortTypeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortType = null,
  }) {
    return _then(_$_TasksSortTypeChanged(
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as TasksSortType,
    ));
  }
}

/// @nodoc

class _$_TasksSortTypeChanged implements _TasksSortTypeChanged {
  const _$_TasksSortTypeChanged({required this.sortType});

  @override
  final TasksSortType sortType;

  @override
  String toString() {
    return 'TasksEvent.tasksSortTypeChanged(sortType: $sortType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TasksSortTypeChanged &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TasksSortTypeChangedCopyWith<_$_TasksSortTypeChanged> get copyWith =>
      __$$_TasksSortTypeChangedCopyWithImpl<_$_TasksSortTypeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pageOpened,
    required TResult Function(String taskName, DateTime taskTerm) taskAdded,
    required TResult Function(bool isDone, int id) taskStatusChanged,
    required TResult Function(bool showCompletedTasks)
        showCompletedTasksStatusChanged,
    required TResult Function(TasksSortType sortType) tasksSortTypeChanged,
  }) {
    return tasksSortTypeChanged(sortType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pageOpened,
    TResult? Function(String taskName, DateTime taskTerm)? taskAdded,
    TResult? Function(bool isDone, int id)? taskStatusChanged,
    TResult? Function(bool showCompletedTasks)? showCompletedTasksStatusChanged,
    TResult? Function(TasksSortType sortType)? tasksSortTypeChanged,
  }) {
    return tasksSortTypeChanged?.call(sortType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageOpened,
    TResult Function(String taskName, DateTime taskTerm)? taskAdded,
    TResult Function(bool isDone, int id)? taskStatusChanged,
    TResult Function(bool showCompletedTasks)? showCompletedTasksStatusChanged,
    TResult Function(TasksSortType sortType)? tasksSortTypeChanged,
    required TResult orElse(),
  }) {
    if (tasksSortTypeChanged != null) {
      return tasksSortTypeChanged(sortType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageOpened value) pageOpened,
    required TResult Function(_TaskAdded value) taskAdded,
    required TResult Function(_TaskStatusChanged value) taskStatusChanged,
    required TResult Function(_ShowCompletedTasksStatusChanged value)
        showCompletedTasksStatusChanged,
    required TResult Function(_TasksSortTypeChanged value) tasksSortTypeChanged,
  }) {
    return tasksSortTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageOpened value)? pageOpened,
    TResult? Function(_TaskAdded value)? taskAdded,
    TResult? Function(_TaskStatusChanged value)? taskStatusChanged,
    TResult? Function(_ShowCompletedTasksStatusChanged value)?
        showCompletedTasksStatusChanged,
    TResult? Function(_TasksSortTypeChanged value)? tasksSortTypeChanged,
  }) {
    return tasksSortTypeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageOpened value)? pageOpened,
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_TaskStatusChanged value)? taskStatusChanged,
    TResult Function(_ShowCompletedTasksStatusChanged value)?
        showCompletedTasksStatusChanged,
    TResult Function(_TasksSortTypeChanged value)? tasksSortTypeChanged,
    required TResult orElse(),
  }) {
    if (tasksSortTypeChanged != null) {
      return tasksSortTypeChanged(this);
    }
    return orElse();
  }
}

abstract class _TasksSortTypeChanged implements TasksEvent {
  const factory _TasksSortTypeChanged({required final TasksSortType sortType}) =
      _$_TasksSortTypeChanged;

  TasksSortType get sortType;
  @JsonKey(ignore: true)
  _$$_TasksSortTypeChangedCopyWith<_$_TasksSortTypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TasksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(List<Task> tasksList, bool showInstructions,
            bool isUpdateInProgress, Object? updatingError)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(List<Task> tasksList, bool showInstructions,
            bool isUpdateInProgress, Object? updatingError)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(List<Task> tasksList, bool showInstructions,
            bool isUpdateInProgress, Object? updatingError)?
        loadSuccess,
    TResult Function(Object loadError)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksLoadInProgress value) loadInProgress,
    required TResult Function(TasksLoadSuccess value) loadSuccess,
    required TResult Function(TasksLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksLoadInProgress value)? loadInProgress,
    TResult? Function(TasksLoadSuccess value)? loadSuccess,
    TResult? Function(TasksLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksLoadInProgress value)? loadInProgress,
    TResult Function(TasksLoadSuccess value)? loadSuccess,
    TResult Function(TasksLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
          TasksState value, $Res Function(TasksState) then) =
      _$TasksStateCopyWithImpl<$Res, TasksState>;
}

/// @nodoc
class _$TasksStateCopyWithImpl<$Res, $Val extends TasksState>
    implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TasksLoadInProgressCopyWith<$Res> {
  factory _$$TasksLoadInProgressCopyWith(_$TasksLoadInProgress value,
          $Res Function(_$TasksLoadInProgress) then) =
      __$$TasksLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TasksLoadInProgressCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksLoadInProgress>
    implements _$$TasksLoadInProgressCopyWith<$Res> {
  __$$TasksLoadInProgressCopyWithImpl(
      _$TasksLoadInProgress _value, $Res Function(_$TasksLoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TasksLoadInProgress implements TasksLoadInProgress {
  const _$TasksLoadInProgress();

  @override
  String toString() {
    return 'TasksState.loadInProgress()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(List<Task> tasksList, bool showInstructions,
            bool isUpdateInProgress, Object? updatingError)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(List<Task> tasksList, bool showInstructions,
            bool isUpdateInProgress, Object? updatingError)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(List<Task> tasksList, bool showInstructions,
            bool isUpdateInProgress, Object? updatingError)?
        loadSuccess,
    TResult Function(Object loadError)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksLoadInProgress value) loadInProgress,
    required TResult Function(TasksLoadSuccess value) loadSuccess,
    required TResult Function(TasksLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksLoadInProgress value)? loadInProgress,
    TResult? Function(TasksLoadSuccess value)? loadSuccess,
    TResult? Function(TasksLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksLoadInProgress value)? loadInProgress,
    TResult Function(TasksLoadSuccess value)? loadSuccess,
    TResult Function(TasksLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class TasksLoadInProgress implements TasksState {
  const factory TasksLoadInProgress() = _$TasksLoadInProgress;
}

/// @nodoc
abstract class _$$TasksLoadSuccessCopyWith<$Res> {
  factory _$$TasksLoadSuccessCopyWith(
          _$TasksLoadSuccess value, $Res Function(_$TasksLoadSuccess) then) =
      __$$TasksLoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Task> tasksList,
      bool showInstructions,
      bool isUpdateInProgress,
      Object? updatingError});
}

/// @nodoc
class __$$TasksLoadSuccessCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksLoadSuccess>
    implements _$$TasksLoadSuccessCopyWith<$Res> {
  __$$TasksLoadSuccessCopyWithImpl(
      _$TasksLoadSuccess _value, $Res Function(_$TasksLoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasksList = null,
    Object? showInstructions = null,
    Object? isUpdateInProgress = null,
    Object? updatingError = freezed,
  }) {
    return _then(_$TasksLoadSuccess(
      tasksList: null == tasksList
          ? _value._tasksList
          : tasksList // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      showInstructions: null == showInstructions
          ? _value.showInstructions
          : showInstructions // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdateInProgress: null == isUpdateInProgress
          ? _value.isUpdateInProgress
          : isUpdateInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      updatingError:
          freezed == updatingError ? _value.updatingError : updatingError,
    ));
  }
}

/// @nodoc

class _$TasksLoadSuccess implements TasksLoadSuccess {
  const _$TasksLoadSuccess(
      {required final List<Task> tasksList,
      required this.showInstructions,
      this.isUpdateInProgress = false,
      this.updatingError})
      : _tasksList = tasksList;

  final List<Task> _tasksList;
  @override
  List<Task> get tasksList {
    if (_tasksList is EqualUnmodifiableListView) return _tasksList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasksList);
  }

  @override
  final bool showInstructions;
  @override
  @JsonKey()
  final bool isUpdateInProgress;
  @override
  final Object? updatingError;

  @override
  String toString() {
    return 'TasksState.loadSuccess(tasksList: $tasksList, showInstructions: $showInstructions, isUpdateInProgress: $isUpdateInProgress, updatingError: $updatingError)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksLoadSuccessCopyWith<_$TasksLoadSuccess> get copyWith =>
      __$$TasksLoadSuccessCopyWithImpl<_$TasksLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(List<Task> tasksList, bool showInstructions,
            bool isUpdateInProgress, Object? updatingError)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) {
    return loadSuccess(
        tasksList, showInstructions, isUpdateInProgress, updatingError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(List<Task> tasksList, bool showInstructions,
            bool isUpdateInProgress, Object? updatingError)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) {
    return loadSuccess?.call(
        tasksList, showInstructions, isUpdateInProgress, updatingError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(List<Task> tasksList, bool showInstructions,
            bool isUpdateInProgress, Object? updatingError)?
        loadSuccess,
    TResult Function(Object loadError)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(
          tasksList, showInstructions, isUpdateInProgress, updatingError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksLoadInProgress value) loadInProgress,
    required TResult Function(TasksLoadSuccess value) loadSuccess,
    required TResult Function(TasksLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksLoadInProgress value)? loadInProgress,
    TResult? Function(TasksLoadSuccess value)? loadSuccess,
    TResult? Function(TasksLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksLoadInProgress value)? loadInProgress,
    TResult Function(TasksLoadSuccess value)? loadSuccess,
    TResult Function(TasksLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class TasksLoadSuccess implements TasksState {
  const factory TasksLoadSuccess(
      {required final List<Task> tasksList,
      required final bool showInstructions,
      final bool isUpdateInProgress,
      final Object? updatingError}) = _$TasksLoadSuccess;

  List<Task> get tasksList;
  bool get showInstructions;
  bool get isUpdateInProgress;
  Object? get updatingError;
  @JsonKey(ignore: true)
  _$$TasksLoadSuccessCopyWith<_$TasksLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksLoadFailureCopyWith<$Res> {
  factory _$$TasksLoadFailureCopyWith(
          _$TasksLoadFailure value, $Res Function(_$TasksLoadFailure) then) =
      __$$TasksLoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Object loadError});
}

/// @nodoc
class __$$TasksLoadFailureCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksLoadFailure>
    implements _$$TasksLoadFailureCopyWith<$Res> {
  __$$TasksLoadFailureCopyWithImpl(
      _$TasksLoadFailure _value, $Res Function(_$TasksLoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadError = null,
  }) {
    return _then(_$TasksLoadFailure(
      loadError: null == loadError ? _value.loadError : loadError,
    ));
  }
}

/// @nodoc

class _$TasksLoadFailure implements TasksLoadFailure {
  const _$TasksLoadFailure({required this.loadError});

  @override
  final Object loadError;

  @override
  String toString() {
    return 'TasksState.loadFailure(loadError: $loadError)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksLoadFailureCopyWith<_$TasksLoadFailure> get copyWith =>
      __$$TasksLoadFailureCopyWithImpl<_$TasksLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(List<Task> tasksList, bool showInstructions,
            bool isUpdateInProgress, Object? updatingError)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) {
    return loadFailure(loadError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(List<Task> tasksList, bool showInstructions,
            bool isUpdateInProgress, Object? updatingError)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) {
    return loadFailure?.call(loadError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(List<Task> tasksList, bool showInstructions,
            bool isUpdateInProgress, Object? updatingError)?
        loadSuccess,
    TResult Function(Object loadError)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(loadError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksLoadInProgress value) loadInProgress,
    required TResult Function(TasksLoadSuccess value) loadSuccess,
    required TResult Function(TasksLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksLoadInProgress value)? loadInProgress,
    TResult? Function(TasksLoadSuccess value)? loadSuccess,
    TResult? Function(TasksLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksLoadInProgress value)? loadInProgress,
    TResult Function(TasksLoadSuccess value)? loadSuccess,
    TResult Function(TasksLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class TasksLoadFailure implements TasksState {
  const factory TasksLoadFailure({required final Object loadError}) =
      _$TasksLoadFailure;

  Object get loadError;
  @JsonKey(ignore: true)
  _$$TasksLoadFailureCopyWith<_$TasksLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
