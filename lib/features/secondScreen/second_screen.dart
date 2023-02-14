import 'package:flutter/material.dart';
import 'dart:math' as math;

class SecondScreen extends StatefulWidget {
  final String image;
  const SecondScreen({super.key, required this.image});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Transform.rotate(
          angle: 90 * math.pi / 180, // Rotate 45 degrees clockwise
          child: Image.asset(
            widget.image,
            fit: BoxFit.contain,
            scale: 2.0,
          ),
        ),
      ),
    );
  }
}
