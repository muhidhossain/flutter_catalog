import "package:flutter/material.dart";
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/pages/add_to_cart.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import "package:velocity_x/velocity_x.dart";

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  final Item catalog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent),
        backgroundColor: context.canvasColor,
        bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl4.red800.make(),
              AddToCart(
                catalog: catalog,
              ).wh(120, 50)
            ],
          ).p32(),
        ),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                      tag: Key(catalog.id.toString()),
                      child: Image.network(catalog.image))
                  .h32(context),
              Expanded(
                child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    color: context.cardColor,
                    width: context.screenWidth,
                    child: VxScrollVertical(
                      child: Column(
                        children: [
                          catalog.name.text.xl4
                              .color(context.accentColor)
                              .bold
                              .make(),
                          catalog.desc.text.xl.color(Vx.gray500).make(),
                          10.heightBox,
                          "Incididunt qui do sunt commodo sunt fugiat. Voluptate laborum ullamco aliquip ex esse dolor duis. Minim anim non non et velit incididunt consequat."
                              .text
                              .color(Vx.gray500)
                              .make()
                              .p16()
                        ],
                      ).py64(),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
