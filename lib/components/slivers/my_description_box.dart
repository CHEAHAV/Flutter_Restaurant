import 'package:flutter/material.dart';
import 'package:restaurant/components/styles/textstyle.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // delevery fee
          Column(
            children: [
              Text(
                "\$ 0.99",
                style: smallText.copyWith(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Text(
                "Delivery Fee",
                style: smallText.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),

          // delevery time
          Column(
            children: [
              Text(
                "25-30",
                style: smallText.copyWith(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Text(
                "Delevery Time",
                style: smallText.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
