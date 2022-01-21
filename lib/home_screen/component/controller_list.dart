import 'package:flutter/material.dart';
import 'package:playstation_store/constants.dart';
import 'package:playstation_store/models/product.dart';
import 'package:playstation_store/detail_screen/detail_screen.dart';

class ControllerList extends StatelessWidget {
  final int gridCount;

  ControllerList({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      child : GridView.builder(
        itemBuilder: (context, index) {
          final Product product = controllerlist[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailsScreen(product: product,);
              }));
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)
              ),
              elevation: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.asset(
                      product.image,
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      product.title,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text(
                        "Playstation Controller",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.monetization_on, color: Colors.orange,),
                        SizedBox(width: 8.0),
                        Text(
                          product.price,
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: controllerlist.length, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: gridCount,
        mainAxisSpacing: kDefaultPadding / 8,
        crossAxisSpacing: kDefaultPadding / 8,
        childAspectRatio: 0.75,
      ),
      ),
    );
  }
}
