import 'package:flutter/material.dart';

class AnimatedAlignDemo extends StatefulWidget {
  @override
  _AnimatedAlignDemoState createState() => _AnimatedAlignDemoState();
}

class _AnimatedAlignDemoState extends State<AnimatedAlignDemo> {
  bool animate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Crossfade Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedAlign(
              alignment: animate ? Alignment.centerRight : Alignment.centerLeft,
              duration: Duration(seconds: 1),
              child: FlutterLogo(style: FlutterLogoStyle.stacked, size: 150.0),
              curve: Curves.bounceOut,

            ),
          ),

          ElevatedButton(
              onPressed: () {
                setState(() {
                  animate = !animate;
                });
              },
              child: Text('animate')),
        ],
      ),
    );
  }
}
