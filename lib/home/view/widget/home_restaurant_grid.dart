import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kutuku/home/view_model/home_view_model.dart';
import 'package:kutuku/home/model/restaurant_model.dart';
import 'home_restaurant_card.dart';

class HomeRestaurantGrid extends StatelessWidget {
  const HomeRestaurantGrid({super.key});

  @override
  Widget build(BuildContext context) {
    // Senior Tip: Use Selector instead of Consumer to limit rebuilds to only when
    // the restaurants list changes. This prevents rebuilds when other unrelated
    // data in HomeViewModel changes (e.g., selectedCategoryIndex).
    return Selector<HomeViewModel, List<RestaurantModel>>(
      selector: (_, viewModel) => viewModel.restaurants,
      builder: (context, restaurants, _) {
        // Handle empty state gracefully
        if (restaurants.isEmpty) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 32),
              child: Text(
                'No restaurants available',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Poppins',
                  fontSize: 14,
                ),
              ),
            ),
          );
        }

        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: restaurants.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 14,
            mainAxisSpacing: 14,
            childAspectRatio: 0.80,
          ),
          itemBuilder: (context, index) {
            return HomeRestaurantCard(restaurant: restaurants[index]);
          },
        );
      },
    );
  }
}
