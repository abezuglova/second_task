import 'package:second_task/presentation/pages/info_page/info_page.dart';
import 'package:second_task/presentation/pages/tasks_page/tasks_page.dart';

class AppRoutes {
  static const tasksPageRoute = '/tasks_page';
  static const infoPageRoute = '/info_page';
  static final routes = {
    tasksPageRoute: (context) => const TasksPage(),
    infoPageRoute: (context) => const InfoPage(),
  };
  static const initialRoute = tasksPageRoute;
}
