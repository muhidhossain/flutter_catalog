import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/models/catalog.dart';
import "package:velocity_x/velocity_x.dart";

class AddToCart extends StatefulWidget {
  final Item catalog;
  const AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<AddToCart> createState() => AddToCartState();
}

class AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    bool isInCart = _cart.items.contains(widget.catalog);
    return ElevatedButton(
        onPressed: () {
          if (!isInCart) {
            isInCart = isInCart.toggle();
            final _catalog = CatalogModel();

            _cart.catalog = _catalog;
            _cart.add(widget.catalog);
            setState(() {});
          }
        },
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(context.theme.buttonColor),
            shape: MaterialStateProperty.all(const StadiumBorder())),
        child: isInCart
            ? const Icon(Icons.done)
            : const Icon(CupertinoIcons.cart_badge_plus));
  }
}
