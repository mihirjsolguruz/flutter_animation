import 'package:flutter/material.dart';

class AnimatedPositionWidget extends StatefulWidget {
  const AnimatedPositionWidget({super.key});

  @override
  State<AnimatedPositionWidget> createState() => _AnimateButtonsState();
}

class _AnimateButtonsState extends State<AnimatedPositionWidget> {
  double _bottomOffset = 500;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ANiimated Postition'),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AnimatedPositioned(
            bottom: _bottomOffset,
            duration: Duration(milliseconds: 2000),
            // curve: Curves.bounceOut,
            // curve: Curves.easeIn,
            curve: Curves.bounceInOut,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _bottomOffset = 0;
          });
        },
        tooltip: 'Animate',
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
