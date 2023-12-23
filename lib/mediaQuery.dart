import 'dart:developer';

import 'package:flutter/material.dart';

class MediaQueryText extends StatelessWidget {
  const MediaQueryText({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    log(height.toString());
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.amberAccent,
              width: 200,
              height: height * .2,
            ),
            Container(
              color: Colors.black,
              width: 200,
              height: height * .2,
            ),
            Container(
              color: Colors.red,
              width: 200,
              height: height * .2,
            ),
          ],
        ),
      ),
    );
  }
}
