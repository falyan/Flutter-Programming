import 'package:flutter/material.dart';
import 'package:tab_bar/hal_headset.dart' as headset;
import 'package:tab_bar/hal_komputer.dart' as komputer;
import 'package:tab_bar/hal_radio.dart' as radio;
import 'package:tab_bar/hal_smartphone.dart' as hp;

void main() {
  runApp(MaterialApp(
    title: "Tab Bar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    controller = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: new Text("Daftar Elektronik"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.computer,), text: "Komputer",
            ),
            new Tab(
              icon: new Icon(Icons.headphones), text: "Headset",
            ),
            new Tab(
              icon: new Icon(Icons.radio), text: "Radio",
            ),
            new Tab(
              icon: new Icon(Icons.smartphone), text: "Smartphone",
            ),
          ],
        ),
      ),
      body: new TabBarView(controller: controller, children: <Widget>[
        new komputer.Komputer(),
        new headset.Headset(),
        new radio.Radio(),
        new hp.Smartphone(),
      ]),

      bottomNavigationBar: new Material(
        color: Colors.red,
        child: new TabBar(
           controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.computer,),
            ),
            new Tab(
              icon: new Icon(Icons.headphones),
            ),
            new Tab(
              icon: new Icon(Icons.radio),
            ),
            new Tab(
              icon: new Icon(Icons.smartphone),
            ),
          ],
        ),
      ),
    );
  }
}
