import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 400,
            child: Image.asset("assets/images/BG Asset.png",
                width: 500,
                fit: BoxFit.cover),
          )
        ],
      ),
    );
  }
}
