import 'package:chosn_test/auth/login_register.dart';
import 'package:chosn_test/pages/light_mode.dart';
import 'package:chosn_test/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginRegister(),
      theme: lightMode,
    );
  }
}
