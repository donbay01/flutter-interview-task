import 'package:flutter/material.dart';


class Slider3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/ONBOARDING PICTURE.png',)
              )
          ),
        ),
        Positioned(
            top: 50,
            left: 20,
            child: Image(image: AssetImage('assets/LOGO.png')))
      ],
    );
  }
}