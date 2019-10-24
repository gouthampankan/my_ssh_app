import 'package:flutter/material.dart';

class InputData extends StatelessWidget {
  List<String> inputHint;

  InputData(this.inputHint);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          for (var i = 0; i < inputHint.length; i++)
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: inputHint[i],
                ),
              ),
            ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Enter the IP Address",
              ),
            ),
          ),
        ],
      ),
    );
  }
}