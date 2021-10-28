import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new HalSatu(),
    title: "Navigasi",
    routes: <String, WidgetBuilder>{
      '/HalSatu' : (BuildContext context) => new HalSatu(),
      '/HalDua' : (BuildContext context) => new HalDua(),
      '/HalTiga' : (BuildContext context) => new HalTiga(),
    },
  ));
}

class HalSatu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("MUSIC"),),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.headphones,size: 50.0,), onPressed: (){
            Navigator.pushNamed(context, '/HalDua');
        },
        ),
      ),
    );
  }
}

class HalDua extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("SPEAKER"),),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.speaker,size: 50.0,color: Colors.black,), onPressed: (){
          Navigator.pushNamed(context, '/HalTiga');
        },
        ),
      ),
    );
  }
}

class HalTiga extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("MIC"),),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.mic,size: 50.0,color: Colors.blue,), onPressed: (){
          Navigator.pushNamed(context, '/HalSatu');
        },
        ),
      ),
    );
  }
}