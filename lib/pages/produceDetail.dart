import 'package:flutter/material.dart';

class ProduceDetail extends StatefulWidget {

  Map arguments;
  
  ProduceDetail({Key key,this.arguments}) : super(key: key);

  @override
  _ProduceDetailState createState() => _ProduceDetailState(arguments:this.arguments);
}

class _ProduceDetailState extends State<ProduceDetail> {

  Map arguments;
  _ProduceDetailState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('商品详情'),
         ),

         body: Column(
             crossAxisAlignment: CrossAxisAlignment.start,// 纵轴
             mainAxisAlignment: MainAxisAlignment.center, // 主轴
             children: <Widget>[
              //  Text('商品详情页面 pid= ${widget.arguments["pid"]}')
               Text('商品详情页面 pid= ${arguments["pid"]}')
             ],
           ),
       ),
    );
  }
}