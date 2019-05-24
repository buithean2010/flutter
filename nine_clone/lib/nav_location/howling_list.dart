import 'package:flutter/material.dart';
import 'package:platform_app/nav_location/howling_list_item.dart';

class HowlingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*
    List<ListTile> _createChildren() {
      return new List<ListTile>.generate(100, (index) {
        return new ListTile(title: Text('Howling $index'));
      });
    }
*/
    var listItem = new List<HowlingListItem>.generate(100, (index) {
      return HowlingListItem();
    });

    return ListView.separated(
      itemCount: listItem.length,
      itemBuilder: (BuildContext context, int index) => listItem[index],
      separatorBuilder: (BuildContext context, int index) => const Divider(
            height: 3,
          ),
    );
  }
}
