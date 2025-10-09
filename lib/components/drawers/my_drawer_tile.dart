import 'package:flutter/material.dart';
import 'package:restaurant/components/styles/textstyle.dart';

class MyDrawerTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function()? onTap;
  const MyDrawerTile({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: ListTile(
        title: Text(
          text,
          style: simpleText.copyWith(
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
        leading: Icon(
          icon,
          color: Theme.of(context).colorScheme.inversePrimary,
          size: 24,
        ),
        onTap: onTap,
      ),
    );
  }
}
