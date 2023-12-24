import 'package:flutter/material.dart';
import 'package:responsive/AspectRationExample.dart';
import 'package:responsive/Intrinsic_widgets.dart';

void main() {
  runApp(const Responsive());
}

class Responsive extends StatefulWidget {
  const Responsive({super.key});

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IntrinsicWidgets(),
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
