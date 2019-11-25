import 'package:flutter/material.dart';


class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('注册-输入手机号 '),
         ),

         body: Center(
           child: Column(

             children: <Widget>[

               Text('这是一个注册的第一步，然后点击下一步'),

               RaisedButton(
                 child: Text('下一步'),
                 color: Theme.of(context).accentColor,
                 textTheme: ButtonTextTheme.primary,
                 onPressed: (){
                   Navigator.pushNamed(context, '/register1');
                  // 替换路由 
                  // Navigator.of(context).pushReplacementNamed('/register1');
                 },
               )

             ],

           ),
         ),
       ),
    );
  }
}