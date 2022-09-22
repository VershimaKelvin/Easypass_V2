import 'package:easypass/core/constants/app_theme.dart';
import 'package:easypass/core/navigators/navigators.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Charleston',
      theme: AppTheme.themeData,

      onGenerateRoute: onGenerateRoute,
      initialRoute: RouteName.splashScreen,
    );
  }
}