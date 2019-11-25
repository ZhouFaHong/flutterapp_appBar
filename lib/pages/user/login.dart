import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('登录'),
         ),

         body: Center(
           child: Column(

             children: <Widget>[

               Text('这是一个登录页面，点击登录完成登录操作'),

               RaisedButton(
                 child: Text('登录'),
                 color: Theme.of(context).accentColor,
                 textTheme: ButtonTextTheme.primary,
                 onPressed: (){
                   Navigator.pop(context);
                 },
               )

             ],

           ),
         ),
       ),
    );
  }
}