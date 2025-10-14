import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  const MyNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.favorite, size: 30),
      Icon(Icons.person, size: 30),
    ];

    return Theme(
      data: Theme.of(
        context,
      ).copyWith(iconTheme: IconThemeData(color: Colors.white)),
      child: CurvedNavigationBar(
        color: Theme.of(context).colorScheme.primary,
        items: items,
        height: 70,
        index: currentIndex,
        onTap: onTap,
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        buttonBackgroundColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
