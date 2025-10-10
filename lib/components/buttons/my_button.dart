import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/components/styles/textstyle.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const MyButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DropShadow(
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.tertiary,
            borderRadius: BorderRadius.circular(32),
          ),
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
    );
  }
}
