import 'package:flutter/material.dart';



class Form extends StatefulWidget {

  final arguments;
  Form({Key key,this.arguments='表单'}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(

      appBar: AppBar(

        title: Text(widget.arguments['id']),
        
      ),

      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('我是表单页面'),
          ),
          ListTile(
            title: Text('我是表单页面'),
          ),
          ListTile(
            title: Text('我是表单页面'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
    ));
  }
}
