import 'package:flutter/material.dart';

class IntrinsicWidgets extends StatelessWidget {
  const IntrinsicWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 250,
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: const Column(
                      children: [Text('hello')],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 100,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


