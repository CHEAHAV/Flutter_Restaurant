import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/components/carts/my_quantity_selector.dart';
import 'package:restaurant/components/styles/textstyle.dart';
import 'package:restaurant/models/cart_item.dart';
import 'package:restaurant/models/restaurant.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        // food image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            cartItem.food.imagePath,
                            fit: BoxFit.cover,
                            height: 100,
                            width: 100,
                          ),
                        ),
                        SizedBox(width: 10),
                        // food name, price and rating
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(cartItem.food.name, style: smallBoldText),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  "\$ ${cartItem.food.price}",
                                  style: smallText.copyWith(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.inversePrimary,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  cartItem.food.rating.toString(),
                                  style: smallText.copyWith(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.inversePrimary,
                                  ),
                                ),
                                SizedBox(width: 10),
                                for (
                                  int i = 0;
                                  i < cartItem.food.rating.floor();
                                  i++
                                )
                                  Icon(
                                    Icons.star_sharp,
                                    size: 20,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 25),
                      ],
                    ),
                    // addons
                    SizedBox(
                      height: cartItem.selectedAddons.isEmpty ? 0 : 55,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: cartItem.selectedAddons
                            .map(
                              (addon) => Padding(
                                padding: const EdgeInsets.only(
                                  right: 8,
                                  top: 8,
                                ),
                                child: FilterChip(
                                  label: Row(
                                    children: [
                                      // addon name
                                      Text(addon.name),
                                      SizedBox(width: 10),

                                      // addon price
                                      Text("( \$ ${addon.price} )"),
                                    ],
                                  ),
                                  onSelected: (value) {},
                                  shape: StadiumBorder(
                                    side: BorderSide(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.inversePrimary,
                                    ),
                                  ),
                                  backgroundColor: Theme.of(
                                    context,
                                  ).colorScheme.secondary,
                                  labelStyle: smallText.copyWith(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.inversePrimary,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // increment or decrement quantity
            Positioned(
              top: 45,
              left: 290,
              child: MyQuantitySelector(
                quantity: cartItem.quantity,
                food: cartItem.food,
                onDecrement: () {
                  restaurant.removeFromCart(cartItem);
                },
                onIncrement: () {
                  restaurant.addToCart(cartItem.food, cartItem.selectedAddons);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
