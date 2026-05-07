import 'package:flutter/material.dart';
import 'package:kutuku/home/model/category_model.dart';
import 'package:kutuku/home/model/offer_model.dart';
import 'package:kutuku/home/model/restaurant_model.dart';

class HomeViewModel extends ChangeNotifier {
  int _selectedCategoryIndex = 2;
  int _selectedNavIndex = 0;

  int get selectedCategoryIndex => _selectedCategoryIndex;
  int get selectedNavIndex => _selectedNavIndex;

  final List<CategoryModel> _categories = [
    CategoryModel(name: 'Burger', image: 'assets/images/Fresh beef burger isolated -1 1.png'),
    CategoryModel(name: 'Donuts', image: 'assets/images/donut.png'),
    CategoryModel(name: 'Pizza', image: 'assets/images/17929 1.png'),
    CategoryModel(name: 'Hot Dog', image: 'assets/images/35106 1.png'),
    CategoryModel(name: 'Pasta', image: 'assets/images/wepik-export-20231123125826rxSl 1.png'),
  ];

  List<CategoryModel> get categories => _categories;

  final List<OfferModel> _offers = [
    OfferModel(
      name: 'Burger King',
      rating: 4.5,
      delivery: 'Free delivery',
      price: 22.00,
      color: const Color(0xFFFF6B6B),
      image: 'assets/images/Fresh beef burger isolated -1 2.png',
    ),
    OfferModel(
      name: 'Pizza Palace',
      rating: 4.7,
      delivery: 'Free delivery',
      price: 18.00,
      color: const Color(0xFF4ECDC4),
      image: 'assets/images/17929 1.png',
    ),
  ];

  List<OfferModel> get offers => _offers;

  final List<RestaurantModel> _restaurants = [
    RestaurantModel(
      name: 'Seafood maki sushi',
      rating: 4.5,
      time: '45 mins',
      delivery: 'Free delivery',
      image: 'assets/images/Mask Group.png',
      bg: const Color(0xFF1C2B3A),
    ),
    RestaurantModel(
      name: 'Seafood pasta',
      rating: 4.3,
      time: '30 mins',
      delivery: 'Free delivery',
      image: 'assets/images/35106 1.png',
      bg: const Color(0xFF3B2314),
    ),
    RestaurantModel(
      name: 'Burger House',
      rating: 4.6,
      time: '25 mins',
      delivery: '\$1.99 delivery',
      image: 'assets/images/Fresh beef burger isolated -1 1 (1).png',
      bg: const Color(0xFF1A3A1A),
    ),
    RestaurantModel(
      name: 'Taco Fiesta',
      rating: 4.4,
      time: '35 mins',
      delivery: 'Free delivery',
      image: 'assets/images/wepik-export-20231123125826rxSl 1.png',
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
