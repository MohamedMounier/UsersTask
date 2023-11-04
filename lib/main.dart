import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:users_task/presentation/dashboard.dart';
import 'package:users_task/resources/theme_manager.dart';

void main() {
  // runApp(const MyApp(
  //
  // ));
  runApp(DevicePreview(
    enabled: true,
    tools: [
      ...DevicePreview.defaultTools,

    ],
    builder: (context) => const MyApp(),
  ),);
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
            print("max width ${constraints.maxWidth}");
            print("max height ${constraints.maxHeight}");
            return MaterialApp(

              title: 'Users Task',
              theme: AppThemeManager().getAppTheme(AppThemeEnum.LIGHT),
              debugShowCheckedModeBanner: false,
              home: DashboardScreen(),
            );
          },
        );
      },
    );
  }
}


