import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:second_task/data/repository/mock_tasks_repository.dart';
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
    try {
      final tasks = await MockTasksRepository().getTasksList();
      emit(
        TasksState.loadSuccess(
            tasksList: tasks, showInstructions: tasks.isEmpty ? true : false),
      );
    } catch (error, stackTrace) {
      log(
        'Error during tasks list loading',
        error: error,
        stackTrace: stackTrace,
      );
      emit(TasksState.loadFailure(loadError: error));
    }
  }
}
