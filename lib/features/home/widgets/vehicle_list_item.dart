import 'package:flutter/material.dart';

class VehicleListItem extends StatelessWidget {
  final String regNo;
  final VoidCallback onClick;
  const VehicleListItem({
    super.key,
    required this.regNo,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 6,
                offset: const Offset(0, 1), // changes position of shadow
              ),
            ]),
        child: Text(
          regNo,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
