import "package:chosn_test/auth/auth_service.dart";
import "package:chosn_test/components/button.dart";
import "package:chosn_test/components/textfield.dart";
import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  void login(BuildContext context) async {
    final authService = AuthService();

    try {
      await authService.signInWithEmailPassword(
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

            // login
            const SizedBox(height: 20),
            MyButton(
              text: "Login",
              onTap: () => login(context),
            ),

            // register
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member?"),
                GestureDetector(onTap: onTap, child: Text("Register now"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
