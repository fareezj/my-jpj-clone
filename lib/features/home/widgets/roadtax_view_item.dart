import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:my_jpj_sample/router/route_generator.dart';

enum MotoType { vehicle, motorcycle }

class RoadtaxViewItem extends StatelessWidget {
  final VoidCallback onClick;
  final MotoType motoType;
  const RoadtaxViewItem({
    super.key,
    required this.onClick,
    required this.motoType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20.0),
        ElevatedButton.icon(
          onPressed: onClick,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red[200]),
          icon: const Icon(
            Icons.arrow_left,
            size: 30.0,
            color: Colors.black,
          ),
          label: Text(
            'Back',
            style: TextStyle(color: Colors.black),
          ), // <-- Text
        ),
        const SizedBox(height: 20.0),
        const Text(
          'Updated on 12-02-2023',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(motoType == MotoType.vehicle
              ? 'assets/images/roadtax-sample.png'
              : 'assets/images/roadtax-motor-sample.png'),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          child: GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              '/second-screen',
              arguments: SecondScreenArguments(
                image: motoType == MotoType.vehicle
                    ? 'assets/images/roadtax-sample.png'
                    : 'assets/images/roadtax-motor-sample.png',
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.view_in_ar_outlined), Text('View Fullscreen')],
            ),
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
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Text(
            'For JPJ enforcement only',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[700]),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.all(25.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 6,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ]),
          child: Column(
            children: [
              Text(
                'ETIQA',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue[900]),
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Start Date',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[700]),
                  ),
                  Text('07 SEP 2022'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Expiry Date',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[700]),
                  ),
                  Text('07 SEP 2022'),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
