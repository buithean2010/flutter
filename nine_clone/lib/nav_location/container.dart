import 'package:flutter/material.dart';
import 'package:platform_app/nav_location/howling_list.dart';
import 'package:platform_app/nav_location/user_list.dart';

class NavLocationContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> _tabTitleList = [
      Tab(text: '近い人'),
      Tab(text: 'ハウンリング'),
      Tab(text: 'フィルター'),
      Tab(text: '位置'),
    ];

    List<Widget> _tabBodyList = [
      new UserList(),
      new HowlingList(),
      Icon(Icons.directions_bike),
      Icon(Icons.directions_bike),
    ];

    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: _tabTitleList,
            ),
            title: Text('ロケーション'),
          ),
          body: TabBarView(
            children: _tabBodyList,
          ),
        ),
      ),
    );
  }
}
