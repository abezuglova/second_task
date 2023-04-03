import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:second_task/domain/entities/task.dart';
import 'package:second_task/domain/entities/tasks_sort_type.dart';
import 'package:second_task/domain/repository/i_tasks_repository.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';
part 'tasks_bloc.freezed.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  static const defaultSort = TasksSortType.alphaSort;
  final ITasksRepository tasksRepository;
  var _tasksList = <Task>[];
  TasksBloc(this.tasksRepository) : super(const TasksLoadInProgress()) {
    on<_PageOpened>(_onPageOpened);
    on<_TaskAdded>(_onTaskAdded);
    on<_TaskStatusChanged>(_onTaskStatusChanged);
    on<_ShowCompletedTasksStatusChanged>(_onShowCompletedTasksStatusChanged);
    on<_TasksSortTypeChanged>(_onTasksSortTypeChanged);
  }

  Future<void> _onPageOpened(
    _PageOpened event,
    Emitter<TasksState> emit,
  ) async {
    try {
      _tasksList = await tasksRepository.getTasksList();
      emit(
        TasksState.loadSuccess(
          tasksList: defaultSort.sort(_tasksList),
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
          isCompleted: false,
        );
        await tasksRepository.addTask(task);
        _tasksList = await tasksRepository.getTasksList();
        emit(
          currentState.copyWith(
            isUpdateInProgress: false,
            tasksList: currentState.sortType.sort(_tasksList),
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
        await tasksRepository.changeStatus(id: event.id, isCompleted: event.isDone);
        final taskIndex = _tasksList.indexWhere((task) => task.id == event.id);
        _tasksList[taskIndex] =
            _tasksList[taskIndex].copyWith(isCompleted: event.isDone);
        emit(
          currentState.copyWith(
            isUpdateInProgress: false,
            tasksList: currentState.sortType.sort(_tasksList),
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

  Future<void> _onShowCompletedTasksStatusChanged(
    _ShowCompletedTasksStatusChanged event,
    Emitter<TasksState> emit,
  ) async {
    final currentState = state;
    if (currentState is TasksLoadSuccess) {
      final tasksList = event.showCompletedTasks
          ? _tasksList
          : _tasksList.where((element) => !element.isCompleted).toList();
      emit(
        currentState.copyWith(
          tasksList: currentState.sortType.sort(tasksList),
          areCompletedTasksShown: event.showCompletedTasks,
        ),
      );
    }
  }

  Future<void> _onTasksSortTypeChanged(
    _TasksSortTypeChanged event,
    Emitter<TasksState> emit,
  ) async {
    final currentState = state;
    if (currentState is TasksLoadSuccess) {
      emit(
        currentState.copyWith(
          tasksList: event.sortType.sort(_tasksList),
          sortType: event.sortType,
        ),
      );
    }
  }
}
