import 'package:evently/default_elevated_button.dart';
import 'package:evently/default_text_from_field.dart';
import 'package:evently/forget_password.dart';
import 'package:evently/regester_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/login.png',
              height: MediaQuery.sizeOf(context).height * 0.2,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 24),
            DefaultTextFormField(
              hintText: 'Email',
              controller: emailController,
              prefixIconImageName: 'email',
            ),
            SizedBox(height: 16),
            DefaultTextFormField(
              hintText: 'password',
              controller: passwordController,
              prefixIconImageName: 'password',
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed:
                      () => Navigator.of(context).pushReplacementNamed(ForgetPassword.routName),
                  child: Text('Forget Password?'),
                ),
              ],
            ),
            SizedBox(height: 24),
            DefaultElevatedButton(label: 'Login', onPressed: login),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t Have Account ?',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextButton(
                  onPressed:
                      () => Navigator.of(
                        context,
                      ).pushReplacementNamed(RegesterScreen.routeName),
                  child: Text('Create Account'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void login() {}
}
