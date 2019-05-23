import 'package:flutter/material.dart';

class HowlingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ListTile> _createChildren() {
      return new List<ListTile>.generate(100, (index) {
        return new ListTile(title: Text('Howling $index'));
      });
    }

    return ListView(children: _createChildren());
  }
}
