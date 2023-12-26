import 'package:flutter/material.dart';

class ResponsiveText extends StatelessWidget {
  const ResponsiveText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Text Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title Text',
              style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 20)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'This is body text. It should be responsive to the screen size.',
              style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 16)),
            )
          ],
        ),
      ),
    );
  }
}

// 1- scaleFactor
// 2- responsive fontSize
// 3- min, max fontSize

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  print(
      'base font size =  $fontSize lowerlimit = $lowerLimit upperlimit = $upperLimit,responsive font size = $responsiveFontSize,final fontSize = ${responsiveFontSize.clamp(lowerLimit, upperLimit)}');
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
