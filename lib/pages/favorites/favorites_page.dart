import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/components/favorites/my_favorite_tile.dart';
import 'package:restaurant/components/styles/textstyle.dart';
import 'package:restaurant/models/restaurant.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        // Use the correct favorites list
        final favoriteItems = restaurant.favorites;
        
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.tertiary,
          extendBody: true,
          appBar: AppBar(
            title: Text("Favorite"),
            automaticallyImplyLeading: false,
            centerTitle: true,
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
                                  return MyFavoriteTile(favoriteItem: favoriteItem);
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