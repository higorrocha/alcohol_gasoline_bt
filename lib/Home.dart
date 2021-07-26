import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _controllerAlcohol = TextEditingController();
  TextEditingController _controllerGasoline = TextEditingController();

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
                onPressed: (){},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                  "Result",
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
    );
  }
}
