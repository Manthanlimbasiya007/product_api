import 'package:flutter/material.dart';
import 'package:product_api/screen/provider/product_provider.dart';
import 'package:product_api/screen/view/product_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ProductProvider(),
      )
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => homescreen(),
      },
    ),
  ));
}