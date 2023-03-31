import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:second_task/domain/entities/task.dart';
import 'package:second_task/domain/repository/i_tasks_repository.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';
part 'tasks_bloc.freezed.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  final ITasksRepository tasksRepository;
  TasksBloc(this.tasksRepository) : super(const TasksLoadInProgress()) {
    on<_PageOpened>(_onPageOpened);
    on<_TaskAdded>(_onTaskAdded);
    on<_TaskStatusChanged>(_onTaskStatusChanged);
  }

  Future<void> _onPageOpened(
    _PageOpened event,
    Emitter<TasksState> emit,
  ) async {
    try {
      final tasks = await tasksRepository.getTasksList();
      emit(
        TasksState.loadSuccess(
          tasksList: tasks,
          showInstructions: tasks.isEmpty ? true : false,
        ),
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

  Future<void> _onTaskAdded(
    _TaskAdded event,
    Emitter<TasksState> emit,
  ) async {
    final currentState = state;
    if (currentState is TasksLoadSuccess) {
      try {
        emit(
          currentState.copyWith(
            isUpdateInProgress: true,
          ),
        );
        final task = Task(
          id: -1,
          name: event.taskName,
          termDateTime: event.taskTerm,
          isDone: false,
        );
        await tasksRepository.addTask(task);
        final updatedTasksList = await tasksRepository.getTasksList();
        emit(
          currentState.copyWith(
            isUpdateInProgress: false,
            tasksList: updatedTasksList,
          ),
        );
      } catch (error, stackTrace) {
        log(
          'Error during task adding',
          error: error,
          stackTrace: stackTrace,
        );
        emit(
          currentState.copyWith(
            isUpdateInProgress: false,
            updatingError: error,
          ),
        );
        emit(
          currentState.copyWith(updatingError: null),
        );
      }
    }
  }

  Future<void> _onTaskStatusChanged(
    _TaskStatusChanged event,
    Emitter<TasksState> emit,
  ) async {
    final currentState = state;
    if (currentState is TasksLoadSuccess) {
      try {
        emit(
          currentState.copyWith(
            isUpdateInProgress: true,
          ),
        );
        await tasksRepository.changeStatus(id: event.id, isDone: event.isDone);
        final updatedList = [...currentState.tasksList];
        final taskIndex =
            updatedList.indexWhere((task) => task.id == event.id);
        updatedList[taskIndex] =
            updatedList[taskIndex].copyWith(isDone: event.isDone);
        emit(
          currentState.copyWith(
            isUpdateInProgress: false,
            tasksList: updatedList,
          ),
        );
      } catch (error, stackTrace) {
        log(
          'Error during task status changing',
          error: error,
          stackTrace: stackTrace,
        );
        emit(
          currentState.copyWith(
            isUpdateInProgress: false,
            updatingError: error,
          ),
        );
        emit(
          currentState.copyWith(updatingError: null),
        );
      }
    }
  }
}
