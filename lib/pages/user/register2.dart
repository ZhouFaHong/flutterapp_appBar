import 'package:flutter/material.dart';
import '../tabs.dart';


class Register2 extends StatefulWidget {
  Register2({Key key}) : super(key: key);

  @override
  _Register2State createState() => _Register2State();
}

class _Register2State extends State<Register2> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('第3步-完成操作'),
         ),

         body: Center(
           child: Column(

             children: <Widget>[

               Text(' '),

               RaisedButton(
                 child: Text('完成'),
                 color: Theme.of(context).accentColor,
                 textTheme: ButtonTextTheme.primary,
                 onPressed: (){
                  //  Navigator.of(context).pop();// 使用替换路由的方式
                  // 返回根
                  Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (context)=> new Tabs(index:3)), (route)=>route==null);

                 },
               )

             ],

           ),
         ),
       ),
    );
  }
}