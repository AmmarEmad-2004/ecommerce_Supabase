import 'package:flutter/material.dart';

class CustomUserComment extends StatelessWidget {
  const CustomUserComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('User Name', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('oh it is very nice product'),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('User Name', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Reply...'),
          ],
        ),
      ],
    );
  }
}
