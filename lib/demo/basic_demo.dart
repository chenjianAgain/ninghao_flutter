import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
//      color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://resources.ninghao.org/images/say-hello-to-barry.jpg',
          ),
          alignment: Alignment.topCenter,
          repeat: ImageRepeat.repeat,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.indigoAccent[400], BlendMode.hardLight)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 30, color: Colors.white,),
//            color: Color.fromRGBO(3, 54, 255, 1),
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(8),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(
                  color: Colors.indigoAccent,
                  width: 3,
                  style: BorderStyle.solid
              ),
//              borderRadius: BorderRadius.only(
//                topLeft: Radius.circular(46),
//                bottomLeft: Radius.circular(46),
//              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(6,7),
                  color: Color.fromRGBO(16, 20, 188, 1),
                  blurRadius: 10,
                  spreadRadius: -6
                )
              ],
              shape: BoxShape.circle,
//              gradient: RadialGradient(
//                colors: [
//                  Colors.indigoAccent,
//                  Colors.blue,
//                  Colors.red
//                ]
//              )
                gradient: LinearGradient(
                    colors: [
                      Colors.indigoAccent,
                      Colors.blue,
                      Colors.red
                    ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                )
            ),

          )
        ],
      ),
    );
  }

}


class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'ninghao',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: '.net',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _textStyle = TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    );

    final String _author = 'Libai';
    final String _title = 'JiangJinJiu';

    return Center(
      child: Text(
          ' 《$_title》----$_author。君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。',
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.right,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: _textStyle
      ),
    );
  }

}