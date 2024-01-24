import 'package:flutter/material.dart';
import 'package:tasks_management/dashboard.dart';
import 'package:tasks_management/splash_screen.dart';
import 'package:tasks_management/tasks_page.dart';

class TasksApp extends StatelessWidget {
  const TasksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: <String, WidgetBuilder>{
          "/": (context) => const SplashScreen(),
          "/dashboard": (context) => const Dashboard(),
          "/taskPage": (context) => const TasksPage(),
        });
  }
}
