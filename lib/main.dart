import 'package:clean_architecture_flutter/core/secert/app_secert.dart';
import 'package:clean_architecture_flutter/core/themes/theme.dart';
import 'package:clean_architecture_flutter/feature/auth/presentation/pages/login.dart';

import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: AppSecert.appurl,
    anonKey: AppSecert.appKey,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Blog',
        theme: AppTheme.darkThemeMode,
        home: const LoginPage());
  }
}
