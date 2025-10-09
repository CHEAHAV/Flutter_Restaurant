import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/components/buttons/my_button.dart';
import 'package:restaurant/components/carts/my_cart_tile.dart';
import 'package:restaurant/components/styles/textstyle.dart';
import 'package:restaurant/models/restaurant.dart';
import 'package:restaurant/pages/payments/payment_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        // cart
        final userCart = restaurant.cart;

        // scafold UI
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Cart",
              style: bigText.copyWith(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            centerTitle: true,
            actions: [
              // clear cart button
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(
                        "Are you sure you want to clear the cart?",
                        style: smallBoldText.copyWith(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                      actions: [
                        // cancel button
                        MaterialButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Cancel",
                            style: smallBoldText.copyWith(
                              color: Theme.of(
                                context,
                              ).colorScheme.inversePrimary,
                            ),
                          ),
                        ),

                        // accept button
                        ElevatedButton(
                          onPressed: () {
                            restaurant.clearCart();
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Yes",
                            style: smallBoldText.copyWith(color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                icon: Icon(
                  Icons.delete_forever_rounded,
                  size: 30,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // list of cart
                Expanded(
                  child: Column(
                    children: [
                      userCart.isEmpty
                          ? Expanded(
                              child: Center(
                                child: Text(
                                  "Cart is empty...!",
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
                                itemCount: userCart.length,
                                itemBuilder: (contex, index) {
                                  // get individual cart item
                                  final cartItem = userCart[index];

                                  // return cart tile UI
                                  return MyCartTile(cartItem: cartItem);
                                },
                              ),
                            ),
                    ],
                  ),
                ),
                // button to pay
                MyButton(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaymentPage()),
                  ),
                  text: "Go to checkout".toUpperCase(),
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
        );
      },
    );
  }
}
