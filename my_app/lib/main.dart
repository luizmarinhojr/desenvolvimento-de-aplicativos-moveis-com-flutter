import 'package:flutter/material.dart';

void main() {
  return runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
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
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildActionColumn(Icons.call, 'Call'),
                _buildActionColumn(Icons.directions, 'Route'),
                _buildActionColumn(Icons.share, 'Share'),
              ],
            ),
          ),

          Divider(),

          Expanded(
            child: ListView(
              children: const [
                ListTile(
                  title: Text('Flutter'),
                  subtitle: Text('Tudo é um widget'),
                  leading: Icon(Icons.flash_on, color: Colors.amber),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  title: Text('Dart'),
                  subtitle: Text('É fácil'),
                  leading: Icon(Icons.mood, color: Colors.blue),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  title: Text('Firebase'),
                  subtitle: Text('Combina com Flutter'),
                  leading: Icon(Icons.whatshot, color: Colors.orange),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method para criar as colunas de ação da Microatividade 3
  Column _buildActionColumn(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.blue),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}