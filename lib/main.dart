import 'package:flutter/material.dart';
import 'package:you_tube2/screens/login_page.dart';
import 'package:you_tube2/utils/routes.dart';
import 'package:you_tube2/widg/theme.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String days = "CATLOG APP";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.LightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRouts.homeroutes,
      routes: {
        "/": (context) => Login(),
        MyRouts.homeroutes: (context) => const HomePage(),
        MyRouts.loginroutes: (context) => Login(),
      },
    );
  }
}
