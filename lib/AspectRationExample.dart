import 'package:flutter/material.dart';

class AspectRationExample extends StatelessWidget {
  const AspectRationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5 / 1,
      child: Container(
        color: Colors.red,
        width: MediaQuery.sizeOf(context).width,
      ),
    );
  }
}
