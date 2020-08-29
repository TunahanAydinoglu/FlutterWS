import 'package:flutter/material.dart';

class HealtyFoodView extends StatefulWidget {
  @override
  _HealtyFoodViewState createState() => _HealtyFoodViewState();
}

class _HealtyFoodViewState extends State<HealtyFoodView> {
  List<String> categories = [
    "Breakfast",
    "Launch",
    "Launch",
    "Launch",
    "Launch"
  ];
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: a1(),
      body: b2(),
      bottomNavigationBar: bars(),
    );
  }

  AppBar a1() => AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: text(),
        centerTitle: false,
        actions: [iconButton()],
      );

  IconButton iconButton() {
    return IconButton(
        icon: Icon(
          Icons.search,
          color: Colors.black,
        ),
        onPressed: () {});
  }

  Text text() {
    return Text(
      "Hello",
      style: Theme.of(context).textTheme.headline6,
    );
  }

  Column b2() {
    return Column(
      children: [
        b1(),
        cards,
        categoryTitle(),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => SizedBox(
              width: 100,
              child: Column(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.accessible_forward),
                  ),
                  Text(categories[index]),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Text categoryTitle() {
    return Text(
      "Categories",
      style: Theme.of(context).textTheme.headline6,
    );
  }

  SizedBox get cards {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: cardListView(),
    );
  }

  ListView cardListView() {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Card(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: cardContainer(context),
      ),
    );
  }

  Container cardContainer(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width * 0.6,
        child: Column(
          children: [
            Expanded(flex: 6, child: Placeholder()),
            Expanded(
                flex: 2,
                child: ListTile(
                  title: Text("deneme"),
                  trailing: CircleAvatar(
                    child: Text("\$25"),
                  ),
                  subtitle: Text("data"),
                )),
            Row(
              children: [
                Text("data"),
                Icon(Icons.star),
                Spacer(),
                Text("data"),
                Icon(Icons.star),
              ],
            ),
          ],
        ));
  }

  Row b1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RaisedButton(
          shape: StadiumBorder(),
          color: buildCategoryButtonColor(0),
          onPressed: () => setColorIndex(0),
          child: Text("hello"),
        ),
        RaisedButton(
          shape: StadiumBorder(),
          color: buildCategoryButtonColor(1),
          onPressed: () => setColorIndex(1),
          child: Text("hello"),
        ),
        RaisedButton(
          shape: StadiumBorder(),
          color: buildCategoryButtonColor(2),
          onPressed: () => setColorIndex(2),
          child: Text("hello"),
        ),
      ],
    );
  }

  void setColorIndex(int index) {
    setState(() {
      count = index;
    });
  }

  Color buildCategoryButtonColor(int index) => count == index
      ? Theme.of(context).colorScheme.onError
      : Theme.of(context).colorScheme.primary;

  BottomNavigationBar bars() {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
          icon: Icon(Icons.access_alarms), title: Text("data")),
      BottomNavigationBarItem(
          icon: Icon(Icons.accessibility_new), title: Text("data"))
    ]);
  }
}
