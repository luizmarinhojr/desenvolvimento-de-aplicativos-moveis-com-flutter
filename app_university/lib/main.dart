import 'package:app_university/views/ContatosSection.dart';
import 'package:app_university/views/DestinosSection.dart';
import 'package:app_university/views/PacotesSection.dart';
import 'package:app_university/views/SobreSection.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VouDeVooApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _sections = <Widget>[
    DestinosSection(),
    PacotesSection(),
    ContatosSection(),
    SobreSection()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vou de Voo App'),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _sections,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Destinos'),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: 'Pacotes'),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: 'Contato'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Sobre'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}