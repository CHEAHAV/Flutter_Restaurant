import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/components/styles/textstyle.dart';

class MyExploreButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const MyExploreButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Opacity(
        opacity: 0.7,
        child: DropShadow(
          child: Container(
            padding: EdgeInsets.only(left: 70, right: 70),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiary,
              borderRadius: BorderRadius.circular(32),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  text,
                  style: boldText.copyWith(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
