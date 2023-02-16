import 'package:flutter/material.dart';
import 'dart:math' as math;

class SecondScreen extends StatefulWidget {
  final String image;
  const SecondScreen({super.key, required this.image});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  double L = 100; // image side length
  double R = 24; // rounding radius
  double k = math.sqrt(2) - 24 / 100 * 2 * (math.sqrt(2) - 1); // a little bit of geometry
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.white)),
              child: Text('EN'),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.white)),
              child: Text('FAQ'),
            )
          ],
        ),
        backgroundColor: Color(0xFF171E45),
        elevation: 0,
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(widget.image)),
      //     Container(
      //   width: MediaQuery.of(context).size.width,
      //   height: MediaQuery.of(context).size.height,
      //   decoration: BoxDecoration(border: Border.all(width: 10, color: Colors.red)),
      //   child: Transform.rotate(
      //     angle: -math.pi / 360,
      //     child: Transform.scale(
      //       scale: 0.5,
      //       child: Transform.rotate(
      //         angle: -math.pi / 2,
      //         child: Transform.scale(
      //           scale: 0.9,
      //           child: Expanded(
      //             child: Image.asset(
      //               widget.image,
      //               width: 1000,
      //               height: 1000,
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
