import 'package:flutter/cupertino.dart';

class Appbarcustom_adapter extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double height=size.height;
    double width=size.width;
    var path=Path();
    path.lineTo(0, height - 45);
    path.quadraticBezierTo(width/2, height, width, height - 45);
    path.lineTo(width, 0);
    path.close();
    return path;
    // TODO: implement getClip
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
    throw UnimplementedError();
  }

}