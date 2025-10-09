import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/models/restaurant.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25, left: 25, bottom: 25),
      child: Center(
        child: Column(
          children: [
            Text("Thank you for your order!"),
            SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Consumer<Restaurant>(
                  builder: (context, restaurant, child) =>
                      Text(restaurant.displayCartReceipt()),
                ),
              ),
            ),
            SizedBox(height: 25),
            Text("Estimated delivery time is : 4:10PM"),
          ],
        ),
      ),
    );
  }
}
