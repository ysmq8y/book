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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 100,
              child: Center(
                child: Text(
                  "sign in",
                  style: TextStyle(
                      color: Color.fromARGB(222, 0, 0, 0),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              width: 220,
              height: 100,
              child: TextField(
                  controller: usernameEditor,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.account_circle_outlined,
                          color: Color.fromARGB(222, 0, 0, 0)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 20.0),
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "enter your username")),
            ),
            Container(
              width: 220,
              height: 100,
              child: TextField(
                  controller: passwordEditor,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.key,
                          color: Color.fromARGB(222, 0, 0, 0)),
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
              icon: const Icon(
                Icons.login_outlined,
                color: Color.fromARGB(222, 0, 0, 0),
              ),
              label: const Text(
                "sign in",
                style: TextStyle(
                    color: Color.fromARGB(222, 0, 0, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text("password status ${wrongPassword}")
          ],
        ),
      ),
    );
  }
}
