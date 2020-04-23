import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Layout extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 200,
                maxWidth: 200
              ),
              child: Container(
                color: Color.fromRGBO(3, 54, 255, 1),
              ),
            )
          ],
        ),
      );
    }
}

class IconBadge extends StatelessWidget {

  final IconData icon;
  final double size;

  IconBadge({Key key, this.icon, this.size = 32.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: size, color: Colors.white,),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }

}