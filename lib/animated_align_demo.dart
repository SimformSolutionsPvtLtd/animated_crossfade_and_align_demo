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
        title: Text('Animated Align Demo'),
        backgroundColor: Color(0xffef5366),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedAlign(
              alignment: animate ? Alignment.centerRight : Alignment.centerLeft,
              duration: Duration(seconds: 1),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Image.asset(
                  'assets/logo.png',
                  scale: 0.6,
                ),
              ),
              curve: Curves.bounceOut,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  animate = !animate;
                });
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xffef5366),
              ),
              child: Text('animate')),
        ],
      ),
    );
  }
}
