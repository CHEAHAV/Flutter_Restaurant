import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/components/styles/textstyle.dart';
import 'package:restaurant/models/favorite_item.dart';
import 'package:restaurant/models/restaurant.dart';

class MyFavoriteTile extends StatelessWidget {
  final FavoriteItem favoriteItem;
  final Function()? onTap;
  const MyFavoriteTile({
    super.key,
    required this.favoriteItem,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                GestureDetector(
                  onTap: onTap,
                  child: Row(
                    children: [
                      // food image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          favoriteItem.food.imagePath,
                          fit: BoxFit.cover,
                          height: 120,
                          width: 120,
                        ),
                      ),
                      SizedBox(width: 10),
                      // food name, price and rating
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(favoriteItem.food.name, style: smallBoldText),
                            SizedBox(height: 5),
                            Text(
                              "\$ ${favoriteItem.food.price}",
                              style: smallText.copyWith(
                                color: Theme.of(
                                  context,
                                ).colorScheme.inversePrimary,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  favoriteItem.food.rating.toString(),
                                  style: smallText.copyWith(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.inversePrimary,
                                  ),
                                ),
                                SizedBox(width: 5),
                                for (
                                  int i = 0;
                                  i < favoriteItem.food.rating.floor();
                                  i++
                                )
                                  Icon(
                                    Icons.star_sharp,
                                    size: 16,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 40,
                  child: // Remove from favorites button
                  IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(
                            "Do you want to remove food from favorite menu?",
                            style: smallBoldText.copyWith(
                              color: Theme.of(
                                context,
                              ).colorScheme.inversePrimary,
                            ),
                          ),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "No",
                                style: boldText.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                restaurant.removeFromFavorite(
                                  favoriteItem.food,
                                );
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Yes",
                                style: boldText.copyWith(color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    icon: Icon(Icons.favorite, color: Colors.red, size: 30),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
