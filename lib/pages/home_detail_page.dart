// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_catalog/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : assert(catalog != null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${catalog.price}".text.bold.xl4.red800.make(),
                    AddToCart(catalog: catalog).wh(150, 50),
                  ],
                ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
  catalog.imageUrl.startsWith("http")
      ? Hero(
          tag: Key(catalog.id.toString()),
          child: Image.network(catalog.imageUrl),
        ).h32(context)
      : Hero(
          tag: Key(catalog.id.toString()),
          child: Image.asset(catalog.imageUrl),
        ).h32(context),
        
  Expanded(
    child: VxArc(
      height: 30.0,
      arcType: VxArcType.convey,
      edge: VxEdge.top,
      child: Container(
        color: Colors.white,
        width: context.screenWidth,
        child: Column(
          children: [
            catalog.name.text.xl4.color(MyTheme.darkBluishColor).bold.make(),
              catalog.description.text.textStyle(context.captionStyle).xl.make(),
              10.heightBox,
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
              .text
              .textStyle(context.captionStyle)
              .make()
              .p16(),
          ],
        ).py64()
      ),
    ),
  ),
]
,
        ),
      ),
    );
  }
}
