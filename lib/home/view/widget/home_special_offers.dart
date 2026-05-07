import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kutuku/home/view_model/home_view_model.dart';
import 'package:kutuku/home/model/offer_model.dart';

class HomeSpecialOffers extends StatelessWidget {
  const HomeSpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder: (context, viewModel, child) {
        return SizedBox(
          height: 152,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(right: 4),
            itemCount: viewModel.offers.length,
            itemBuilder: (context, index) {
              final OfferModel offer = viewModel.offers[index];
              final Color bgColor = offer.color;

              return Container(
                width: 270,
                margin: const EdgeInsets.only(right: 14),
                decoration: BoxDecoration(
                  color: bgColor,
                  image: const DecorationImage(
                    image: AssetImage('assets/images/BG Asset.png'),
                    fit: BoxFit.cover,
                    opacity: 0.2,
                  ),
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                      color: bgColor.withValues(alpha: 0.38),
                      blurRadius: 18,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: Stack(
                  clipBehavior: Clip.hardEdge,
                  children: [
                    // Decorative circles
                    Positioned(
                      right: -24,
                      bottom: -24,
                      child: Container(
                        width: 110,
                        height: 110,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.1),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 30,
                      top: -36,
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.07),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),

                    // Food image
                    Positioned(
                      right: -10,
                      top: 0,
                      bottom: 0,
                      child: Center(
                        child: Image.asset(
                          offer.image,
                          width: 150,
                          height: 150,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),

                    // Content
                    Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Rating row
                          Row(
                            children: [
                              const Icon(
                                CupertinoIcons.star_fill,
                                color: Colors.amber,
                                size: 13,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '${offer.rating}',
                                style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),

                          // Name
                          Text(
                            offer.name,
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(height: 4),

                          // Delivery info
                          Row(
                            children: [
                              const Icon(
                                CupertinoIcons.car_detailed,
                                color: Colors.white70,
                                size: 12,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                offer.delivery,
                                style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white70,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),

                          // Buy Now + price
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 14,
                                    vertical: 7,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    'Buy Now',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: bgColor,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                '\$${offer.price.toStringAsFixed(2)}',
                                style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
