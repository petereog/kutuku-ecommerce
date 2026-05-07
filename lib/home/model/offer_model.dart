import 'package:flutter/material.dart';

class OfferModel {
  final String name;
  final double rating;
  final String delivery;
  final double price;
  final Color color;
  final String image;

  OfferModel({
    required this.name,
    required this.rating,
    required this.delivery,
    required this.price,
    required this.color,
    required this.image,
  });
}
