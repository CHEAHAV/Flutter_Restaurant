import 'package:flutter/material.dart';
import 'package:restaurant/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      String categoryName = category.toString().split('.').last;
      String tabText =
          categoryName[0].toUpperCase() +
          categoryName.substring(1).toLowerCase();
      return Tab(
        child: Padding(
          // Set horizontal padding for the content to zero
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: Text(tabText),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8, right: 8),
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
          // TabBarAlignment.start to start frome padding 0
          tabAlignment: TabAlignment.start,
          tabs: _buildCategoryTabs(),
          isScrollable: true,
        ),
      ),
    );
  }
}
