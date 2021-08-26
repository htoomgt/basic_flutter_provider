import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/providers/CounterProvider.dart';
import 'package:provider_tutorial/providers/ShoppingCartProvider.dart';
import 'package:provider_tutorial/screens/HomeScreen.dart';
import 'package:provider_tutorial/screens/SecondScreen.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => CounterProvider()),
      ChangeNotifierProvider(create: (_) => ShoppingCartProvider()),
    ],
      child : MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => HomeScreen(),
        '/second' :(context) => SecondScreen(),
      }
    );
  }
}
