import 'package:flutter/material.dart';


class MyBarrier extends StatelessWidget {

  final size;

  MyBarrier({this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        size: Size(size,size),
        painter: DrawTriangleShape()
      ),
    );
  }
}


class DrawTriangleShape extends CustomPainter {
 
  late final Paint painter;
 
  DrawTriangleShape() {
 
    painter = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

 
  }
  
  @override
  void paint(Canvas canvas, Size size) {
 
    var path = Path();
 
    path.moveTo(0, 0);
    path.lineTo(20, -size.height);
    path.lineTo(40, 0);
    path.close();
 
    canvas.drawPath(path, painter);
  }
 
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}


class MyBarrier2 extends StatelessWidget {

  final size;

  MyBarrier2({this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        size: Size(size,size),
        painter: DrawTriangleShape2()
      ),
    );
  }
}


class DrawTriangleShape2 extends CustomPainter {
 
  late final Paint painter;
 
  DrawTriangleShape2() {
 
    painter = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

 
  }
  
  @override
  void paint(Canvas canvas, Size size) {
 
    var path = Path();
 
    path.moveTo(0, 0);
    path.lineTo(20, size.height);
    path.lineTo(40, 0);
    path.close();
 
    canvas.drawPath(path, painter);
  }
 
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}