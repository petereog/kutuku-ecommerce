import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kutuku/home/view_model/home_view_model.dart';
import 'package:kutuku/home/model/restaurant_model.dart';
import 'home_restaurant_card.dart';

class HomeRestaurantGrid extends StatelessWidget {
  const HomeRestaurantGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder: (context, viewModel, child) {
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: viewModel.restaurants.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 14,
            mainAxisSpacing: 14,
            childAspectRatio: 0.80,
          ),
          itemBuilder: (context, index) {
            final RestaurantModel restaurant = viewModel.restaurants[index];
            return HomeRestaurantCard(restaurant: restaurant);
          },
        );
      },
    );
  }
}
