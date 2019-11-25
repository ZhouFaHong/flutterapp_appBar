import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          color: Colors.green,
          child: ListView(
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
              RaisedButton(
                child: Text('跳转到登录页面'),
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary,
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
              RaisedButton(
                child: Text('跳转到注册页面'),
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary,
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
