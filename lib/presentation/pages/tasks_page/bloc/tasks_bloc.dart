import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:second_task/domain/entities/task.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';
part 'tasks_bloc.freezed.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc() : super(const _LoadInProgress()) {
    on<_PageOpened>(_onPageOpened);
  }

  Future<void> _onPageOpened(
    _PageOpened event,
    Emitter<TasksState> emit,
  ) async {
    
  }
}
