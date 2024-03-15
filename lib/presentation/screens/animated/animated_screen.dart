import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScreeen extends StatefulWidget {
  static const name = 'animated_screen';

  const AnimatedScreeen({super.key});

  @override
  State<AnimatedScreeen> createState() => _AnimatedScreeenState();
}

class _AnimatedScreeenState extends State<AnimatedScreeen> {
  double width = 100;
  double heigth = 50;
  Color color = Colors.red;
  double borderRadious = 10.0;

  void changeShape() {
    final random = Random();
    width = random.nextInt(300) + 120;
    heigth = random.nextInt(300) + 120;
    color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
       1);
    borderRadious = random.nextDouble() + 20;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("animated Container"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.fastOutSlowIn,
          width: width,
          height: heigth,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(borderRadious)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => changeShape(),
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
