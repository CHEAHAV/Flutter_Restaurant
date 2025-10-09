import 'package:curved_text/curved_text.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/components/buttons/my_explore_button.dart';

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
          left: 20,
          right: 20,
          child: Center(
            child: Opacity(
              opacity:0.7,
              child: CurvedText(
                curvature: 0.004,
                text: "Restaurant",
                textStyle: TextStyle(
                  fontFamily: 'ALGER',
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 8,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 70,
          left: 50,
          child: MyExploreButton(
            onTap: () => Navigator.pushNamed(context, '/restaurant_page'),
            text: "Let's Explore",
          ),
        ),
      ],
    );
  }
}
