import 'package:firebase_setup/widget/login_widget.dart';
import 'package:firebase_setup/widget/signup_widget.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) => isLogin
      ? LoginWidget(onClickedSignUp: toggle)
      : SignUpWidget(onClickedSignIn: toggle);

  void toggle() {
    setState(() {
      isLogin = !isLogin;
    });
  }
}
