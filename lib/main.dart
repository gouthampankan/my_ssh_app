import 'package:flutter/material.dart';
import 'input_data.dart';
import 'ssh_commands.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var sshcommandNumber;

  final _hintTextEntry = [
    "Enter the IP Address",
    "Enter the Username",
    "Enter the Password",
  ];

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("AUXI CONTROL SYSTEM"),
          ),
          body: ListView(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      InputData(_hintTextEntry),
                      SshCommands(),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}