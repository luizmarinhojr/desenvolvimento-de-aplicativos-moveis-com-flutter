import 'package:flutter/material.dart';

void main() {
  return runApp(
      MaterialApp(
        home: StatelessWidgetExemplo("Olá Flutter - MaterialApp")
      )
  );
}

class StatelessWidgetExemplo extends StatelessWidget {
  final String _appBarTitle;
  const StatelessWidgetExemplo(this._appBarTitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: <Widget>[Icon(Icons.call, color: Colors.blue), Text('Call')],
          ),
          Column(
            children: <Widget>[Icon(Icons.directions, color: Colors.blue), Text('Route')],
          ),
          Column(
            children: <Widget>[Icon(Icons.share, color: Colors.blue), Text('Share')],
          ),
        ],
      )
    );
  }
}