import 'package:flutter/material.dart';
import './AboutPage.dart';
class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}


class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Home')),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Kamrul'),
              accountEmail: new Text('mdkamrul220@gmail.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('http://i.pravatar.cc/300'),
              ),
            ),
            
            new ListTile(
              title: new Text('Home'),
              onTap: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
            ),
            new ListTile(
              title: new Text('About'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new AboutPage()));
              },
            ),
            ExpansionTile(
              title: Text("Nested"),
              children: <Widget>[
                  Text("children 1"),
                  Text("children 2")
                ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }
}