import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      extendBody: true,
      appBar: AppBar(
        title: Text("Acccount"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
    );
  }
}
