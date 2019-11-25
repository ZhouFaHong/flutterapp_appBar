import 'package:flutter/material.dart';


class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('AppBar'),
          leading:IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){
              print('menu');
            },
          ),
          actions: <Widget>[
            IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
              print('add');
            }),
            IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print('add');
            }),
            IconButton(
            icon: Icon(Icons.face),
            onPressed: (){
              print('add');
            }),
          ],
        ),
        body: Text('data'),
      ),
    );
  }
}