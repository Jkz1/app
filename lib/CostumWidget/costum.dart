import 'dart:ui';

import 'package:flutter/material.dart';

class GlassMorphism extends StatelessWidget {
  final double blur;
  final double opacity;
  final double borderOpacity;
  final Widget child;
  final int duration;

  GlassMorphism({
    super.key,
    required this.blur,
    required this.opacity,
    this.borderOpacity = 0.5,
    this.duration = 500,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(opacity),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border:
                  Border.all(width: 1, color: Colors.white.withOpacity(borderOpacity))),
          child: child,
        ),
      ),
    );
  }
}


class RoundedContainer extends StatelessWidget {
  EdgeInsets? margin;
  EdgeInsets? padding;
  double radius;
  Color color;
  Widget child;
  RoundedContainer({
    super.key,
    required this.child,
    this.margin,
    this.padding,
    this.radius = 20,
    this.color = Colors.white,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(radius)
        ),
        color: color
      ),
      child: child,
    );
  }
}