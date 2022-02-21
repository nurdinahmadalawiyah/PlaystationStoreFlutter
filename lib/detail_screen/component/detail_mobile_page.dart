import 'package:flutter/material.dart';
import 'package:playstation_store/constants.dart';
import 'package:playstation_store/detail_screen/component/favorite_button.dart';
import 'package:playstation_store/models/product.dart';

class DetailMobilePage extends StatelessWidget {
  final Product product;

  const DetailMobilePage({required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            FavoriteButton(),
            SizedBox(
              width: kDefaultPadding / 2,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24)),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          product.category,
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(product.title,
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: kDefaultPadding),
                          child: Center(
                            child: ClipRRect(
                              child: Image.asset(
                                product.image,
                                height: 250,
                              ),
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Center(
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(color: kTextColor),
                                    children: [
                                      TextSpan(text: "Price\n"),
                                      TextSpan(
                                        text: "\$" + product.price.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Center(
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(color: kTextColor),
                                    children: [
                                      TextSpan(text: product.moredetail + "\n"),
                                      TextSpan(
                                        text: product.storage,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: kDefaultPadding),
                          child: Text(
                            product.description,
                            style: TextStyle(
                              height: 1.5,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        Positioned(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: SizedBox(
                                height: 50,
                                // ignore: deprecated_member_use
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16)),
                                  color: Colors.blue,
                                  onPressed: () {},
                                  child: Text(
                                    "Buy Now",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )),
                              Container(
                                margin: EdgeInsets.only(left: kDefaultPadding),
                                height: 50,
                                width: 58,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Colors.blue)),
                                child: IconButton(
                                  icon: Icon(Icons.shopping_cart_outlined),
                                  color: Colors.blue,
                                  onPressed: () {},
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
