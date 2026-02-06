import 'package:flutter/material.dart';

void main() {
  return runApp(
      MaterialApp(
        home: StatelessWidgetExemplo("Olá Flutter - MaterialApp"),
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
      body: Center(
        child: Text('Macoratti .net'),
      ),
    );
  }
}