import 'package:flutter/material.dart';
import 'package:restaurant/components/styles/textstyle.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      extendBody: true,
      appBar: AppBar(
        title: Text(
          "Acccount",
          style: bigText.copyWith(
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
    );
  }
}
