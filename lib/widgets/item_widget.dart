import "package:flutter/material.dart";
import 'package:flutter_catalog/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Card(
        child: ListTile(
          onTap: () {},
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text("\$${item.price}",
              textScaleFactor: 1.5,
              style: const TextStyle(
                  color: Colors.deepPurple, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
