import 'package:flutter/material.dart';
import '../model/category_model.dart';
import '../model/offer_model.dart';
import '../model/restaurant_model.dart';

class HomeViewModel extends ChangeNotifier {
  int _selectedCategoryIndex = 2; // Pizza selected by default
  int _selectedNavIndex = 0;

  int get selectedCategoryIndex => _selectedCategoryIndex;
  int get selectedNavIndex => _selectedNavIndex;

  final List<CategoryModel> _categories = [
    CategoryModel(name: 'Burger', emoji: '🍔'),
    CategoryModel(name: 'Donuts', emoji: '🍩'),
    CategoryModel(name: 'Pizza', emoji: '🍕'),
    CategoryModel(name: 'Hot Dog', emoji: '🌭'),
    CategoryModel(name: 'Pasta', emoji: '🍝'),
  ];

  List<CategoryModel> get categories => _categories;

  final List<OfferModel> _offers = [
    OfferModel(
      name: 'Burger King',
      rating: 4.5,
      delivery: 'Free delivery',
      price: 22.00,
      color: const Color(0xFFFF6B6B),
      emoji: '🍔',
    ),
    OfferModel(
      name: 'Pizza Palace',
      rating: 4.7,
      delivery: 'Free delivery',
      price: 18.00,
      color: const Color(0xFF4ECDC4),
      emoji: '🍕',
    ),
  ];

  List<OfferModel> get offers => _offers;

  final List<RestaurantModel> _restaurants = [
    RestaurantModel(
      name: 'Seafood maki sushi',
      rating: 4.5,
      time: '45 mins',
      delivery: 'Free delivery',
      emoji: '🍣',
      bg: const Color(0xFF1C2B3A),
    ),
    RestaurantModel(
      name: 'Seafood pasta',
      rating: 4.3,
      time: '30 mins',
      delivery: 'Free delivery',
      emoji: '🦐',
      bg: const Color(0xFF3B2314),
    ),
    RestaurantModel(
      name: 'Burger House',
      rating: 4.6,
      time: '25 mins',
      delivery: '\$1.99 delivery',
      emoji: '🍔',
      bg: const Color(0xFF1A3A1A),
    ),
    RestaurantModel(
      name: 'Taco Fiesta',
      rating: 4.4,
      time: '35 mins',
      delivery: 'Free delivery',
      emoji: '🌮',
      bg: const Color(0xFF3A1A2A),
    ),
  ];

  List<RestaurantModel> get restaurants => _restaurants;

  void selectCategory(int index) {
    _selectedCategoryIndex = index;
    notifyListeners();
  }

  void selectNav(int index) {
    _selectedNavIndex = index;
    notifyListeners();
  }
}
