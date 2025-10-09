import 'package:flutter/material.dart';
import 'package:restaurant/components/styles/textstyle.dart';
import 'package:restaurant/models/food.dart';

class MyQuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  const MyQuantitySelector({
    super.key,
    required this.quantity,
    required this.food,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Row(
            children: [
              // decrement
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  shape: BoxShape.circle,
                ),
                child: GestureDetector(
                  onTap: onDecrement,
                  child: Icon(
                    Icons.remove,
                    size: 25,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
              ),
              // quantity count
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  quantity.toString(),
                  style: smallBoldText.copyWith(
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
              ),
              // increment
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  shape: BoxShape.circle,
                ),
                child: GestureDetector(
                  onTap: onIncrement,
                  child: Icon(
                    Icons.add,
                    size: 25,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
