import 'package:flutter/material.dart';
import 'package:flutterapp_03/pages/form.dart' as myForm;
import 'package:flutterapp_03/pages/user/register2.dart';
import '../pages/search.dart';
import '../pages/tabs.dart';
import '../pages/produce.dart';
import '../pages/produceDetail.dart';
import '../pages/user/login.dart';
import '../pages/user/register.dart';
import '../pages/user/register1.dart'; 
import '../pages/appBarDemoPage.dart';

// 配置路由
final routes = 
{
  '/':(context,{arguments}) => Tabs(),
  '/search':(context,{arguments}) => Search(),
  '/form':(context,{arguments}) => myForm.Form(arguments:arguments),
  '/produce':(context,{arguments}) => Produce(),
  '/produceDetail':(context,{arguments}) => ProduceDetail(arguments:arguments),
  '/login':(context,{arguments}) => Login(),
  '/register':(context,{arguments}) => Register(),
  '/register1':(context,{arguments}) => Register1(),
  '/register2':(context,{arguments}) => Register2(),
  '/appBarDemoPage':(context,{arguments}) => AppBarDemoPage(),
};


// 固定写法 
var onGenerateRoute = (RouteSettings settiings){
        // 统一处理
        final String name = settiings.name;
        final Function pageContentBuilder = routes[name];
        if (pageContentBuilder != null) {
          if (settiings.arguments != null) {
            final Route route = MaterialPageRoute(
              builder: (context)=>pageContentBuilder(context,arguments:settiings.arguments));
            return route;
          }else{
            final Route route = MaterialPageRoute(
              builder: (context)=>pageContentBuilder(context));
              return route;
          }
          
        }
      };