import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 250,
                child: Image.asset("assets/images/BG Asset.png",
                    width: 500,
                    fit: BoxFit.cover),
              ),
              Positioned(
                top: 40,
                left: 16,
                child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(220),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  CupertinoIcons.chevron_left,
                  color: Colors.black,
                ),
              ),
              ),

      // the side text


      const Positioned(
        top: 120,
        left: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Please sign in to your\nexisting account',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 13,
                color: Colors.white,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    ],
          ),

      Expanded(child:
      Container(
      width: double.infinity,
        decoration: const BoxDecoration(
         color: Colors.white,
        borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
          ),
        ),
    child: SingleChildScrollView(
          padding:
              const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
    // ── Email Field ──
            const Text(
    'Email',
    style: TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    ),
      ),






      const SizedBox(height: 8),
      TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'example@gmail.com',
          hintStyle: const TextStyle(
            fontFamily: 'Poppins',
            color: Colors.grey,
            fontSize: 14,
          ),
          filled: true,
          fillColor: const Color(0xFFF5F5F5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      const SizedBox(height: 20),

      // ── Password Field ──
      const Text(
        'Password',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
      const SizedBox(height: 8),
      TextField(
        obscureText: _obscurePassword,
        decoration: InputDecoration(
          hintText: '* * * * * * * * * *',
          hintStyle: const TextStyle(
            fontFamily: 'Poppins',
            color: Colors.grey,
            fontSize: 14,
          ),
          filled: true,
          fillColor: const Color(0xFFF5F5F5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _obscurePassword
                  ? CupertinoIcons.eye_slash
                  : CupertinoIcons.eye,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                _obscurePassword = !_obscurePassword;
              });
            },
          ),
        ),
      ),



    const SizedBox(height: 12),

    // ── Forgot Password ──
    Center(
    child: TextButton(
    onPressed: () {},
    child: const Text(
    'Forgot Password',
    style: TextStyle(
    fontFamily: 'Poppins',
    color: Color(0xFFFF6B57),
    fontWeight: FontWeight.w500,
    ),
    ),
    ),
    ),
    const SizedBox(height: 12),

    // ── Login Button ──
    SizedBox(
    width: double.infinity,
    height: 54,
    child: ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFFFF6B57),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
    ),
    ),
    child: const Text(
    'Login',
    style: TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    ),
    ),
    ),
    ),
    const SizedBox(height: 20),

    // ── Or Login With ──
    const Center(
    child: Text(
    'Or login with',
    style: TextStyle(
    fontFamily: 'Poppins',
    color: Colors.grey,
    fontSize: 13,
    ),
    ),
    ),
    const SizedBox(height: 16),

    // ── Social Buttons ──
    Row(
    children: [
    // Facebook
    Expanded(
    child: Container(
    height: 54,
    decoration: BoxDecoration(
    border:
    Border.all(color: Colors.grey.shade200),
    borderRadius: BorderRadius.circular(14),
    ),
    child: const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Icon(
    CupertinoIcons.person_crop_circle_fill,
    color: Color(0xFF1877F2),
    size: 28,
    ),
    SizedBox(width: 8),
    Text(
    'FACEBOOK',
    style: TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 13,
    ),
    ),
    ],
    ),
    ),
    ),
    const SizedBox(width: 16),

    // Google
    Expanded(
    child: Container(
    height: 54,
    decoration: BoxDecoration(
    border:
    Border.all(color: Colors.grey.shade200),
    borderRadius: BorderRadius.circular(14),
    ),
    child: const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Icon(
    CupertinoIcons.search_circle_fill,
    color: Color(0xFFDB4437),
    size: 28,
    ),
    SizedBox(width: 8),
    Text(
    'GOOGLE',
    style: TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 13,
    ),
    ),
    ],
    ),
    ),
    ),
    ],
    ),
    const SizedBox(height: 30),

    // ── Sign Up ──
    Center(
    child: RichText(
    text: const TextSpan(
    text: "Don't have an account? ",
    style: TextStyle(
    fontFamily: 'Poppins',
    color: Colors.grey,
    fontSize: 13,
    ),
    children: [
    TextSpan(
    text: 'Sign Up',
    style: TextStyle(
    color: Color(0xFFFF6B57),
    fontWeight: FontWeight.w600,
    ),
    )
    ],
    ),
    ),
    ),
      ]

        ),
          ),
          ),
            ),


        ],
      ),
    );
  }
}
