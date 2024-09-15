 import 'package:flutter/material.dart';
class BOTTOMCURVEPATHTWO extends CustomClipper <Path>{

  @override
  Path getClip(Size size){
    final Path path=Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height-20);
    path.quadraticBezierTo(
      size.width/5, size.height/3, size.width/3, size.height-40
      );
       path.quadraticBezierTo(
      size.width*3/5, size.height/2, size.width, size.height-40
      );
      path.lineTo(size.width, 0);
      path.close();
      return path;

  }



  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }}




  class BOTTOMCLIPERTWO extends CustomClipper <Path>{

  @override
  Path getClip(Size size){
    final Path path=Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height-20);
    path.quadraticBezierTo(
      size.width/5, size.height/3, size.width/3, size.height-40
      );
       path.quadraticBezierTo(
      size.width*3/5, size.height/2, size.width, size.height-40
      );
      path.lineTo(size.width, 0);
      path.close();
      return path;

  }



  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }}