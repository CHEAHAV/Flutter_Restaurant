import 'package:flutter/material.dart';
import 'package:restaurant/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      String categoryName = category.toString().split('.').last;
      return Tab(
        text:
            categoryName[0].toUpperCase() +
            categoryName.substring(1).toLowerCase(),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Container(
        decoration: BoxDecoration(
          border: Border.symmetric(
            horizontal: BorderSide(
              color: Theme.of(context).colorScheme.inversePrimary,
              width: 1,
            ),
          ),
        ),
        child: TabBar(
          controller: tabController,
          indicatorPadding: EdgeInsets.zero,
          tabs: _buildCategoryTabs(),
          isScrollable: true,
        ),
      ),
    );
  }
}
