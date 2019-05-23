import 'package:flutter/material.dart';

import 'user_list_item.dart';

class UserList extends StatelessWidget {
  List<Widget> aaa = List.generate(100, (index) {
    return new UserListItem();
  });
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        children: List.generate(100, (index) {
          /*
          return Center(
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.headline,
            ),
          );
          */
          return new UserListItem();
        }));
  }
}
