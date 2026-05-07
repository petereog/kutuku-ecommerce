import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kutuku/home/model/restaurant_model.dart';
import 'package:kutuku/home/view/pages/productdetail.dart';

class HomeRestaurantCard extends StatelessWidget {
  final RestaurantModel restaurant;

  const HomeRestaurantCard({
    super.key,
    required this.restaurant,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Productdetail()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.07),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image placeholder
            Stack(
              children: [
                Container(
                  height: 112,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: restaurant.bg,
                    image: const DecorationImage(
                      image: AssetImage('assets/images/BG Asset.png'),
                      fit: BoxFit.cover,
                      opacity: 0.15,
                    ),
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(18),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      restaurant.image,
                      height: 80,
                      width: 80,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                // Heart button
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: const Icon(
                      CupertinoIcons.heart,
                      size: 16,
                      color: Color(0xFFFF6B35),
                    ),
                  ),
                ),
              ],
            ),

            // Info
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurant.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1A1A1A),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      const Icon(
                        CupertinoIcons.car_detailed,
                        size: 11,
                        color: Color(0xFFFF6B35),
                      ),
                      const SizedBox(width: 3),
                      Expanded(
                        child: Text(
                          restaurant.delivery,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            color: Color(0xFF888888),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(
                        CupertinoIcons.clock,
                        size: 11,
                        color: Color(0xFFFF6B35),
                      ),
                      const SizedBox(width: 3),
                      Text(
                        restaurant.time,
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          color: Color(0xFF888888),
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        CupertinoIcons.star_fill,
                        size: 11,
                        color: Colors.amber,
                      ),
                      const SizedBox(width: 2),
                      Text(
                        '${restaurant.rating}',
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1A1A1A),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
