import 'package:counterwithprovider/screens/home_screen.dart';
import 'package:counterwithprovider/screens/setting_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = '/';
  static const String setting = '/setting';

  static Map<String, WidgetBuilder> get routes {
    return {
      home: (context) => const HomeScreen(),
      setting: (context) => const SettingScreen(),
    };
  }
}