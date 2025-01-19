import 'package:flutter/material.dart';
import 'package:learnfromyt/config/app_routes.dart';
import 'package:learnfromyt/pages/edit_profile.dart';
import 'package:learnfromyt/pages/home_page.dart';
import 'package:learnfromyt/pages/main_page.dart';
import 'package:learnfromyt/styles/app_colors.dart';

import 'pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.light
      ),
     // home: const Login(),
      initialRoute: AppRoutes.login,
      routes: AppRoutes.pages
    );
  }
}
