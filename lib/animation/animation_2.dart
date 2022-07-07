import 'dart:math' as math;

import 'package:flutter/material.dart';

class Animation02 extends StatefulWidget {
  const Animation02({Key? key}) : super(key: key);

  @override
  State<Animation02> createState() => _Animation02State();
}

class _Animation02State extends State<Animation02>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: AnimatedBuilder(
            animation: _controller,
            child: const FlutterLogo(size: 100.0),
            builder: (BuildContext context, Widget? child) {
              return Transform.rotate(
                angle: _controller.value * 2.0 * math.pi,
                child: child,
              );
            }),
      ),
    );
  }
}
