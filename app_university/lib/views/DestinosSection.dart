import 'package:app_university/views/DetailsSection.dart';
import 'package:flutter/material.dart';

class DestinosSection extends StatefulWidget {
  const DestinosSection({super.key});

  @override
  State<DestinosSection> createState() => _DestinationsPageState();
}

class _DestinationsPageState extends State<DestinosSection> {
  final List<Map<String, String>> _allDestinations = [
    {'name': 'Oeschinen Lake', 'location': 'Kandersteg, Switzerland', 'img': 'images/lake.jpg'},
    {'name': 'Indonésia', 'location': 'Bali, Indonésia', 'img': 'images/indonesia.jpg'},
    {'name': 'Montanhas Tianmen', 'location': 'Zhangjiajie, China', 'img': 'images/olho.jpg'},
  ];
  
  List<Map<String, String>> _foundDestinations = [];

  @override
  void initState() {
    _foundDestinations = _allDestinations;
    super.initState();
  }
  
  void _runFilter(String enteredKeyword) {
    List<Map<String, String>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allDestinations;
    } else {
      results = _allDestinations
          .where((dest) =>
          dest['name']!.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundDestinations = results;
    });
  }

  Widget _buildSearchField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        onChanged: (value) {
          _runFilter(value);
        },
        decoration: InputDecoration(
          hintText: 'Pesquisar destino (ex: Maricá, Suíça...)',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.grey[200],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildSearchField(),
        Expanded(
          child: _foundDestinations.isNotEmpty
              ? ListView.builder(
            itemCount: _foundDestinations.length,
            itemBuilder: (context, index) => _buildDestinationItem(index),
          )
              : const Center(child: Text('Nenhum destino encontrado')),
        ),
      ],
    );
  }

  Widget _buildDestinationItem(int index) {
    final destination = _foundDestinations[index];

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsSection(destination: destination),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(destination['img']!, fit: BoxFit.cover),
            ListTile(
              title: Text(destination['name']!),
              subtitle: Text(destination['location']!),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            ),
          ],
        ),
      ),
    );
  }
}