import 'package:flutter/material.dart';

class Produce extends StatefulWidget {
  Produce({Key key}) : super(key: key);

  @override
  _ProduceState createState() => _ProduceState();
}

class _ProduceState extends State<Produce> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('商品'),
         ),

         body: Column(
             crossAxisAlignment: CrossAxisAlignment.start,// 纵轴
             mainAxisAlignment: MainAxisAlignment.center, // 主轴
             children: <Widget>[
               RaisedButton(
                 child: Text('跳转到商品详情页面'),
                 color: Theme.of(context).accentColor,
                 textTheme: ButtonTextTheme.primary,
                 onPressed: (){
                   Navigator.pushNamed(context, '/produceDetail',arguments: {
                     'pid':8888888
                   });
                 },
               )

             ],
           ),
       ),
    );
  }
}