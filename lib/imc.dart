import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class imc extends StatefulWidget{
  static const routeName = '/imc';
  imc({Key key}) : super(key: key);

  final String title = "imc";
  @override
  imcState createState() =>  imcState();
}
class  imcState extends State<imc> {


  double altura = 0;
  double peso = 0;
  double _resImc = 0;

   calcImc(double a, double p){
    setState(() {
      _resImc = (p/(a*a));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Text("Digite a altura:"),
          TextField(
              onChanged: (text){
                altura = double.parse(text);
              },
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '0'
            ),
          ),
            Text("Digite o peso:"),
        TextField(
          onChanged: (text){
            peso = double.parse(text);
          },
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '0'
          ),
        ),
            Text("Seu IMC é : $_resImc"),

            RaisedButton(
                child: Text("Calcular"),
                onPressed: (){calcImc(altura,peso);},
            ),
          ],

        ),
      ),
    );
  }


}
