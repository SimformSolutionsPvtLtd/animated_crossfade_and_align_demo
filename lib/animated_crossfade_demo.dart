import 'package:flutter/material.dart';

class AnimatedCrossfadeDemo extends StatefulWidget {
  @override
  _AnimatedCrossfadeDemoState createState() => _AnimatedCrossfadeDemoState();
}

class _AnimatedCrossfadeDemoState extends State<AnimatedCrossfadeDemo> {
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
            AnimatedCrossFade(
              firstChild:
                  FlutterLogo(style: FlutterLogoStyle.stacked, size: 150.0),
              secondChild:
                  FlutterLogo(style: FlutterLogoStyle.horizontal, size: 250.0),
              crossFadeState:
                  animate ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              firstCurve: Curves.easeIn,
              duration: Duration(seconds: 1),
              sizeCurve: Curves.bounceOut,
            ),
            SizedBox(
              height: 20,
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
      ),
    );
  }
}
