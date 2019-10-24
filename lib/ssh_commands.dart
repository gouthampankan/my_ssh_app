import 'package:flutter/material.dart';

class SshCommands extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SshCommandsState();
  }
}

class SshCommandsState extends State<SshCommands> {
  var sshCommands = 1;
  Map<int, String> commandCodes;

  Map<int, String> get getcommandCodes {
    return commandCodes;
  }

  addBtn() {
    return Expanded(
      child: RaisedButton(
        child: Text("ADD"),
        onPressed: () {
          setState(() {
            sshCommands += 1;
          });
        },
      ),
    );
  }

  delBtn() {
    return Expanded(
      child: RaisedButton(
        child: Text("DELETE"),
        onPressed: () {
          setState(() {
            if (sshCommands > 1) sshCommands -= 1;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Text(
            "COMMANDS",
            textAlign: TextAlign.start,
            textScaleFactor: 2,
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
          for (int i = 1; i <= sshCommands; i++)
            TextFormField(
                decoration: InputDecoration(
                  labelText: "Command $i",
                ),
                onChanged: (text) {
                  setState(() {
                    commandCodes[i] = text;
                  });
                }),
          Row(
            children: <Widget>[
              addBtn(),
              delBtn(),
            ],
          ),
        ],
      ),
    );
  }
}