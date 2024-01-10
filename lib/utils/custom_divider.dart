import 'package:flutter/material.dart';

enum DividerType {
  horizontal,
  vertical,
}

class CustomDivider extends StatelessWidget {
  final double thickness;
  final double length;
  final Color color;
  final DividerType type;

  CustomDivider({
    required this.type,
    this.thickness = 1.0,
    this.length = 50.0,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DividerPainter(
        type: type,
        thickness: thickness,
        length: length,
        color: color,
      ),
    );
  }
}

class DividerPainter extends CustomPainter {
  final double thickness;
  final double length;
  final Color color;
  final DividerType type;

  DividerPainter({
    required this.type,
    required this.thickness,
    required this.length,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = color;
    if (type == DividerType.horizontal) {
      canvas.drawLine(
        Offset(0, size.height / 2),
        Offset(length, size.height / 2),
        paint,
      );
    } else {
      canvas.drawLine(
        Offset(size.width / 2, 0),
        Offset(size.width / 2, length),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Custom Divider')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Above Divider'),
              CustomDivider(
                type: DividerType.horizontal,
                thickness: 2,
                length: 100,
                color: Colors.blue,
              ),
              Text('Below Divider'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Left of Divider'),
                  CustomDivider(
                    type: DividerType.vertical,
                    thickness: 2,
                    length: 100,
                    color: Colors.red,
                  ),
                  Text('Right of Divider'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
