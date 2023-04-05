import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:second_task/domain/entities/task.dart';

class FirebaseTasksDatabase {
  CollectionReference tasks = FirebaseFirestore.instance.collection('tasks');
  Future<List<Task>> getTasksList() async => (await tasks.get()).docs.map(
        (doc) {
          final data = doc.data() as Map<String, dynamic>;
          return Task(
              id: doc.id,
              name: data['name'],
              termDateTime: (data['termDateTime'] as Timestamp).toDate(),
              isCompleted: data['isCompleted']);
        },
      ).toList();

  Future<String> addTask(Task task) async {
    final doc = await tasks.add(
      {
        'name': task.name,
        'termDateTime': task.termDateTime,
        'isCompleted': task.isCompleted,
      },
    );
    return doc.id;
  }

  Future<void> changeStatus({
    required String id,
    required bool isCompleted,
  }) async =>
      await tasks.doc(id).update(
        {'isCompleted': isCompleted},
      );
}
