import 'package:flutter/material.dart';
import 'package:playstation_store/home_screen/component/tabbar.dart';
import 'package:playstation_store/home_screen/component/tabbarview.dart';
import 'package:playstation_store/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: buildTabBar(),
          backgroundColor: Colors.white,
          title: new Text("Playstation Store", style: TextStyle(color: Colors.black),),
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(kDefaultPadding/4),
            child: Image.asset("assets/icons/playstation.png"),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), color: Colors.black, onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
            IconButton(icon: Icon(Icons.shopping_cart_outlined), color: Colors.black, onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => _buildPopupDialog(context),
              );
              },
            ),
            SizedBox(width: kDefaultPadding / 2,)
          ],
        ),
        body: buildTabBarView(),
      ),
    );
  }
}

Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Under maintenance'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Center(child: Text("Sorry this feature is currently under development, please wait for us to release this feature!")),
      ],
    ),
    actions: <Widget>[
      new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('Close'),
      ),
    ],
  );
}

