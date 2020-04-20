import 'package:flutter/material.dart';
import 'package:ninghao_flutter/demo/listview_demo.dart';
import 'package:ninghao_flutter/demo/hello_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70
      )
    );
  }
}

class Home extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Colors.grey[100],
            appBar: AppBar(

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
              bottom: TabBar(
                unselectedLabelColor: Colors.black38,
                indicatorColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.local_florist)),
                  Tab(icon: Icon(Icons.change_history)),
                  Tab(icon: Icon(Icons.directions_bike))
                ],
              ),
              elevation: 0.0,
            ),
            body: TabBarView(
              children: <Widget>[
                Hello(),
                ListViewDemo(),
                Hello()
              ],
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                 UserAccountsDrawerHeader(
                   accountName: Text(
                     'Chenjian'.toUpperCase(),
                     style: TextStyle(fontWeight: FontWeight.bold)
                   ),
                   accountEmail: Text('Joseph.siyi@gmail.com'),
                   currentAccountPicture: CircleAvatar(
                     backgroundImage: NetworkImage('https://resources.ninghao.org/images/wanghao.jpg'),
                   ),
                 ),
                  ListTile(
                    title: Text('Message', textAlign: TextAlign.right,),
                    trailing: Icon(Icons.message, color: Colors.black12, size: 22),
                    onTap: () => Navigator.pop(context),
                  ),
                  ListTile(
                    title: Text('Favorite', textAlign: TextAlign.right,),
                    trailing: Icon(Icons.favorite, color: Colors.black12, size: 22),
                    onTap: () => Navigator.pop(context),
                  ),
                  ListTile(
                    title: Text('Settings', textAlign: TextAlign.right,),
                    trailing: Icon(Icons.settings, color: Colors.black12, size: 22),
                    onTap: () => Navigator.pop(context),
                  ),
                ],

              ),
            )
        ),
      );
    }
}


