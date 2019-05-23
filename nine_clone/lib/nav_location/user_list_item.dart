import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class UserListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The background image
    var backgroundImage = new AssetImage('assets/images/icon4.png');

    // The online status Circle
    var onlineStatusCircle = new Positioned(
      left: 10,
      top: 10,
      width: 20,
      height: 20,
      child: new Container(
          decoration: new BoxDecoration(
              shape: BoxShape.circle, color: Colors.pink[300])),
    );

    // The distance label
    var distanceLabel = new Positioned(
      left: 10,
      bottom: 10,
      child: new Text("1.04 km",
          style: TextStyle(
              fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold)),
    );

    // The howling icon
    var howlingIcon = new Positioned(
      right: 5,
      bottom: 5,
      width: 40,
      height: 40,
      child: Image(
        image: AssetImage('assets/images/howling_icon.png'),
      ),
    );

    // the container for all
    var _children = <Widget>[onlineStatusCircle, distanceLabel, howlingIcon];
    var container = new Container(
      decoration: new BoxDecoration(
          border: new Border.all(color: Colors.black26, width: 0.5),
          image:
              new DecorationImage(image: backgroundImage, fit: BoxFit.cover)),
      child: new Stack(children: _children),
    );

    return container;
  }
}
