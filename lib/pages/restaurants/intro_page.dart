import 'package:curved_text/curved_text.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/components/buttons/my_explore_button.dart';
import 'package:restaurant/components/styles/textstyle.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/icons/sublogo/restaurant.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 120,
          left: 0,
          right: 0,
          child: Center(
            child: Opacity(
              opacity: 0.7,
              child: CurvedText(
                curvature: 0.004,
                text: "Restaurant".toUpperCase(),
                textStyle: inTroText,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 70,
          left: 0,
          right: 0,
          child: Center(
            child: MyExploreButton(
              onTap: () => Navigator.pushNamed(context, '/restaurant_page'),
              text: "Let's Explore",
            ),
          ),
        ),
      ],
    );
  }
}
