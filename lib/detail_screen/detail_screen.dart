import 'package:flutter/material.dart';
import 'package:playstation_store/detail_screen/component/detail_mobile_page.dart';
import 'package:playstation_store/detail_screen/component/detail_web_page.dart';
import 'package:playstation_store/models/product.dart';

class DetailsScreen extends StatelessWidget {
  late final Product product;

  DetailsScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder:  (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 800) {
            return DetailWebPage(product: product);
          } else {
            return DetailMobilePage(product: product);
          }
       },
    );
  }
}