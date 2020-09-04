import 'package:flutter/material.dart';
import 'package:flutter_app/leilao.dart';
import './column.dart';
import './home.dart';
import './BtRow.dart';
import 'doubleCounters.dart';
void main() {
  runApp(App());
}

class App extends StatefulWidget {
    App({Key key}) : super(key:key);

    @override
  _AppState createState() => _AppState();
  }

class _AppState extends State<App> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        title: 'Flutter Demo',
        theme: ThemeData.from(colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.lightGreen))
        ,
        home: Home(),
        initialRoute: '/home',
        routes: {
          '/home': (context) => Home(),
          '/column': (context) => Col(),
          '/row': (context) => BtRow(),
          '/dbCounter': (context) => DbCounter(),
          '/leilao': (context) => Leilao()
        }
    );
  }
}