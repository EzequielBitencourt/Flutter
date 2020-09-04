import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Tela Principal"),
      ),
      body:Center(
          child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          RaisedButton(
          child: Text("Column"),
          onPressed: (){Navigator.pushNamed(context, "/column");}
          ),
          RaisedButton(
              child: Text("Row"),
              onPressed: (){Navigator.pushNamed(context, "/row");}
          ),
           RaisedButton(
              child: Text("Double Counters"),
              onPressed: (){Navigator.pushNamed(context, "/dbCounter");}
            ),
            RaisedButton(
                child: Text("Leilao"),
                onPressed: (){Navigator.pushNamed(context, "/leilao");}
            ),
            RaisedButton(
                child: Text("IMC"),
                onPressed: (){Navigator.pushNamed(context, "/imc");}
            ),
        ],
      )),
    );
  }
}
