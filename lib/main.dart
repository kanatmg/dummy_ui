import 'package:flutter/material.dart';

//import 'package:flutter_travel_ui_starter/screens/home_screen.dart';
import 'package:flutter_travel_ui_starter/screens/shop_home_screen.dart';
import 'package:flutter_travel_ui_starter/screens/products_overview_screen.dart';
import 'package:flutter_travel_ui_starter/screens/product_detail_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_travel_ui_starter/providers/product_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => ProductProvider(),
      child: MaterialApp(
        title: 'Flutter Travel UI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xFF3EBACE),
          accentColor: Color(0xFFD8ECF1),
          scaffoldBackgroundColor: Color(0xFFF3F5F7),
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
        },
      ),
    );
  }
}
