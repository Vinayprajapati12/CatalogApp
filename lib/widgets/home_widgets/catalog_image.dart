
import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String imageUrl;

  const CatalogImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return imageUrl.startsWith("http")
        ? Image.network(imageUrl)
            .box
            .rounded
            .p8
            .color(MyTheme.creamColor)
            .make()
            .p16()
            .w40(context)
        : Image.asset(imageUrl)
            .box
            .rounded
            .p8
            .color(MyTheme.creamColor)
            .make()
            .p16()
            .w40(context);
  }
}