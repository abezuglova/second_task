import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:second_task/data/repository/remote_tasks_repository.dart';
import 'package:second_task/presentation/tasks_app/tasks_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyBV_J6Zp2A4y8FeFqisyXA57l3k9Wc2w0E',
      appId: '1:547423171414:android:5cd261415debc0f60d5cf7',
      messagingSenderId: '547423171414',
      projectId: 'tasks-99b61',
    ),
  );
  runApp(
    TasksApp(
      tasksRepository: RemoteTasksRepository(),
    ),
  );
}
