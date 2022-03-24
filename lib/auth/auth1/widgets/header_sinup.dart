import 'package:flutter/material.dart';

class HeaderSignUp extends StatelessWidget {
  const HeaderSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: const Color(0xff172437),
      child: CustomPaint(
        painter: _HeaderSignUp(),
      ),
    );
  }
}

class _HeaderSignUp extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect =
        Rect.fromCircle(center: const Offset(150.0, 50.0), radius: 180);

    const Gradient gradient = LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        colors: [
          Color(0xffff7463),
          Color(0xffff8465),
        ]);

    final paint = Paint()..shader = gradient.createShader(rect);

    paint.style = PaintingStyle.fill;

    final path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width * .6, size.height * .4, size.width, size.height * 0.65);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
