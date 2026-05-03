import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/BG Asset.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Text("Sign Up Page"),
        ),
      ),
    );
  }
}
