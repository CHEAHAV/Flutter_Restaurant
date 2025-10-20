import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/components/drawers/my_drawer.dart';
import 'package:restaurant/components/favorites/my_favorite_tile.dart';
import 'package:restaurant/components/styles/textstyle.dart';
import 'package:restaurant/models/restaurant.dart';
import 'package:restaurant/pages/restaurants/food_page.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        // Use the favorites list
        final favoriteItems = restaurant.favorites;

        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          extendBody: true,
          drawer: MyDrawer(),
          appBar: AppBar(
            title: Text(
              "Favorite",
              style: bigText.copyWith(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            centerTitle: true,
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
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(width: 15),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      favoriteItems.isEmpty
                          ? Expanded(
                              child: Center(
                                child: Text(
                                  "Favorite menu is empty...!",
                                  style: smallBoldText.copyWith(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.inversePrimary,
                                  ),
                                ),
                              ),
                            )
                          : Expanded(
                              child: ListView.builder(
                                itemCount: favoriteItems.length,
                                itemBuilder: (contex, index) {
                                  final favoriteItem = favoriteItems[index];
                                  return MyFavoriteTile(
                                    favoriteItem: favoriteItem,
                                    onTap: () => Navigator.push(
                                      contex,
                                      MaterialPageRoute(
                                        builder: (contex) =>
                                            FoodPage(food: favoriteItem.food),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
