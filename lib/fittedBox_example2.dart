import 'package:flutter/material.dart';

class FittedBoxExample2 extends StatefulWidget {
  const FittedBoxExample2({super.key});

  @override
  State<FittedBoxExample2> createState() => _FittedBoxExample2State();
}

class _FittedBoxExample2State extends State<FittedBoxExample2> {
  var imageUrls = [
    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8fDA%3D',
    'https://e1.pxfuel.com/desktop-wallpaper/410/649/desktop-wallpaper-deep-reflection-phone-lockscreen-android-ios-reflections.jpg',
    'https://e1.pxfuel.com/desktop-wallpaper/340/689/desktop-wallpaper-sunset-lake-phone-1123-sunset-lake-thumbnail.jpg',
    'https://img.freepik.com/premium-photo/colorful-nature-hd-8k-wallpaper-stock-photographic-image_915071-29857.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: imageUrls.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemBuilder: (context, index) {
          return FittedBox(child: Image.network(imageUrls[index]));
        });
  }
}
