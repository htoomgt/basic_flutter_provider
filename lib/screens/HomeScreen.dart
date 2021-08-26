import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/providers/CounterProvider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : Text('Provider Example App ${context.watch<CounterProvider>().count}'),
      ),
      body : Center(
        child : Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You pushed the button this many times : '),
            Count(),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/second');
                },
                child: Text("Launch Screen")
            )
          ],
        )
      ),
      floatingActionButton: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
            heroTag: "btn1",
            onPressed: () => context.read<CounterProvider>().decrement(),
            tooltip: 'Decrement',
            child : Icon(Icons.remove)
        ),
        SizedBox( width: 10.0,),
        FloatingActionButton(
            heroTag: "btn2",
            onPressed: () {
              context.read<CounterProvider>().reset();
            },
            tooltip: 'Reset',
            child : Icon(Icons.exposure_zero),
        ),
        SizedBox( width: 10.0,),
        FloatingActionButton(
          heroTag: "btn3",
          onPressed: () {
            context.read<CounterProvider>().increment();
          },
          tooltip: 'Increment',
          child : Icon(Icons.add),
        ),

      ]
        ,),
    );
  }
}

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('${context.watch<CounterProvider>().count}',
      key: Key('counterState'),
      style : Theme.of(context).textTheme.headline4
    );
  }
}

