import 'package:flutter/material.dart';
import 'tabs/category.dart';
import 'tabs/find.dart';
import 'tabs/home.dart';
import 'tabs/setting.dart';

// 自定义tabs组件
class Tabs extends StatefulWidget {

  final index;
  Tabs({Key key,this.index = 0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {

  List _listTitle = [
    '首页',
    '分类',
    '发现',
    '设置',
  ];
  _TabsState(index){
    this._currentIndex = index;
  }
  List _listPage = [
    HomePage(),
    CategoryPage(),
    FindPage(),
    SettingPage()
  ]; 
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              title: Text(_listTitle[_currentIndex]),
            ),

            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed, // 配置底部可以有多个按钮
              currentIndex: _currentIndex,// 选中
              iconSize: 40.0, // icon的大小
              fixedColor: Colors.red, // 选中的颜色
              onTap: (int index) {
                setState(() {
                  this._currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('首页'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.category),
                  title: Text('分类'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text('发现'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  title: Text('设置'),
                ),
              ],
            ),
            body: this._listPage[this._currentIndex]));
  }
}
