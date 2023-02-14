import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:my_jpj_sample/router/route_generator.dart';

class LicenseViewItem extends StatelessWidget {
  final String image;
  const LicenseViewItem({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20.0),
          const Text(
            'Updated on 12-02-2023',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(image),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/second-screen',
                  arguments: SecondScreenArguments(image: image)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.view_in_ar_outlined), Text('View Fullscreen')],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: Text(
              'Please visit nearest JPJ counter to update picture (if necessary)',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[700]),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.greenAccent[400],
            ),
            child: Text('EFFECTIVE'),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            child: Image.asset(
              'assets/images/qr.png',
              width: 200.0,
            ),
          )
        ],
      ),
    );
  }
}
