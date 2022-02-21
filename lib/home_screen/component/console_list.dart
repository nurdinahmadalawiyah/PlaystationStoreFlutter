import 'package:flutter/material.dart';
import 'package:playstation_store/constants.dart';
import 'package:playstation_store/models/product.dart';
import 'package:playstation_store/detail_screen/detail_screen.dart';

class ConsoleList extends StatelessWidget {
  final int gridCount;
  final double aspectRatio;

  ConsoleList({required this.gridCount,required this.aspectRatio});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth <= 1200 ? 800 : 1200,
      child : GridView.builder(
        itemBuilder: (context, index) {
          final Product product = consolelist[index];
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(kDefaultPadding / 2),
                        child: Image.asset(product.image),
                      )
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text(
                              product.title,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blueAccent),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Text(
                                    "Game Console",
                                    style: TextStyle(color: Colors.blue, fontSize: 10.0, fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            flex: 1,
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
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: consolelist.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: gridCount,
            childAspectRatio: aspectRatio,
          )
        ),
    );
  }
}
