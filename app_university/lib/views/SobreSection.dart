import 'package:flutter/material.dart';

class SobreSection extends StatelessWidget {
  const SobreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.blue,
            child: Icon(Icons.business, size: 50, color: Colors.white),
          ),
          const SizedBox(height: 20),
          const Text(
            'Sobre a Vou de Voo',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          const Text(
            'Nossa missão é conectar viajantes às belezas naturais do Brasil e do mundo. '
                'Com mais de 10 anos de experiência, oferecemos os melhores roteiros '
                'personalizados para você e sua família.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
          const SizedBox(height: 30),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.check_circle, color: Colors.green),
            title: Text('Roteiros Criativos'),
          ),
          const ListTile(
            leading: Icon(Icons.check_circle, color: Colors.green),
            title: Text('Segurança Garantida'),
          ),
        ],
      ),
    );
  }
}