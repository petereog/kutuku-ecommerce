import 'package:flutter/material.dart';
import 'package:kutuku/home/view/widget/home_bottom_nav.dart';
import 'package:kutuku/home/view/widget/home_category_list.dart';
import 'package:kutuku/home/view/widget/home_greeting.dart';
import 'package:kutuku/home/view/widget/home_restaurant_grid.dart';
import 'package:kutuku/home/view/widget/home_search_bar.dart';
import 'package:kutuku/home/view/widget/home_section_header.dart';
import 'package:kutuku/home/view/widget/home_special_offers.dart';
import 'package:kutuku/home/view/widget/home_top_bar.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // ── Scrollable body ──
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(top: 12, left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    // ── Top Bar ──
                    HomeTopBar(),
                    SizedBox(height: 20),

                    // ── Greeting ──
                    HomeGreeting(),
                    SizedBox(height: 16),

                    // ── Search Bar ──
                    HomeSearchBar(),
                    SizedBox(height: 24),

                    // ── Categories ──
                    HomeCategoryList(),
                    SizedBox(height: 28),

                    // ── Special Offers ──
                    HomeSectionHeader(title: 'Special Offers'),
                    SizedBox(height: 14),
                    HomeSpecialOffers(),
                    SizedBox(height: 28),

                    // ── Restaurants ──
                    HomeSectionHeader(title: 'Restaurants'),
                    SizedBox(height: 14),
                    HomeRestaurantGrid(),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),

            // ── Bottom Nav ──
            HomeBottomNav(),
          ],
        ),
      ),
    );
  }
}
