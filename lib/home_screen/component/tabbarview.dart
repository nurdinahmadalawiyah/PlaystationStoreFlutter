import 'package:flutter/material.dart';
import 'package:playstation_store/constants.dart';
import 'package:playstation_store/home_screen/component/controller_list.dart';
import 'package:playstation_store/home_screen/component/console_list.dart';
import 'package:playstation_store/home_screen/component/games_list.dart';
import 'package:playstation_store/home_screen/component/accessories_list.dart';

TabBarView buildTabBarView() {
  return TabBarView(
    children: [
      Padding(
        padding: const EdgeInsets.all(kDefaultPadding / 2),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 600) {
              return ControllerList(gridCount: 2);
            } else if (constraints.maxWidth <= 900) {
              return ControllerList(gridCount: 3);
            } else if (constraints.maxWidth <= 1200) {
              return ControllerList(gridCount: 4);
            } else {
              return ControllerList(gridCount: 6);
            }
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(kDefaultPadding / 2),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 600) {
              return ConsoleList(gridCount: 1, aspectRatio: 3.0,);
            } else if (constraints.maxWidth <= 900) {
              return ConsoleList(gridCount: 2, aspectRatio: 2.2,);
            } else if (constraints.maxWidth <= 1200) {
              return ConsoleList(gridCount: 3, aspectRatio: 2.2,);
            } else {
              return ConsoleList(gridCount: 4, aspectRatio: 2.2,);
            }
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(kDefaultPadding / 2),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 600) {
              return GamesList(gridCount: 2);
            } else if (constraints.maxWidth <= 900) {
              return GamesList(gridCount: 3);
            } else if (constraints.maxWidth <= 1200) {
              return GamesList(gridCount: 4);
            } else {
              return GamesList(gridCount: 6);
            }
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(kDefaultPadding / 2),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 600) {
              return AccessoriesList(gridCount: 1, aspectRatio: 3.0);
            } else if (constraints.maxWidth <= 900) {
              return AccessoriesList(gridCount: 2, aspectRatio: 2.2,);
            } else if (constraints.maxWidth <= 1200) {
              return AccessoriesList(gridCount: 3, aspectRatio: 2.2,);
            } else {
              return AccessoriesList(gridCount: 4, aspectRatio: 2.2,);
            }
          },
        ),
      ),
    ],
  );
}
