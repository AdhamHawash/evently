import 'package:evently/default_elevated_button.dart';
import 'package:evently/default_text_from_field.dart';
import 'package:evently/login_screen.dart';
import 'package:flutter/material.dart';

class RegesterScreen extends StatefulWidget {
  static const String routeName = '/regester';

  @override
  State<RegesterScreen> createState() => _RegesterScreenState();
}

class _RegesterScreenState extends State<RegesterScreen> {
  TextEditingController nameController = TextEditingController();
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
              hintText: 'Name',
              controller: nameController,
              prefixIconImageName: 'name',
            ),
            SizedBox(height: 16),
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
            SizedBox(height: 24),
            DefaultElevatedButton(label: 'Create Account', onPressed: regester),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already Have Account ?',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextButton(
                  onPressed:
                      () => Navigator.of(
                        context,
                      ).pushReplacementNamed(LoginScreen.routeName),
                  child: Text('Login'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void regester() {}
}
