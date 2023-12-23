import 'package:flutter/material.dart';
import 'package:responsive/widgets/details_view.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return DetailsView(number: index + 1);
            }));
          },
          child: Container(
            color: Colors.green,
            margin: const EdgeInsets.only(
              bottom: 16,
              right: 16,
              left: 16,
            ),
            child: ListTile(
              title: Text('${index + 1}'),
            ),
          ),
        );
      },
    );
  }
}

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  number = index + 1;
                  setState(() {});
                },
                child: Container(
                  color: Colors.green,
                  margin: const EdgeInsets.only(
                    bottom: 16,
                    right: 16,
                    left: 16,
                  ),
                  child: ListTile(
                    title: Text('${index + 1}'),
                  ),
                ),
              );
            },
          ),
        ),
        Expanded(
            child: Container(
          child: Center(
            child: Text(number.toString()),
          ),
        ))
      ],
    );
  }
}
