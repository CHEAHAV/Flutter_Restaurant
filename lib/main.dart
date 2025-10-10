import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/firebase_options.dart';
import 'package:restaurant/models/restaurant.dart';
import 'package:restaurant/pages/restaurants/cart_page.dart';
import 'package:restaurant/pages/restaurants/intro_page.dart';
import 'package:restaurant/pages/logins/auth_page.dart';
import 'package:restaurant/pages/logins/login_page.dart';
import 'package:restaurant/pages/logins/register_page.dart';
import 'package:restaurant/pages/restaurants/restaurant_page.dart';
import 'package:restaurant/pages/restaurants/setting_page.dart';
import 'package:restaurant/themes/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiProvider(
      providers: [
        // theme provider
        ChangeNotifierProvider(create: (context) => ThemeProvider()),

        // restaurant provider
        ChangeNotifierProvider(create: (context) => Restaurant()),
      ],
      child: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthPage(),
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      routes: {
        '/login_page': (context) => LoginPage(
          onTap: () {
            Navigator.pushNamed(context, '/register_page');
          },
        ),
        '/register_page': (context) => Registerpage(
          onTap: () {
            Navigator.pop(context);
          },
        ),
        '/intro_page': (context) => IntroPage(),
        '/restaurant_page': (context) => RestaurantPage(),
        '/setting_page': (context) => SettingPage(),
        '/cart_page': (context) => CartPage(),
      },
    );
  }
}
