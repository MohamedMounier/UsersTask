import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:users_task/presentation/dashboard.dart';
import 'package:users_task/resources/theme_manager.dart';

import 'enums.dart';

void main() {
  runApp(const MyApp(

  ));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FlutterSizer(
      builder: (context, orientation, deviceType) {
        return LayoutBuilder(
          builder: (context, constraints) {

            return MaterialApp(
              title: 'Users Task',
              theme: AppThemeManager().getAppTheme(AppThemeEnum.light),
              debugShowCheckedModeBanner: false,
              home: const DashboardScreen(),
            );
          },
        );
      },
    );
  }
}


