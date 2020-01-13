import 'package:flutter/foundation.dart';

class Product {
  final String id;
  final String name;
  final double price;
  final double fullPrice;
  final String imageUrl;
  final String pickUpTime;
  final int count;
  bool isFavorite;

  Product(
      {@required this.id,
      @required this.name,
      @required this.price,
      @required this.fullPrice,
      @required this.imageUrl,
      @required this.pickUpTime,
      @required this.count,
       this.isFavorite});
}
