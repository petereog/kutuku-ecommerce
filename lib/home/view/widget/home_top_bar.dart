import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kutuku/home/view/pages/cartscreen.dart';


class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Menu button
        Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            color: const Color(0xFFF5F5F5),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(
            CupertinoIcons.line_horizontal_3,
            color: Colors.black,
            size: 20,
          ),
        ),

        // Deliver to + address
        Column(
          children: [
            Row(
              children: const [
                Text(
                  'Deliver to',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF888888),
                  ),
                ),
                SizedBox(width: 4),
                Icon(
                  CupertinoIcons.chevron_down,
                  size: 11,
                  color: Color(0xFF888888),
                ),
              ],
            ),
            const SizedBox(height: 2),
            const Text(
              '387  Merdina',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ],
        ),

        // Avatar with badge
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Cartscreen()));
          },
          child: Stack(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFFFF6B35),
                    width: 2,
                  ),
                  color: const Color(0xFFDDCCBB),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/Profile.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF6B35),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1.5),
                  ),
                  child: const Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
