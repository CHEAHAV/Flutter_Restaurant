import 'package:drop_shadow/drop_shadow.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/components/buttons/my_button.dart';
import 'package:restaurant/components/connections/my_connection.dart';
import 'package:restaurant/components/styles/textstyle.dart';
import 'package:restaurant/components/textfields/my_text_field.dart';
import 'package:restaurant/services/authentication/auth_service.dart';
import 'package:restaurant/services/database/firestore.dart';

class Registerpage extends StatefulWidget {
  //define the onTap function as a field in the stateful widget
  final void Function()? onTap;
  const Registerpage({super.key, required this.onTap});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  // Global key for the form
  final _formKey = GlobalKey<FormState>();

  // controller
  final userController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // hint password
  bool obscreTextpassword = true;
  void password() {
    setState(() {
      obscreTextpassword = !obscreTextpassword;
    });
  }
  // get auth service
  var authService = AuthService();
  // get access to database
  FirestoreService db = FirestoreService();

  @override
  void dispose() {
    userController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  // register method (CLEANED UP)
  void registerUser(BuildContext context) async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    // Check password confirmation early
    if (!passwordConfirmed()) {
      return;
    }

    //Show loading circle and prevent dismissal
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return const Center(child: CircularProgressIndicator());
      },
    );

    // authentication user
    try {
      // create user and capture result
      UserCredential userCredential = await authService
          .createUserWithEmailAndPassword(
            emailController.text.trim(),
            passwordController.text.trim(),
          );

      // get user id
      String uid = userCredential.user!.uid;

      // add user detail
      await db.addUserDetail(
        uid,
        userController.text.trim(),
        emailController.text.trim(),
        passwordController.text.trim(),
      );

      // demiss loading dialog on success
      if (context.mounted) {
        Navigator.pop(context);
        //navigate on success
        Navigator.pushNamed(context, '/intro_page');
      }
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  // confirm password
  bool passwordConfirmed() {
    return passwordController.text.trim() ==
        confirmPasswordController.text.trim();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  // logo
                  const DropShadow(
                    child: Center(child: Icon(Icons.lock, size: 150)),
                  ),

                  const SizedBox(height: 15),
                  // text
                  Text(
                    "You can register now...!",
                    style: smallText.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),

                  // user
                  const SizedBox(height: 25),
                  MyTextField(
                    controller: userController,
                    labelText: "User",
                    obscreText: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Username.';
                      }
                      return null;
                    },
                  ),

                  // email
                  const SizedBox(height: 10),
                  MyTextField(
                    controller: emailController,
                    labelText: "Email",
                    obscreText: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email.';
                      }
                      // Simple email format check
                      if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                        return 'Please enter a valid email address.';
                      }
                      return null; // Return null if validation passes
                    },
                  ),

                  // password
                  const SizedBox(height: 10),
                  MyTextField(
                    controller: passwordController,
                    labelText: "Password",
                    obscreText: obscreTextpassword, // Uses state variable
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a password.'; // Corrected message
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters.';
                      }
                      return null; // Return null if validation passes
                    },
                    suffixIcon: IconButton(
                      onPressed: password,
                      icon: obscreTextpassword
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),

                  // comfirm password
                  const SizedBox(height: 10),
                  MyTextField(
                    controller: confirmPasswordController,
                    labelText: "Confirm Password",
                    obscreText: obscreTextpassword, // Uses state variable
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password.';
                      }
                      if (value != passwordController.text) {
                        return 'Password and Confirm password must be matching.';
                      }
                      return null;
                    },
                    suffixIcon: IconButton(
                      onPressed: password,
                      icon: obscreTextpassword
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),

                  // Signup
                  const SizedBox(height: 25),
                  MyButton(
                    onTap: () {
                      registerUser(context);
                    },
                    text: "Sign UP".toUpperCase(),
                  ),

                  // continue with
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Theme.of(context).colorScheme.inverseSurface,
                          endIndent: 10,
                        ),
                      ),
                      const Text("Or Continue with"),
                      Expanded(
                        child: Divider(
                          color: Theme.of(context).colorScheme.inverseSurface,
                          indent: 10,
                        ),
                      ),
                    ],
                  ),

                  // image google and apple
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // google
                      MyConnection(
                        imagePath: ('assets/icons/logo/google.png'),
                        onTap: () {},
                      ),
                      const SizedBox(width: 10),
                      // apple
                      MyConnection(
                        imagePath: ('assets/icons/logo/apple.png'),
                        onTap: () {},
                      ),
                    ],
                  ),

                  // login text
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Are you already have an account?"),
                      const SizedBox(width: 5),
                      GestureDetector(
                        // Use the provided onTap function to go to the login page
                        onTap: widget.onTap ?? () => Navigator.pop(context),
                        child: Text(
                          "Login",
                          style: boldText.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
