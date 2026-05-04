import 'package:flutter/material.dart';

class RestaurantModel {
  final String name;
  final double rating;
  final String time;
  final String delivery;
  final String emoji;
  final Color bg;

  RestaurantModel({
    required this.name,
    required this.rating,
    required this.time,
    required this.delivery,
    required this.emoji,
    required this.bg,
  });
}
