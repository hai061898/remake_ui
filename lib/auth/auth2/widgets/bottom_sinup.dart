import 'package:flutter/material.dart';

class BottomRegister extends StatelessWidget {
  const BottomRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: CustomPaint(
        painter: BottomRegisterPainter(),
      ),
    );
  }
}

class BottomRegisterPainter extends CustomPainter {
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
    path.lineTo(0, size.height * .85);
    path.quadraticBezierTo(size.width * .28, size.height * .98,
        size.width * .48, size.height * .85);
    path.quadraticBezierTo(
        size.width * .9, size.height * .5, size.width, size.height * .5);
    path.lineTo(size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
