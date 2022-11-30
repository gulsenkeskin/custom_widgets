import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class LiquidTextView extends StatelessWidget {
  const LiquidTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String text = "Code";
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextLiquidFill(
            text: text,
            waveColor: Colors.blueAccent,
            boxBackgroundColor: Colors.yellow,
            waveDuration: const Duration(seconds: 4),
          ),
          TextLiquidFill(
            text: text,
            waveColor: Colors.pinkAccent,
            boxBackgroundColor: Colors.purpleAccent,
            waveDuration: const Duration(seconds: 2),
          ),
        ],
      ),
    );
  }
}
