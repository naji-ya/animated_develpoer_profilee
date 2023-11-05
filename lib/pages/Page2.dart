import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.pink[300],
      ),
      height: 100,
      width: 80,
      child: Lottie.network(
          "https://lottie.host/a27604bc-c0a8-4a50-bdff-e21e05118b3f/dIuU9hAznI.json"),
    );
  }
}
