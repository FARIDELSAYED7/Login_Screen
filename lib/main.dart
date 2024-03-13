import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_app/Screens/Join_screen.dart';
import 'package:login_app/Screens/main_screen.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage()));
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Main_Screen();
  }
}
