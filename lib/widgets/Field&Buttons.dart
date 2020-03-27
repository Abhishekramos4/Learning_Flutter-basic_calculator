import 'package:flutter/material.dart';

class FieldNdButton extends StatefulWidget {
  @override
  _FieldNdButtonState createState() => _FieldNdButtonState();
}

class _FieldNdButtonState extends State<FieldNdButton> {
  List<String> ops = [
    "7",
    "8",
    "9",
    "/",
    "4",
    "5",
    "6",
    "x",
    "1",
    "2",
    "3",
    "-",
    ".",
    "0",
    "=",
    "+"
  ];
  String expr = "";

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Card(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(expr),
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(style: BorderStyle.solid))),
                ),
                // TextField(
                //   controller: textController,

                //  )
              ],
            ),
          ),
        ),
        Container(
          height: 400,
          child: Card(
              child: Container(
            padding: EdgeInsets.all(10),
            child: GridView.count(
                crossAxisCount: 4,
                children: ops.map((op) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    child: RaisedButton(
                      color: Theme.of(context).primaryColor,
                      child: Text(op),
                      onPressed: () {
                        var associate = op;
                        print(associate);
                        setState(() {
                          expr += associate;
                          print(expr);
                        });
                      },
                    ),
                  );
                }).toList()),
          )),
        )
      ],
    ));
  }
}
