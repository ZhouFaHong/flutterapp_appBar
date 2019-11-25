import 'package:flutter/material.dart';
import 'package:flutterapp_03/pages/form.dart' as prefix0;
import 'package:flutterapp_03/pages/search.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
         child: Container(
           color: Colors.red,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,// 纵轴
             mainAxisAlignment: MainAxisAlignment.center, // 主轴
             children: <Widget>[
               RaisedButton(
                 child: Text('跳转到搜索页面'),
                 color: Theme.of(context).accentColor,
                 textTheme: ButtonTextTheme.primary,
                 onPressed: (){

                   // 路由跳转（页面跳转）
                    Navigator.pushNamed(context, '/search');// 命名路由
                 },
               ),
               SizedBox(height: 20,),
               RaisedButton(
                 child: Text('跳转到表单页面并传值'),
                 color: Theme.of(context).accentColor,
                 textTheme: ButtonTextTheme.primary,
                 onPressed: (){

                   // 简单路由
                  //  Navigator.of(context).push(
                  //    MaterialPageRoute(
                  //      builder: (context){
                  //        return prefix0.Form();
                  //      }
                  //    )
                  //  );
                   Navigator.pushNamed(context, '/form',arguments: {
                    'id':'表单传值页面'
                  });
                 },
               ),
               SizedBox(height: 20,),
               RaisedButton(
                 child: Text('跳转到商品页面'),
                 color: Theme.of(context).accentColor,
                 textTheme: ButtonTextTheme.primary,
                 onPressed: (){
                   Navigator.pushNamed(context, '/produce');
                 },
               )

             ],
           ),
         ),
    );
  }
}