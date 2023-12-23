import 'package:flutter/material.dart';

class flexibleExample extends StatelessWidget {
  const flexibleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Flexible(
              child: const Icon(
                Icons.ac_unit,
                size: 300,
              ),
            ),
            Container(
              color: Colors.black12,
            ),
            Container(
              height: 150,
              color: Colors.green,
            ),
            Container(
              height: 150,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
