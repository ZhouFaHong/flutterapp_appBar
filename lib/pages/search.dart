import 'package:flutter/material.dart';
class Search extends StatelessWidget {
  const Search({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索页面'),
      ),
      body: Center(
        child: Text('我是搜索页面'),
      ),
    );
  }
}