import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/components/styles/textstyle.dart';
import 'package:restaurant/models/restaurant.dart';

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
        Consumer<Restaurant>(
          builder: (context, restaurant, child) {
            final cartItemCount = restaurant.cart.length;
            return Badge(
              padding: EdgeInsets.zero,
              label: Text(
                cartItemCount.toString(),
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              isLabelVisible: cartItemCount > 0,
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart_page');
                },
                icon: Icon(Icons.shopping_cart),
              ),
            );
          },
        ),
        SizedBox(width: 15),
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
