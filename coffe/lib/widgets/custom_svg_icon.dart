
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CustomSvgIcon extends StatelessWidget {
  final String asset;
  final double size;
  final Color? color;

  const CustomSvgIcon({
    super.key,
    required this.asset,
    this.size = 22,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      asset,
      width: size,
      height: size,
      fit: BoxFit.contain,

      // لو اللون null، يحتفظ بلون SVG الأصلي
      colorFilter: color == null
          ? null
          : ColorFilter.mode(
              color!,
              BlendMode.srcIn,
            ),

      placeholderBuilder: (_) {
        return SizedBox(
          width: size,
          height: size,
          child: const CircularProgressIndicator(
            strokeWidth: 1.5,
          ),
        );
      },
    );
  }
}
