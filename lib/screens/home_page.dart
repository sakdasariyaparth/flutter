import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:you_tube2/models/catlog.dart';
import '../widg/drawer.dart';
import '../widg/item_widgt.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final productJson =
        await rootBundle.loadString("assets/file/products.json");
    final jasonDecod = jsonDecode(productJson);
    var productsData = jasonDecod["products"];
    print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(6, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CATLOG APP",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
