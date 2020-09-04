import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class DbCounter extends StatefulWidget {
  static const routeName = '/dbCounter';
  DbCounter({Key key}) : super(key: key);

  final String title = "Contadores";
  @override
  DbCounterState createState() =>  DbCounterState();
}

class  DbCounterState extends State<DbCounter> {
  int _counter = 0;
  int _counter2 = 0;


  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }
  void _incrementCounter2() {
    setState(() {

      _counter2++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          title: Text(widget.title),
        ),
        body: Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                'You have pushed the button 2 this many times:',
              ),
              Text(
                '$_counter2',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: null,
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              heroTag: null,
              onPressed: _incrementCounter2,
              tooltip: 'Increment2',
              child: Icon(Icons.add),
            )],
        )
    );
  }
}
