import 'package:flutter/material.dart';

class FittedBox extends StatelessWidget {
  const FittedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            // ignore: prefer_const_constructors
            // Flexible(
            //   child: const FittedBox(
            //     child: Icon(
            //       Icons.ac_unit,
            //       size: 300,
            //     ),
            //   ),
            // ),
            // Container(
            //   color: Colors.black12,
            // ),
            // Expanded(
            //   child: Container(
            //     height: 150,
            //     color: Colors.green,
            //     child: const FittedBox(
            //         fit: BoxFit.scaleDown, child: Icon(Icons.abc)),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
