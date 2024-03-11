import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:licensehome/feature/home/home_page.dart';
import 'package:licensehome/feature/splash/splash_page.dart';
import 'package:licensehome/firebase_options.dart';

import 'package:licensehome/shared/theme/app_theme.dart';
import 'package:licensehome/feature/login/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().theme,
      home: const SplashPage(),
    );
  }
}
