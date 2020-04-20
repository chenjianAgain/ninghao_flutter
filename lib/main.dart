import 'package:flutter/material.dart';
import 'package:ninghao_flutter/demo/listview_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      )
    );
  }
}

class Home extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: "Navigation",
            onPressed: () => debugPrint("Navigation button is pressed!"),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: "Search1 ",
              onPressed: () => debugPrint("Search1 button is pressed!"),
            ),
            IconButton(
              icon: Icon(Icons.accessibility),
              tooltip: "Search2 ",
              onPressed: () => debugPrint("Search2 button is pressed!"),
            )
          ],
          title: Text('NINGHAO'),
          elevation: 0.0,
        ),
        body: ListViewDemo()
      );
    }
}


