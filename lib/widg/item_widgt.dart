import 'package:flutter/material.dart';
import 'package:you_tube2/models/catlog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const StadiumBorder(),
      child: ListTile(
        onTap: () {
          print("₹${item.name} Pressed");
        },
        leading: Image.network(item.imageurl),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "₹${item.price.toString()}",
          style: const TextStyle(
              color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
