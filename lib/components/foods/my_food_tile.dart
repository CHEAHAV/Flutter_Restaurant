import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/components/styles/textstyle.dart';
import 'package:restaurant/models/food.dart';
import 'package:restaurant/models/restaurant.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final Function()? onTap;
  const MyFoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        bool isFavorite = restaurant.isFoodFavorite(food);

        void toggleFavorite() {
          if (isFavorite) {
            restaurant.removeFromFavorite(food);
          } else {
            restaurant.addToFavorite(food);
          }
        }

        return Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Column(
            children: [
              GestureDetector(
                onTap: onTap,
                child: Row(
                  children: [
                    // text food detail
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              food.name,
                              style: smallBoldText.copyWith(
                                color: Theme.of(
                                  context,
                                ).colorScheme.inversePrimary,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              food.description,
                              style: smallText.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("\$ ${food.price}"),
                                IconButton(
                                  onPressed: toggleFavorite,
                                  icon: Icon(
                                    Icons.favorite,
                                    size: 20,
                                    color: isFavorite
                                        ? Colors.red
                                        : Theme.of(
                                            context,
                                          ).colorScheme.inversePrimary,
                                  ),
                                ),
                                SizedBox(width: 60),
                                Row(
                                  children: [
                                    for (
                                      int i = 0;
                                      i < food.rating.floor();
                                      i++
                                    )
                                      Icon(
                                        Icons.star_rate_sharp,
                                        size: 20,
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.inversePrimary,
                                      ),
                                    SizedBox(width: 10),
                                    Text(
                                      food.rating.toString(),
                                      style: smallText.copyWith(
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.inversePrimary,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    // food image
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          width: 2,
                        ),
                      ),
                      child: Image.asset(food.imagePath, fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
              // divider line
              Divider(color: Theme.of(context).colorScheme.primary),
            ],
          ),
        );
      },
    );
  }
}
