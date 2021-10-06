import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController num1 = new TextEditingController();
  TextEditingController num2 = new TextEditingController();
  String result = '0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sumar dos Números'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // Primer campo de Entrada
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ingresa el 1er Número',
                  hintText: 'Ingresa el 2do Número',
                ),
                controller: num1,
              ),
            ),
            //Segundo campo de Entrada
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ingresa el 1er Número',
                  hintText: 'Ingresa el 2do Número',
                ),
                controller: num2,
              ),
            ),
            ElevatedButton(
              //color: Colors.teal,
              child: Text('SUMAR'),
              onPressed: () {
                setState(() {
                  int sum = int.parse(num1.text) + int.parse(num2.text);
                  result = sum.toString();
                });
              },
            ),
            SizedBox(height: 15),
            new Text(
              result,
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
