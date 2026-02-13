import 'package:flutter/material.dart';

class PacotesSection extends StatelessWidget {
  const PacotesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Pacotes Promocionais',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        _buildPackageCard('Final de Semana em Maldivas', 'R\$ 16.999,00', Icons.beach_access),
        _buildPackageCard('Trilha da Indonésia', 'R\$ 9.898,00', Icons.terrain),
        _buildPackageCard('Tour Gastronômico', 'R\$ 450,00', Icons.restaurant),
      ],
    );
  }

  Widget _buildPackageCard(String title, String price, IconData icon) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue, size: 40),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: const Text('Inclui guia e transporte local'),
        trailing: Text(price, style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
      ),
    );
  }
}