import 'package:flutter/material.dart';

void main() => runApp(const Myapp());

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var uEmail = TextEditingController();
  var uPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('card'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                controller: uEmail,
                decoration: InputDecoration(
                  hintText: 'enter the email',
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: uPassword,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'enter the pasword',
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                String userEmail = uEmail.text.toString();
                String userPassword = uPassword.text.toString();
                // ignore: avoid_print
                print("Email:$userEmail,Password:$userPassword");
              },
              child: const Text("LogIn"),
            )
          ],
        ),
      ),
    );
  }
}
