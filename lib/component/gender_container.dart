import 'package:flutter/material.dart';

import '../constant.dart';

class GenderContainer extends StatelessWidget {
  const GenderContainer(
      {required this.icon,
      required this.genderLabel,
      required this.onTap,
      required this.color});
  final IconData icon;
  final String genderLabel;
  final VoidCallback onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(containerBorderRadius),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 80,
              color: Colors.white,
            ),
            SizedBox(
              height: 15,
            ),
            Text(genderLabel, style: containerLabelStyle)
          ],
        ),
      ),
    ));
  }
}
