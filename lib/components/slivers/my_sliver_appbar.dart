import 'package:flutter/material.dart';
import 'package:restaurant/components/styles/textstyle.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySliverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // heiht of silver app bar
      expandedHeight: 330,
      // scroll to top
      collapsedHeight: 95,
      // pinned app bar
      pinned: true,
      // Make the AppBar appear when scrolling down
      floating: true,
      actions: [
        IconButton(
          onPressed: () {
            // go to cart page
            Navigator.pushNamed(context, '/cart_page');
          },
          icon: Icon(Icons.shopping_cart),
        ),
      ],
      backgroundColor: Theme.of(context).colorScheme.surface,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(
        "Restaurant",
        style: bigText.copyWith(
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
      ),
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        // my tab bar in restaurant page
        title: title,
        centerTitle: true,
        titlePadding: EdgeInsets.only(top: 0, right: 0, left: 0),
        expandedTitleScale: 1,
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          // current location and description box in restauran page
          child: child,
        ),
      ),
    );
  }
}
