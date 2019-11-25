import 'package:flutter/material.dart';

class FindPage extends StatefulWidget {
  FindPage({Key key}) : super(key: key);

  @override
  _FindPageState createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
         child: Container(
           height: 100,
           color: Colors.yellow,
           child: Text('我是发现页面'),
         ),
       ),
    );
  }
}