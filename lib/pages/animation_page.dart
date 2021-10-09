import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:xwallet/theme.dart';

class AnimationPage extends StatefulWidget {
  // const AnimationPage({ Key? key }) : super(key: key);

  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  late RiveAnimationController _animationController;

  void togglePlay() => setState(
      () => _animationController.isActive = !_animationController.isActive);

  bool get isPlaying => _animationController.isActive;

  @override
  void initState() {
    super.initState();
    _animationController = SimpleAnimation('idle');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: RiveAnimation.asset(
          'assets/zombie_character.riv',
          alignment: Alignment.center,
          fit: BoxFit.contain,
          // animations: ['idle', 'curves'],
          controllers: [_animationController],
          onInit: (_) => setState(() {}),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: togglePlay,
        tooltip: isPlaying ? 'Pause' : 'Play',
        child: Icon(
          isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
