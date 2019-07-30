import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/counter.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: const Center(
        child: CounterLabel(),
      ),
      floatingActionButton: const IncrementCounterButton(),
    );
  }
}

class CounterLabel extends StatelessWidget {
  const CounterLabel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('You have pushed the button this many times:'),
        Consumer<Counter>(
          builder: (context, counter, child) {
            return Text('${counter.getCounter()}',
                style: Theme.of(context).textTheme.display1);
          },
        ),
      ],
    );
  }
}

class IncrementCounterButton extends StatelessWidget {
  const IncrementCounterButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Provider.of<Counter>(context, listen: false).increment();
      },
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}
