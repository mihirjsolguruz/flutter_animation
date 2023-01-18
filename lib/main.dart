import 'package:flutter/material.dart';
import 'package:flutter_animation/animate_buttons.dart';
import 'package:flutter_animation/animated_container_widget.dart';
import 'package:flutter_animation/animated_opacity_widget.dart';
import 'package:flutter_animation/tween_animation_builder_demo.dart';

import 'animated_postion_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> screens = [
    'AnimatedContainer',
    'AnimatedOpacity',
    'Animated Position',
    'Tween Animation',
    'Animate Buttons',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: ListView.builder(
            itemCount: screens.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () => switchToScreen(index),
                  child: Text(
                    screens[index],
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              );
            },
          )),
        ),
      ),
    );
  }

  void switchToScreen(int index) {
    dynamic widgetTONavigate;
    switch (index) {
      case 0:
        widgetTONavigate = const AnimatedContainerWidget();
        break;
      case 1:
        widgetTONavigate = const AnimatedOpacityWidget();
        break;
      case 2:
        widgetTONavigate = const AnimatedPositionWidget();
        break;
      case 3:
        widgetTONavigate = const TweenAnimationBuilderDemo();
        break;
      case 4:
        widgetTONavigate = const AnimateButtons();
        break;
    }
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return widgetTONavigate;
      },
    ));
  }
}
