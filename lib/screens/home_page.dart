import 'package:flutter/material.dart';

import '../widg/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CATLOG APP"),
      ),
      body: Center(
        child: Container(child: Text("FLUTTER IS BACK IN WORK")),
      ),
      drawer: const MyDrawer(),
    );
  }
}
