import 'package:flutter/material.dart';
import 'package:flutterapp_03/pages/tabs.dart';
import 'package:flutterapp_03/routes/routes.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // 去除右上角Debug标签
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // home: Tabs(),
      initialRoute: '/appBarDemoPage',  // 初始化的时候加载的路由 

      // 通过配置文件进行路由
      onGenerateRoute: onGenerateRoute,
      
    );
  }
}

