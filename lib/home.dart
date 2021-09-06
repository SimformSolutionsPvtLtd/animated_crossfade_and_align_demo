import 'package:animated_crossfade_demo/animated_align_demo.dart';
import 'package:animated_crossfade_demo/animated_crossfade_demo.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool animate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Crossfade Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => AnimatedCrossfadeDemo()));
                },
                child: Text('AnimatedCrossfade Demo')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => AnimatedAlignDemo()));
                },
                child: Text('Animated Align Demo')),

          ],
        ),
      ),
    );
  }
}
