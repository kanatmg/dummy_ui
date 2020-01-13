import 'package:flutter/cupertino.dart';

import '../models/product.dart';


class ProductProvider with ChangeNotifier{
  List<Product> _items = [
    Product(
      id: 'p1',
      name: 'Pizza',
      price: 500,
      fullPrice: 7000,
      imageUrl:
      'https://as1.ftcdn.net/jpg/02/12/43/28/500_F_212432820_Zf6CaVMwOXFIylDOEDqNqzURaYa7CHHc.jpg',
      pickUpTime: '22:00',
      count: 7,
    ),
    Product(
      id: 'p2',
      name: 'Burger',
      price: 200,
      fullPrice: 5000,
      imageUrl:
      'https://helpx.adobe.com/content/dam/help/en/stock/how-to/visual-reverse-image-search/jcr_content/main-pars/image/visual-reverse-image-search-v2_intro.jpg',
      pickUpTime: '14:00',
      count: 11,
    ),
    Product(
      id: 'p3',
      name: 'doner',
      price: 1300,
      fullPrice: 9000,
      imageUrl:
      'https://interactive-examples.mdn.mozilla.net/media/examples/grapefruit-slice-332-332.jpg',
      pickUpTime: '02:00',
      count: 20,
    ),
    Product(
      id: 'p4',
      name: 'borsh',
      price: 100,
      fullPrice: 600,
      imageUrl:
      'https://www.hd-freewallpapers.com/latest-wallpapers/desktop-image-of-a-parrot-wallpaper.jpg',
      pickUpTime: '05:00',
      count: 25,
    ),
    Product(
      id: 'p5',
      name: 'Cola',
      price: 200,
      fullPrice: 240,
      imageUrl:
      'https://foxland.fi/demo/wp-content/uploads/sites/4/2013/03/unicorn-wallpaper.jpg',
      pickUpTime: '09:00',
      count: 20,
    ),
    Product(
      id: 'p5',
      name: 'Cola',
      price: 200,
      fullPrice: 240,
      imageUrl:
      'https://foxland.fi/demo/wp-content/uploads/sites/4/2013/03/unicorn-wallpaper.jpg',
      pickUpTime: '09:00',
      count: 20,
    ),
  ];

  List<Product> get items{
    return [..._items];
  }

  void addProducts(){
//    _items.add(value);
    notifyListeners();
  }
}