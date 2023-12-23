import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.number});

  final int number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          number.toString(),
          style: const TextStyle(
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}
