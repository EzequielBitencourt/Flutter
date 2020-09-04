import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Leilao extends StatefulWidget{
  static const routeName = '/leilao';
  Leilao({Key key}) : super(key: key);

  final String title = "Leilao";
  @override
  LeilaoState createState() =>  LeilaoState();
}

class  LeilaoState extends State<Leilao> {
  int _soma = 0;
  int _bid = 50;

  void _realizaBid(){
    setState(() {
      _soma = _soma + _bid;
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
                'Maximum Bid: $_soma',

              ),
              SizedBox(
                height: 10,
              ),

            ],

          ),

        ),
      floatingActionButton: Container(
        height: 50.0,
        width: 50.0,
        child: FittedBox(
          child: FloatingActionButton(
            heroTag: null,
            onPressed: _realizaBid,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
