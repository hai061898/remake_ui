import 'package:flutter/material.dart';

class HeaderLogin extends StatelessWidget {
  const HeaderLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      width: double.infinity,
      // color: Colors.red,
      child: CustomPaint(
        painter: _HeaderLogin(),
      ),
    );
  }
}

class _HeaderLogin extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect =
        Rect.fromCircle(center: const Offset(150.0, 50.0), radius: 180);

    const Gradient gradient = LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        colors: [
          Color(0xffff8965),
          Color(0xffff9767),
        ]);

    final paint = Paint()..shader = gradient.createShader(rect);

    paint.style = PaintingStyle.fill;

    final path = Path();
    path.lineTo(0, size.height * 0.6);
    path.quadraticBezierTo(
        size.width * .45, size.height, size.width, size.height * 0.73);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
