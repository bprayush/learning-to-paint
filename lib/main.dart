import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Learning Painters",
      home: LearningPainter(),
    );
  }
}

class LearningPainter extends StatefulWidget {
  _LearningPainterState createState() => _LearningPainterState();
}

class _LearningPainterState extends State<LearningPainter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learning to Paint"),
      ),
      body: CustomPaint(
        painter: MyPainter(),
        child: Center(
          child: Text("Well hello there! You found me!"),
        ),
      )
    );
  }
}

class MyPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();
    Path weirdPaths = Path();

    weirdPaths.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Colors.greenAccent;
    canvas.drawPath(weirdPaths, paint);

    Path squiglyPath = Path();
    squiglyPath.moveTo(0, height * 0.2);
    squiglyPath.quadraticBezierTo(40, 250, 80, height * 0.2);
    paint.style = PaintingStyle.stroke;
    squiglyPath.quadraticBezierTo(120, 100, 160, height * 0.2);
    paint.color = Colors.red;
    canvas.drawPath(squiglyPath, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return oldDelegate != this;
  }
  
}

