import 'package:flutter/material.dart';
import 'package:user_auth/screens/login_screen.dart';
import 'package:user_auth/screens/register_screen.dart';

class LoginOrRegisterScreen extends StatefulWidget {
  const LoginOrRegisterScreen({super.key});

  @override
  State<LoginOrRegisterScreen> createState() => _LoginOrRegisterScreenState();
}

class _LoginOrRegisterScreenState extends State<LoginOrRegisterScreen> {
  // initially show login screen
  bool showLoginScreen = true;

  // toggle between login and register screen
  void toggleScreens() {
    setState(() {
      showLoginScreen = !showLoginScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginScreen) {
      return LoginScreen(
        onPressed: toggleScreens,
      );
    } else {
      return RegisterScreen(
        onPressed: toggleScreens,
      );
    }
  }
}
