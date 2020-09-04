import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Col extends StatefulWidget {
  static const routeName = '/Col';
  Col({Key key}) : super(key: key);

  final String title = "Coluna";
  @override
  _ColState createState() => _ColState();
}

class _ColState extends State<Col> {
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
      floatingActionButton: SpeedDial(

        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            onTap: _incrementCounter,
            label: "Increment",
            child: Icon(Icons.add),
          ),
          SpeedDialChild(
            onTap: _incrementCounter,
            label: "Decrement",
            child: Icon(Icons.remove),
          )
        ],
      ),

      /*
      Col(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
        SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          onPressed: _decrement,
          tooltip: 'Decrement',
          child: Icon(Icons.remove),
        )],
      )
       */
    );
  }
}
