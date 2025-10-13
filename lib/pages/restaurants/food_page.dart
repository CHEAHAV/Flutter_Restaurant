import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/components/buttons/my_button.dart';
import 'package:restaurant/components/styles/textstyle.dart';
import 'package:restaurant/models/food.dart';
import 'package:restaurant/models/restaurant.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};
  FoodPage({super.key, required this.food}) {
    // initialize selected addons to be false
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }
  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  // ... inside _FoodPageState ...

  // method add to cart
  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    // format the selected addons
    List<Addon> currentySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentySelectedAddons.add(addon);
      }
    }
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Add to cart success...!"),
        actions: [
          ElevatedButton(
            onPressed: () {
              context.read<Restaurant>().addToCart(
                food,
                currentySelectedAddons,
              );
              // back out from dialog
              Navigator.pop(context);
              // go to cart page
              Navigator.pushNamed(context, '/cart_page');
            },
            child: Text("OK"),
          ),
        ],
      ),
    );
  } // Removed the standalone Navigator.pushNamed here

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // scaffold UI
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                // food image
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(widget.food.imagePath, fit: BoxFit.cover),
                ),
                // food name
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              widget.food.name,
                              style: boldText.copyWith(
                                color: Theme.of(
                                  context,
                                ).colorScheme.inversePrimary,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        // food price and rating
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\$ ${widget.food.price}"),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_rate_sharp,
                                  size: 20,
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.inversePrimary,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  widget.food.rating.toString(),
                                  style: smallText.copyWith(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        // food description
                        Column(
                          children: [
                            Text(
                              widget.food.description,
                              style: smallText.copyWith(
                                color: Theme.of(
                                  context,
                                ).colorScheme.inversePrimary,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(color: Theme.of(context).colorScheme.secondary),
                        SizedBox(height: 25),
                        Text(
                          "Add-ons",
                          style: smallBoldText.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        // addons
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: widget.food.availableAddons.length,
                            itemBuilder: (context, index) {
                              // get individual addon
                              Addon addon = widget.food.availableAddons[index];
                              // return check box UI
                              return CheckboxListTile(
                                title: Text(
                                  addon.name,
                                  style: smallText.copyWith(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  ),
                                ),
                                subtitle: Text("\$ ${addon.price}"),
                                value: widget.selectedAddons[addon],
                                onChanged: (bool? value) {
                                  setState(() {
                                    widget.selectedAddons[addon] = value!;
                                  });
                                },
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 20),
                        // add to cart button
                        MyButton(
                          onTap: () =>
                              addToCart(widget.food, widget.selectedAddons),
                          text: "Add to cart".toUpperCase(),
                        ),
                        SizedBox(height: 25),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        // back button
        SafeArea(
          child: Opacity(
            opacity: 0.5,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.tertiary,
              ),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back_ios_rounded),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
