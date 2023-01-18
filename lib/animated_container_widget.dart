import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  double _size = 100;
  Color _color = Colors.orange;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ANiimated Container'),
      ),
      // body: SafeArea(
      //   child: Center(
      //     child: Container(
      //       // duration: const Duration(milliseconds: 1000),
      //       // curve: Curves.bounceOut,
      //       width: _size,
      //       height: _size,
      //       color: _color,
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeIn,
            width: _size,
            height: _size,
            color: _color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _size = _size == 100 ? 200 : 100;
            _color = _color == Colors.orange ? Colors.purple : Colors.orange;
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
