import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends StatefulWidget {
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final usernameEditor = TextEditingController();

  final passwordEditor = TextEditingController();
  final correctPassword = "12345";

  String wrongPassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("sign in"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 100,
              child: TextField(
                  controller: usernameEditor,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.account_circle_outlined,
                          color: Colors.purple),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 20.0),
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "enter your username")),
            ),
            Container(
              width: 200,
              height: 100,
              child: TextField(
                  controller: passwordEditor,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.key, color: Colors.purple),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 20.0),
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "enter your password")),
            ),
            ElevatedButton.icon(
              onPressed: () {
                if (passwordEditor.text == correctPassword) {
                  GoRouter.of(context).go('/brows', extra: usernameEditor.text);
                } else {
                  setState(() {
                    wrongPassword = "wrong password";
                  });
                }
                ;
              },
              icon: const Icon(Icons.login_outlined),
              label: const Text("sign in"),
            ),
            Text("password status ${wrongPassword}")
          ],
        ),
      ),
    );
  }
}
