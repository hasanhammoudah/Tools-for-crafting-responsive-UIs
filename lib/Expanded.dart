import 'package:flutter/material.dart';

class Expanded extends StatelessWidget {
  const Expanded({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            // Expanded(
            //   flex: 2,
            //   child: Container(
            //     color: Colors.black12,
            //   ),
            // ),
            // Expanded(
            //   flex: 1,
            //   child: Container(
            //     height: 150,
            //     color: Colors.green,
            //   ),
            // ),
            // Expanded(
            //   flex: 1,
            //   child: Container(
            //     height: 150,
            //     color: Colors.yellow,
            //   ),
            // ),
          ],
        ),
       
      ),
    );
  }
}
