import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/screens/home_page_screen.dart';
import 'package:provider_example/screens/my_home_page_screen.dart';
import 'counter.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: ChangeNotifierProvider(
      //   builder: (_) => Counter(0),
      //   child: MyHomePage(title: 'Provider Example',),
      // ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            builder: (_) => Counter(0),
          )
        ],
        child: Consumer<Counter>(
          builder: (context, counter, _) {
            return HomePageScreen();
          },
        ),
      ),
    );
  }

}
