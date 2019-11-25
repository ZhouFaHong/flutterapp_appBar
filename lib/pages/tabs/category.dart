import 'package:flutter/material.dart';
// import 'package:flutterapp_03/pages/form.dart' as MyForm;

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           RaisedButton(
                 child: Text('跳转到表单页面并传值'),
                 color: Theme.of(context).accentColor,
                 textTheme: ButtonTextTheme.primary,
                 onPressed: (){

                  //  Navigator.of(context).push(
                  //    MaterialPageRoute(
                  //       builder: (context){
                  //         return MyForm.Form(title: '我是表单传值',);
                  //       }
                  //     )
                      
                  //  );
                  Navigator.pushNamed(context, '/form',arguments: {
                    'id':'123456'
                  });

                 },
           ),
         ],
       ),
    );
  }
}