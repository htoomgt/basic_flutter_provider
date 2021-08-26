import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/providers/CounterProvider.dart';
import 'package:provider_tutorial/providers/ShoppingCartProvider.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example App (${context.watch<CounterProvider>().count})'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${context.watch<ShoppingCartProvider>().count}'),
            Text('${context.watch<ShoppingCartProvider>().cart}')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: Key('addItem_floatingActionButton'),
        onPressed: () => context.read<ShoppingCartProvider>().addItem('Bread'),
        tooltip: 'Add Item',
        child: Icon(Icons.add),
      ),
    );
  }
}