import 'package:flutter/material.dart';
import '../widgets/product_item.dart';
import  'package:flutter_travel_ui_starter/providers/product_provider.dart';
import 'package:provider/provider.dart';


class ProductsOverviewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductProvider>(context);
    final products = productsData.items;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Procuct overview screen'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: products.length,
        itemBuilder: (context, index) => ProductItem(
          id: products[index].id,
          title: products[index].name,
          imageUrl: products[index].imageUrl,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
      ),
    );
  }
}
