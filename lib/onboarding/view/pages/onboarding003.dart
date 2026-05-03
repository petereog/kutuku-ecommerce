import 'package:flutter/material.dart';
import 'package:kutuku/authentication/view/pages/login.dart';
import 'package:kutuku/authentication/view/pages/signup.dart';

class Onboarding003 extends StatelessWidget {
  const Onboarding003({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFC529),
      body: Stack(
        children: [
          Positioned(
            top: 400,
            child: Image.asset(
              'assets/images/pattern.png',
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            right: 0,
            child: Image.asset(
              'assets/images/Fresh beef burger isolated -1 2.png',
              fit: BoxFit.contain,
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Good music and good food makes me happy.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                          color: Colors.black,
                          height: 1.2,
                        ),
                      ),
                      const SizedBox(height: 70),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Signup(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 54,
                                decoration: BoxDecoration(
                                  color: Colors.white.withAlpha(140),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Center(
                                  child: Text(
                                    'sign up',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 25),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Login(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 54,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 55),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
