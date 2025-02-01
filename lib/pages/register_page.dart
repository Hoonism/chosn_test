import "package:chosn_test/components/button.dart";
import "package:chosn_test/components/textfield.dart";
import "package:flutter/material.dart";

import "../auth/auth_service.dart";

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();

  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  void register(BuildContext context) {
    final _auth = AuthService();

// passwords match
    if (_pwController.text == _confirmPwController.text) {
      try {
        _auth.signUpWithEmailPassword(
          _emailController.text,
          _pwController.text,
        );
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Passwords don't match!"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(Icons.message,
                size: 60, color: Theme.of(context).colorScheme.primary),

            const SizedBox(height: 50),
            // welcome back
            Text(
              "Welcome back, your name",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary, fontSize: 16),
            ),

            const SizedBox(height: 25),

            // email
            MyTextField(
              hintText: "Email",
              obscure: false,
              controller: _emailController,
            ),
            // pw
            const SizedBox(height: 10),
            MyTextField(
              hintText: "Password",
              obscure: true,
              controller: _pwController,
            ),
            const SizedBox(height: 10),
            MyTextField(
              hintText: "Confirm Password",
              obscure: true,
              controller: _confirmPwController,
            ),
            // login
            const SizedBox(height: 20),
            MyButton(text: "Register", onTap: () => register(context)),

            // register
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? "),
                GestureDetector(onTap: onTap, child: Text("Log in"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
