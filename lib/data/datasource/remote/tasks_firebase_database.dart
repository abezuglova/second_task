import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:second_task/domain/entities/task.dart';

class TasksFirebaseDatabase {
  CollectionReference tasks = FirebaseFirestore.instance.collection('tasks');
  Future<List<Task>> getTasksList() async {
    return (await tasks.get()).docs.map(
      (doc) {
        final data = doc.data() as Map<String, dynamic>;
        return Task(
            id: doc.id,
            name: data['name'],
            termDateTime: (data['termDateTime'] as Timestamp).toDate(),
            isCompleted: data['isCompleted']);
      },
    ).toList();
  }
}
