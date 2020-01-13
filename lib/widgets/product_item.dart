import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem({this.id, this.title, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetailScreen.routeName,
                arguments: id,

            );
          },
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Theme.of(context).primaryColor.withAlpha(100),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          leading: IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
