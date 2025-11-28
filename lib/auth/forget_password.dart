import 'package:evently/widgets/default_elevated_button.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  static const String routName = '/forgetPassword';

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/forget.png'),
            SizedBox(height: 24),
            DefaultElevatedButton(
              label: 'Reset Password',
              onPressed: forgetPassword,
            ),
          ],
        ),
      ),
    );
  }

  void forgetPassword() {}
}
