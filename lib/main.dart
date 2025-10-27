import 'package:evently/app_theme.dart';
import 'package:evently/forget_password.dart';
import 'package:evently/home_screen.dart';
import 'package:evently/login_screen.dart';
import 'package:evently/regester_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(evntleApp());
}

class evntleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        LoginScreen.routeName: (_) => LoginScreen(),
        RegesterScreen.routeName : (_) => RegesterScreen(),
        ForgetPassword.routName : (_) => ForgetPassword(),
      },
      initialRoute: LoginScreen.routeName,

      theme: AppTheme.lighTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
