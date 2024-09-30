import 'package:flutter/material.dart';
import 'register_page.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'detail_order_page.dart';

void main() {
  runApp(FoodApp());
}

class FoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodApp',
      theme: ThemeData(primaryColor: Colors.purple),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => HomePage(username: ModalRoute.of(context)!.settings.arguments as String),
        '/detail': (context) => DetailOrderPage(),
      },
    );
  }
}
