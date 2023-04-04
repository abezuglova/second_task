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
  ) async =>
      await state.mapOrNull<Future>(
        loadSuccess: (state) async {
          try {
            emit(
              state.copyWith(
                isUpdateInProgress: true,
              ),
            );
            final task = Task(
              id: '-1',
              name: event.taskName,
              termDateTime: event.taskTerm,
              isCompleted: false,
            );
            await tasksRepository.addTask(task);
            _tasksList = await tasksRepository.getTasksList();
            emit(
              state.copyWith(
                isUpdateInProgress: false,
                tasksList: state.sortType.sort(_tasksList),
              ),
            );
          } catch (error, stackTrace) {
            log(
              'Error during task adding',
              error: error,
              stackTrace: stackTrace,
            );
            emit(
              state.copyWith(
                isUpdateInProgress: false,
                updatingError: error,
              ),
            );
            emit(
              state.copyWith(updatingError: null),
            );
          }
        },
      );

  Future<void> _onTaskStatusChanged(
    _TaskStatusChanged event,
    Emitter<TasksState> emit,
  ) async =>
      await state.mapOrNull<Future>(
        loadSuccess: (state) async {
          try {
            emit(
              state.copyWith(
                isUpdateInProgress: true,
              ),
            );
            await tasksRepository.changeStatus(
                id: event.id, isCompleted: event.isDone);
            final taskIndex =
                _tasksList.indexWhere((task) => task.id == event.id);
            _tasksList[taskIndex] =
                _tasksList[taskIndex].copyWith(isCompleted: event.isDone);
            emit(
              state.copyWith(
                isUpdateInProgress: false,
                tasksList: state.sortType.sort(_tasksList),
              ),
            );
          } catch (error, stackTrace) {
            log(
              'Error during task status changing',
              error: error,
              stackTrace: stackTrace,
            );
            emit(
              state.copyWith(
                isUpdateInProgress: false,
                updatingError: error,
              ),
            );
            emit(
              state.copyWith(updatingError: null),
            );
          }
        },
      );

  Future<void> _onShowCompletedTasksStatusChanged(
    _ShowCompletedTasksStatusChanged event,
    Emitter<TasksState> emit,
  ) async =>
      await state.mapOrNull<Future>(
        loadSuccess: (state) async {
          final tasksList = event.showCompletedTasks
              ? _tasksList
              : _tasksList.where((element) => !element.isCompleted).toList();
          emit(
            state.copyWith(
              tasksList: state.sortType.sort(tasksList),
              areCompletedTasksShown: event.showCompletedTasks,
            ),
          );
        },
      );

  Future<void> _onTasksSortTypeChanged(
    _TasksSortTypeChanged event,
    Emitter<TasksState> emit,
  ) async =>
      await state.mapOrNull<Future>(
        loadSuccess: (state) async {
          emit(
            state.copyWith(
              tasksList: event.sortType.sort(_tasksList),
              sortType: event.sortType,
            ),
          );
        },
      );
}
