import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drop_shadow/drop_shadow.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/components/buttons/my_button.dart';
import 'package:restaurant/components/styles/textstyle.dart';
import 'package:restaurant/components/textfields/my_information_field.dart';
import 'package:restaurant/services/authentication/auth_service.dart';
import 'package:restaurant/services/database/firestore.dart'; // Import the service

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  // Get current user and Firestore service instance
  final currentUser = FirebaseAuth.instance.currentUser;
  final FirestoreService db = FirestoreService();

  // Future to hold the user data retrieval process
  late Future<DocumentSnapshot<Map<String, dynamic>>> _userdata;

  // Data controllers
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Only fetch data if a user is logged in
    if (currentUser != null) {
      _userdata = db.getUserDetail(currentUser!.uid);
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // delete user account and user detail
  void deleteUserAccount() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          "Do you want to delete user account?",
          style: smallBoldText.copyWith(
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              "Cancel",
              style: smallBoldText.copyWith(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              if (currentUser != null) {
                try {
                  // delete firestore user detail
                  await db.deleteUserDetail(currentUser!.uid);

                  // delete firebase auth account
                  await AuthService().deleteUserAccount();
                  // user signout
                  await AuthService().signOut();
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Error deleting account: $e")),
                  );
                }
                Navigator.pop(context);
                if (mounted) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Account was deleted...!"),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login_page');
                          },
                          child: Text(
                            "OK",
                            style: smallBoldText.copyWith(color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              }
            },
            child: Text(
              "Delete",
              style: smallBoldText.copyWith(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }

  // Helper to show a loading indicator or a placeholder
  Widget _buildLoadingOrError(String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 10),
          Text(message),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (currentUser == null) {
      return _buildLoadingOrError("No user logged in.");
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      extendBody: true,
      appBar: AppBar(
        title: Text(
          "Account",
          style: bigText.copyWith(
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/setting_page');
            },
            icon: Icon(
              Icons.settings,
              size: 25,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
        ],
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        future: _userdata,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return _buildLoadingOrError("Loading user data...");
          }

          // Check if data exists
          if (!snapshot.hasData || !snapshot.data!.exists) {
            return _buildLoadingOrError("User data not found in Firestore.");
          }

          // Data is available, extract it
          final userData = snapshot.data!.data();

          // Set controllers to display data (we only do this here as the data is loaded)
          _usernameController.text = userData?['user name'] ?? 'N/A';
          _emailController.text = userData?['email'] ?? 'N/A';
          _passwordController.text = userData?['password'] ?? 'N/A';

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    const DropShadow(child: Icon(Icons.lock, size: 150)),
                    const SizedBox(height: 15),
                    // user name
                    MyInformationField(
                      labelText: "Full name",
                      controller: _usernameController,
                      obscreText: false,
                      prefixIcon: Icon(
                        Icons.person,
                        size: 30,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 5),

                    // gmail
                    MyInformationField(
                      labelText: "Gmail",
                      controller: _emailController,
                      obscreText: false,
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        size: 30,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),

                    // password
                    MyInformationField(
                      labelText: "Password",
                      controller: _passwordController,
                      obscreText: true,
                      prefixIcon: Icon(
                        Icons.fingerprint_sharp,
                        size: 30,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 15),

                    MyButton(
                      onTap: () {
                        // Logic for editing profile...
                      },
                      text: "Edit profile".toUpperCase(),
                    ),

                    const SizedBox(height: 5),

                    // Delete Button
                    DropShadow(
                      child: ElevatedButton(
                        onPressed: deleteUserAccount,
                        child: const SizedBox(
                          width: 70,
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
        },
      ),
    );
  }
}
