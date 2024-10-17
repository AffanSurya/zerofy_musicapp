import 'package:flutter/material.dart';
import 'package:zerofy_musicapp/core/configs/theme/app_theme.dart';
import 'package:zerofy_musicapp/presentation/splash/pages/splash.dart';

/// Flutter code sample for [MenuAnchor].

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lighTheme,
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
