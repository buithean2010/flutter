import 'package:flutter/material.dart';
import 'package:platform_app/nav_function/container.dart';
import 'package:platform_app/nav_location/container.dart';
import 'package:platform_app/nav_match/container.dart';
import 'package:platform_app/nav_media/container.dart';
import 'package:platform_app/nav_notice/container.dart';

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    new NavFunctionContainer(),
    new NavNoticeContainer(),
    new NavLocationContainer(),
    new NavMatchContainer(),
    new NavMediaContainer(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outline),
          title: Text('機能追加'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notification_important),
          title: Text('通知'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.language),
          title: Text('ロケーション'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.offline_bolt),
          title: Text('マッチ'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chrome_reader_mode),
          title: Text('メヂア'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }
}
