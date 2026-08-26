import 'package:flutter/material.dart';
import 'ui/splash.dart';
import 'style/theme.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: AppTheme.modo,

      builder: (context, modo, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          title: 'Flutter Veículos',

          theme: AppTheme.temaClaro,

          darkTheme: AppTheme.temaEscuro,

          themeMode: modo,

          home: const Splash(),
        );
      },
    );
  }
}