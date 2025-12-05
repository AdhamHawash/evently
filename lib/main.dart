import 'package:evently/app_theme.dart';
import 'package:evently/auth/forget_password.dart';
import 'package:evently/home_screen.dart';
import 'package:evently/auth/login_screen.dart';
import 'package:evently/on_Bording_screen.dart';
import 'package:evently/auth/regester_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); 
  runApp(evntleApp());
}

class evntleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        OnBordingScreen.routeName: (_) => OnBordingScreen(),
        LoginScreen.routeName: (_) => LoginScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        RegesterScreen.routeName: (_) => RegesterScreen(),
        ForgetPassword.routName: (_) => ForgetPassword(),
      },
      initialRoute: HomeScreen.routeName,

      theme: AppTheme.lighTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
