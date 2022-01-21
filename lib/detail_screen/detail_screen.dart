import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:playstation_store/constants.dart';
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
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {Navigator.pop(context);},),
          actions: <Widget>[
            FavoriteButton(),
            SizedBox(width: kDefaultPadding / 2,)
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
                          topRight: Radius.circular(24)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          product.category,
                          style: TextStyle(color: Colors.white),),
                        Text(
                            product.title,
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: Colors.white, fontWeight: FontWeight.bold)
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
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
                                            .copyWith(fontWeight: FontWeight.bold),
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
                                            .copyWith(fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                          child: Text(
                            product.description,
                            style: TextStyle(height: 1.5, fontSize: 16.0,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: SizedBox(
                                    height: 50,
                                    // ignore: deprecated_member_use
                                    child: FlatButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(16)
                                      ),
                                      color: Colors.blue,
                                      onPressed:() {},
                                      child: Text(
                                        "Buy Now",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  )
                              ),
                              Container(
                                margin: EdgeInsets.only(left: kDefaultPadding),
                                height: 50,
                                width: 58,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Colors.blue)
                                ),
                                child: IconButton(icon: Icon(Icons.shopping_cart_outlined), color: Colors.blue, onPressed: () {  },),
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
        )
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final Product product;

  DetailWebPage({required this.product});

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:Text(
            widget.product.category,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold)
        ),
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {Navigator.pop(context);},),
        actions: <Widget>[
          SizedBox(width: kDefaultPadding / 2,)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 64,
          ),
          child: Center(
            child: Container(
              width: screenWidth <= 1200 ? 800 : 1200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 32),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            ClipRRect(
                              child: Image.asset(widget.product.image, height: 450,),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                      ),
                      SizedBox(width: 32),
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(bottom: kDefaultPadding),
                                  child: Text(
                                    widget.product.title,
                                    style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Staatliches'
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
                                  child: Row(
                                    children: [
                                      Row(
                                        children: <Widget>[
                                          RichText(
                                            text: TextSpan(
                                              style: TextStyle(color: kTextColor),
                                              children: [
                                                TextSpan(
                                                  text: "Price\n",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline6!
                                                      .copyWith(fontFamily: 'Oxygen'),
                                                ),
                                                TextSpan(
                                                  text: "\$" + widget.product.price.toString(),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline5!
                                                      .copyWith(fontWeight: FontWeight.bold, fontFamily: 'Staatliches'),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
                                  child: Row(
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          style: TextStyle(color: kTextColor),
                                          children: [
                                            TextSpan(
                                              text: widget.product.moredetail + "\n",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline6!
                                                  .copyWith(fontFamily: 'Oxygen'),
                                            ),
                                            TextSpan(
                                              text: widget.product.storage,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(fontWeight: FontWeight.bold, fontFamily: 'Staatliches'),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 16.0),
                                  child: Text(
                                    widget.product.description,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                        fontFamily: 'Oxygen'
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: SizedBox(
                                            height: 50,
                                            // ignore: deprecated_member_use
                                            child: FlatButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(16)
                                              ),
                                              color: Colors.blue,
                                              onPressed:() {},
                                              child: Text(
                                                "Buy Now",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ),
                                          )
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: kDefaultPadding),
                                        height: 50,
                                        width: 58,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            border: Border.all(color: Colors.blue)
                                        ),
                                        child: IconButton(icon: Icon(Icons.shopping_cart_outlined), color: Colors.blue, onPressed: () {  },),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: kDefaultPadding),
                                        height: 50,
                                        width: 58,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            border: Border.all(color: Colors.red)
                                        ),
                                        child: FavoriteButton(),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}