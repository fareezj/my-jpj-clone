import 'package:flutter/material.dart';

class HomeOptionItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const HomeOptionItem({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115.0,
      padding: const EdgeInsets.all(15.0),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 6,
          offset: const Offset(0, 1), // changes position of shadow
        ),
      ]),
      child: Column(
        children: [
          Icon(icon),
          SizedBox(height: 8.0),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.blue[900], fontSize: 12.0),
          )
        ],
      ),
    );
  }
}
