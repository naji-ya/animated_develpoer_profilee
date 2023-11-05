import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 148, 163, 217),
      ),
      height: 100,
      width: 80,
      child: Lottie.network(
          "https://lottie.host/78551b1d-44a9-4a1b-846a-b30a00a2c3ac/1XKPckLstW.json",
          frameRate: FrameRate.max),
    );
  }
}
