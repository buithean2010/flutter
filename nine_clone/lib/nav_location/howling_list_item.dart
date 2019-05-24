import 'package:flutter/material.dart';

class HowlingListItem extends StatelessWidget {
  Widget build(BuildContext context) {
    // The user image
    var userImage = new AssetImage('assets/images/icon4.png');

    // The online status Circle
    var onlineStatusCircle = new Positioned(
      left: 5,
      top: 5,
      width: 20,
      height: 20,
      child: new Container(
          decoration: new BoxDecoration(
              shape: BoxShape.circle, color: Colors.pink[300])),
    );

    // The howling icon
    var howlingIcon = new Positioned(
      right: 0,
      bottom: 0,
      width: 40,
      height: 40,
      child: Image(
        image: AssetImage('assets/images/howling_icon.png'),
      ),
    );

    // the image container
    var _children = <Widget>[onlineStatusCircle, howlingIcon];
    var imageContainer = new Container(
      width: 100,
      height: 100,
      decoration: new BoxDecoration(
          border: new Border.all(color: Colors.black26, width: 0.5),
          image: new DecorationImage(image: userImage, fit: BoxFit.cover)),
      child: new Stack(children: _children),
    );

    // The howling text
    var howlingText = Container(
        padding: EdgeInsets.only(left: 10, top: 10),
        height: 60,
        child: Text("今すぐ会いたい", style: TextStyle(fontSize: 16)));

    // The Bio Info
    var bioText = Container(
        padding: EdgeInsets.only(left: 10),
        height: 20,
        child: Text("170 cm/ 60kg/ 43際",
            style: TextStyle(fontSize: 12, color: Colors.grey[600])));
    var otherText = Container(
        padding: EdgeInsets.only(left: 10),
        height: 20,
        child: Text("5.49 km  1時間前",
            style: TextStyle(fontSize: 12, color: Colors.grey[600])));

    // The Texts Container
    var textContainter = Expanded(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[howlingText, bioText, otherText]));

    // Put them all together
    var container = Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: <Widget>[imageContainer, textContainter],
      ),
    );

    return container;
  }
}
