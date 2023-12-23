import 'package:flutter/material.dart';

void main() {
  runApp(const Responsive());
}

class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            const Icon(
              Icons.ac_unit,
              size: 300,
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

        // This code for topic layoutBuilder
        // body: LayoutBuilder(builder: (context, constrains) {
        //   log(constrains.maxWidth.toString());
        //   if (constrains.maxWidth <= 500) {
        //     return const MobileLayout();
        //   } else {
        //     return const DesktopLayout();
        //   }
        // }),
      ),
    );
  }
}
