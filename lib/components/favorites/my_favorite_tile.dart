import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/components/styles/textstyle.dart';
import 'package:restaurant/models/favorite_item.dart';
import 'package:restaurant/models/restaurant.dart';

class MyFavoriteTile extends StatelessWidget {
  final FavoriteItem favoriteItem;
  const MyFavoriteTile({super.key, required this.favoriteItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              // food image
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  favoriteItem.favMenu.imagePath,
                  fit: BoxFit.cover,
                  height: 80,
                  width: 80,
                ),
              ),
              SizedBox(width: 10),
              // food name, price and rating
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(favoriteItem.favMenu.name, style: smallBoldText),
                    SizedBox(height: 5),
                    Text(
                      "\$ ${favoriteItem.favMenu.price}",
                      style: smallText.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          favoriteItem.favMenu.rating.toString(),
                          style: smallText.copyWith(
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ),
                        SizedBox(width: 5),
                        for (
                          int i = 0;
                          i < favoriteItem.favMenu.rating.floor();
                          i++
                        )
                          Icon(
                            Icons.star_sharp,
                            size: 16,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                      ],
                    ),
                  ],
                ),
              ),
              // Remove from favorites button
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(
                        "Do you want to remove food from favorite menu?",
                      ),
                      actions: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("No"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            restaurant.removeFromFavorite(favoriteItem.favMenu);
                            Navigator.pop(context);
                          },
                          child: Text("Yes"),
                        ),
                      ],
                    ),
                  );
                },
                icon: Icon(Icons.favorite, color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
