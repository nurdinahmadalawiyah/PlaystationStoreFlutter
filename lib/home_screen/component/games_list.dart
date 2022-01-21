import 'package:flutter/material.dart';
import 'package:playstation_store/constants.dart';
import 'package:playstation_store/models/product.dart';
import 'package:playstation_store/detail_screen/detail_screen.dart';

class GamesList extends StatelessWidget {
  final int gridCount;

  GamesList({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      child : GridView.builder(
        itemBuilder: (context, index) {
          final Product product = gameslist[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailsScreen(product: product,);
              }));
            },
            child: Card(
              shape: RoundedRectangleBorder(),
              elevation: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.asset(
                      product.image,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: gameslist.length, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: gridCount,
        mainAxisSpacing: kDefaultPadding / 8,
        crossAxisSpacing: kDefaultPadding / 8,
        childAspectRatio: 0.75,
      ),
      ),
    );
  }
}
