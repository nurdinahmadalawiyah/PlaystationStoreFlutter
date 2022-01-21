import 'package:flutter/material.dart';

TabBar buildTabBar() {
  return TabBar(
    isScrollable: true,
    indicatorSize: TabBarIndicatorSize.label,
    indicatorWeight: 3,
    tabs: [
      Tab(child: Text('Controller', style: TextStyle(color: Colors.black.withOpacity(0.6))),),
      Tab(child: Text('Console', style: TextStyle(color: Colors.black.withOpacity(0.6))),),
      Tab(child: Text('Games', style: TextStyle(color: Colors.black.withOpacity(0.6))),),
      Tab(child: Text('Accessories', style: TextStyle(color: Colors.black.withOpacity(0.6))),),
    ],
  );
}