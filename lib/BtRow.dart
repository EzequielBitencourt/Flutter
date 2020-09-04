import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class BtRow extends StatefulWidget {
  static const routeName = '/row';
  BtRow({Key key}) : super(key: key);

  final String title = "Linhas";
  @override
   BtRowState createState() =>  BtRowState();
}

class  BtRowState extends State<BtRow> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  void _decrement() {
    setState(() {

      _counter--;
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
            onPressed: _decrement,
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          )],
      )
    );
  }
}
