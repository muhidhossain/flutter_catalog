import "package:flutter/material.dart";
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Muhid";

    return Scaffold(
      appBar: AppBar(title: const Text('Catalog App')),
      body: Center(
        child: Text('Welcome to $days days of flutter by $name'),
      ),
      drawer: MyDrawer(key: key),
    );
  }
}
