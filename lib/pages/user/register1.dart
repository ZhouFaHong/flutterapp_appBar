import 'package:flutter/material.dart';


class Register1 extends StatefulWidget {
  Register1({Key key}) : super(key: key);

  @override
  _Register1State createState() => _Register1State();
}

class _Register1State extends State<Register1> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('第二步-完成注册'),
         ),

         body: Center(
           child: Column(

             children: <Widget>[

               Text('请输入验证码'),

               RaisedButton(
                 child: Text('下一步'),
                 color: Theme.of(context).accentColor,
                 textTheme: ButtonTextTheme.primary,
                 onPressed: (){
                   Navigator.pushNamed(context, '/register2');
                  // 替换理由
                  // Navigator.of(context).pushReplacementNamed('/register2');
                 },
               )

             ],

           ),
         ),
       ),
    );
  }
}