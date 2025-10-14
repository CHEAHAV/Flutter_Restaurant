import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/components/drawers/my_drawer.dart';
import 'package:restaurant/components/foods/my_food_tile.dart';
import 'package:restaurant/components/navigations/my_navigation_bar.dart';
import 'package:restaurant/components/slivers/my_currect_location.dart';
import 'package:restaurant/components/slivers/my_description_box.dart';
import 'package:restaurant/components/slivers/my_sliver_appbar.dart';
import 'package:restaurant/components/slivers/my_tab_bar.dart';
import 'package:restaurant/models/food.dart';
import 'package:restaurant/models/restaurant.dart';
import 'package:restaurant/pages/accounts/account_page.dart';
import 'package:restaurant/pages/favorites/favorites_page.dart';
import 'package:restaurant/pages/restaurants/food_page.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({super.key});

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage>
    with SingleTickerProviderStateMixin {

  // Tab controller
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: FoodCategory.values.length,
      vsync: this,
    );
  }

  // select index in bottom navigationbar
  int _selectedIndex = 0;
  // Navigation pages
  final List<Widget> _pages = [RestaurantPage(), FavoritePage(), AccountPage()];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // sort out and return a list of food items that belong to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // return  list of foods in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      // get category menu
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          // get individual food
          final food = categoryMenu[index];
          // return food tile UI
          return MyFoodTile(
            food: food,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (contex) => FoodPage(food: food)),
              );
            },
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    // If not on the home tab (index 0), show other pages
    if (_selectedIndex != 0) {
      return Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: MyNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      );
    }
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      extendBody: true,
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            // data of title
            title: MyTabBar(tabController: _tabController),
            // data of child
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  // cut left wight to center
                  indent: 25,
                  // cut right wight to center
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                // my current location
                MyCurrentLocation(),

                // my description box
                MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) => TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(restaurant.menu),
          ),
        ),
      ),
      bottomNavigationBar: MyNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
