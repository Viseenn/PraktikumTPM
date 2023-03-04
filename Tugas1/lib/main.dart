import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: ListView(children: <Widget>[
        Container(
          padding:
              const EdgeInsets.only(bottom: 10, left: 0, right: 0, top: 80),
          child: Image.asset(
            "assets/profile.png",
            width: 380,
            height: 180,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 60),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              labelText: "Email",
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 60),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              labelText: "Password",
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 60),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("Log In"),
            style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(40)),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(bottom: 0, left: 0, right: 0, top: 5),
          child: const Center(
            child: const Text("Forgot password?"),
          ),
        ),
      ]),
    ));
  }
}
