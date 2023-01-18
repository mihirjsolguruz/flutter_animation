import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  const AnimatedOpacityWidget({super.key});

  @override
  State<AnimatedOpacityWidget> createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedOpacityWidget> {
  bool _showBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ANiimated Opacity'),
      ),
      body: SafeArea(
        child: Center(
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 2000),
            opacity: _showBox ? 1.0 : 0.0,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 1000),
              width: _showBox ? 200 : 100,
              height: _showBox ? 200 : 100,
              color: _showBox ? Colors.orange : Colors.green,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _showBox = !_showBox;
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
