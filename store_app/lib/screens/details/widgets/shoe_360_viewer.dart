import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/utils/responsive.dart';

class Shoe360Viewer extends StatefulWidget {
  final String image;
  const Shoe360Viewer({super.key, required this.image});

  @override
  State<Shoe360Viewer> createState() => _Shoe360ViewerState();
}

class _Shoe360ViewerState extends State<Shoe360Viewer> {
  // pi/2 = الزرار في النص تحت الدايرة
  double _angle = math.pi / 2;

  @override
  Widget build(BuildContext context) {
    final w = 260.s;
    final h = 60.s;
    final cx = w / 2;
    final cy = h / 2;
    final knobX = cx + (w / 2) * math.cos(_angle);
    final knobY = cy + (h / 2) * math.sin(_angle);

    return SizedBox(
      height: 290.s,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 10.s,
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY((_angle - math.pi / 2) * 0.6),
              child: Image.asset(widget.image, width: 250.s),
            ),
          ),
          Positioned(
            bottom: 30.s,
            child: GestureDetector(
              onHorizontalDragUpdate: (d) => setState(() {
                _angle += d.delta.dx / (w / 2);
              }),
              child: SizedBox(
                width: w,
                height: h,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CustomPaint(size: Size(w, h), painter: _EllipsePainter()),
                    Positioned(
                      left: knobX - 14.s,
                      top: knobY - 14.s,
                      child: Container(
                        width: 28.s,
                        height: 28.s,
                        decoration: const BoxDecoration(
                          color: AppColors.primary,
                          shape: BoxShape.circle,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_left,
                                size: 12.s, color: Colors.white),
                            Icon(Icons.arrow_right,
                                size: 12.s, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _EllipsePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.primary.withOpacity(0.7)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    canvas.drawOval(Offset.zero & size, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}