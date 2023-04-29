import 'package:flutter/material.dart';
import 'package:you_tube2/screens/login_page.dart';
import 'package:you_tube2/utils/routes.dart';
import 'package:you_tube2/widg/theme.dart';
import 'screens/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
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
        MyRouts.loginroutes: (context) => Login(),
        MyRouts.homeroutes: (context) => HomePage(),
      },
    );
  }
}
