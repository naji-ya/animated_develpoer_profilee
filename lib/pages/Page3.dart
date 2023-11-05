import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.purple[300],
      ),
      height: 100,
      width: 80,
      child: Lottie.network(
          "https://lottie.host/d8914798-2432-4e27-b071-26ba1f4a0ca4/9VbwpTLTDZ.json"),
    );
  }
}
