import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/components/buttons/my_button.dart';
import 'package:restaurant/components/styles/textstyle.dart';
import 'package:restaurant/components/textfields/my_information_field.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              DropShadow(child: Icon(Icons.lock, size: 150)),
              SizedBox(height: 15),
              MyInformationField(
                labelText: "Full name",
                prefixIcon: Icon(
                  Icons.person,
                  size: 30,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              SizedBox(height: 5),
              MyInformationField(
                labelText: "Gmail",
                prefixIcon: Icon(
                  Icons.email_outlined,
                  size: 30,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              MyInformationField(
                labelText: "Password",
                prefixIcon: Icon(
                  Icons.fingerprint_sharp,
                  size: 30,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              SizedBox(height: 15),
              MyButton(onTap: () {}, text: "Edit profile".toUpperCase()),
              SizedBox(height: 5),
              DropShadow(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    width: 70,
                    decoration: BoxDecoration(),
                    child: Text(
                      "Delete",
                      style: TextStyle(color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
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
