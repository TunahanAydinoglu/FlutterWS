import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.blue,
          isScrollable: true,
          labelStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          tabs: [
            Tab(
              child: Text("Amber"),
            ),
            Tab(
              child: Text("Blue"),
            ),
            Tab(
              child: Text("Red"),
            ),
            Tab(
              child: Text("Teal"),
            ),
          ],
        ),
        Container(
          height: 250,
          child: TabBarView(controller: _tabController, children: [
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.teal,
            ),
          ]),
        ),
      ],
    );
  }
}
