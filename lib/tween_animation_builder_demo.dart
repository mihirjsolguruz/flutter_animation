import 'package:flutter/material.dart';
import 'dart:math' as math;

class TweenAnimationBuilderDemo extends StatefulWidget {
  const TweenAnimationBuilderDemo({super.key});

  @override
  State<TweenAnimationBuilderDemo> createState() => _AnimationBuilderState();
}

class _AnimationBuilderState extends State<TweenAnimationBuilderDemo> {
  static final Tween _fabTween = Tween(begin: 0.0, end: 1.0);
  double _progress = 0.3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Builder'),
      ),
      body: Center(
        child: TweenAnimationBuilder(
          duration: Duration(milliseconds: 1000),
          tween: Tween<double>(begin: 0.0, end: _progress),
          builder: (_, double value, __) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  value: value,
                ),
                SizedBox(height: 16),
                Text("${(value * 100).round()}%"),
              ],
            );
          },
        ),
      ),
      floatingActionButton: TweenAnimationBuilder(
        duration: Duration(milliseconds: 1000),
        curve: Curves.bounceOut,
        tween: _fabTween,
        child: FloatingActionButton(
          onPressed: _progress > 0.9
              ? null
              : () {
                  setState(() {
                    _progress += 0.1;
                  });
                },
          tooltip: 'Animate',
          child: Icon(Icons.play_arrow),
        ),
        builder: (_, value, child) {
          return Transform.rotate(
            angle: (math.pi * 2) * (value as double),
            // return Transform.scale(
            //   scale: value as double,
            child: child,
          );
        },
      ),
    );
  }
}
