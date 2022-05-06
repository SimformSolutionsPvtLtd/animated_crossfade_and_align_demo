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
        backgroundColor: Color(0xffef5366),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstChild: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset('assets/logo-full.png'),
              ),
              secondChild: Image.asset('assets/logo.png'),
              crossFadeState: animate
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              firstCurve: Curves.easeIn,
              duration: Duration(seconds: 1),
              alignment: Alignment.center,
              sizeCurve: Curves.easeOut,
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
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffef5366),
                ),
                child: Text('animate')),
          ],
        ),
      ),
    );
  }
}
