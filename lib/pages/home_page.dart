import "package:flutter/material.dart";
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyLinst = List.generate(20, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(title: const Text('Catalog App')),
      body: ListView.builder(
        itemCount: dummyLinst.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemWidget(
            item: dummyLinst[index],
          );
        },
      ),
      drawer: MyDrawer(key: key),
    );
  }
}
