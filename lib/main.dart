import 'package:flutter/material.dart';
import './widgets/Field&Buttons.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
        ),
        body: SingleChildScrollView(
          child: FieldNdButton()
        ),
      ),
    );
  }
}
