import 'package:flutter/material.dart';

class BottomLogin extends StatelessWidget {
  const BottomLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      // color: Colors.red,
      child: CustomPaint(
        painter: BottomLoginPainter(),
      ),
    );
  }
}

class BottomLoginPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect =
        Rect.fromCircle(center: const Offset(150.0, 50.0), radius: 180);

    const Gradient gradient = LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Color(0xff149e8e), Color(0xff36ea7d)]);

    final paint = Paint()..shader = gradient.createShader(rect);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * .8);
    path.quadraticBezierTo(size.width * .15, size.height * .7, size.width * .45,
        size.height * .73);
    path.quadraticBezierTo(size.width * .6, size.height * .75, size.width * .65,
        size.height * .65);
    path.quadraticBezierTo(
        size.width * .68, size.height * .6, size.width * .85, size.height * .6);
    path.quadraticBezierTo(
        size.width * .98, size.height * .61, size.width, size.height * .57);
    path.lineTo(size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
