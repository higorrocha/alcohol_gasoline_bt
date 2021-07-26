import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alcohol or Gasoline"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Image.asset("images/logo.jpg"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text("Find out which fuel is the best choice for your car."),
            ),
            TextField(),
            TextField(),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  onSurface: Colors.orangeAccent,
                  elevation: 5,
                ),
                child: Text("Calculate"),
                onPressed: (){},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
