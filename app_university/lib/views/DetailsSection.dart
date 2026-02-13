import 'package:flutter/material.dart';

class DetailsSection extends StatelessWidget {
  final Map<String, String> destination;

  const DetailsSection({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(destination['name']!),
      ),
      body: ListView(
        children: [
          Image.asset(
            destination['img']!,
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  destination['name']!,
                  style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Text(
                  destination['location']!,
                  style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                ),
                const Divider(height: 40),
                const Text(
                  'Descrição Detalhada',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Aqui você pode adicionar informações específicas sobre o destino, '
                      'como pontos turísticos próximos, dicas de viagem e curiosidades locais. '
                      'Como você mora em Maricá, aqui poderia estar a história da Gruta do Spar ou '
                      'detalhes sobre a Orla de Araçatiba.',
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}