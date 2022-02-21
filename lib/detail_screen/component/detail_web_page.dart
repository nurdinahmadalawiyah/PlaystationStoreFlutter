import 'package:flutter/material.dart';
import 'package:playstation_store/constants.dart';
import 'package:playstation_store/detail_screen/component/favorite_button.dart';
import 'package:playstation_store/models/product.dart';

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
