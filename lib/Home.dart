import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _controllerAlcohol = TextEditingController();
  TextEditingController _controllerGasoline = TextEditingController();
  String _textResult = "";

  void _calculate(){

    double? priceAlcohol = double.tryParse( _controllerAlcohol.text );
    double? priceGasoline = double.tryParse( _controllerGasoline.text);

    if( priceAlcohol == null || priceGasoline == null){
      setState(() {
        _textResult = "Invalid number! Type number greater then zero and use dotted (.) ";
      });
    }else{
      if((priceAlcohol / priceGasoline) >= 0.7){
        setState(() {
          _textResult = "Use Gasoline! It's better now.";
        });
      }else{
        setState(() {
          _textResult = "Use Alcohol! It's better now.";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Alcohol or Gasoline",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Image.asset("images/logo.jpg"),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Find out which fuel is the best choice for your car.",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Alcohol Price, ex: 2.58"
                ),
                style: TextStyle(
                    fontSize: 16
                ),
                controller: _controllerAlcohol,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Gasoline Price, ex: 5.89"
                ),
                style: TextStyle(
                    fontSize: 16
                ),
                controller: _controllerGasoline,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      onSurface: Colors.orangeAccent,
                      elevation: 5,
                      padding: EdgeInsets.all(15)
                  ),
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  onPressed: _calculate,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  _textResult,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
