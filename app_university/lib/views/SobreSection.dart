import 'package:flutter/material.dart';

class SobreSection extends StatelessWidget {
  const SobreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildTitleSection(context),
        _buildDescriptionSection(context)
      ],
    );
  }

  Widget _buildTitleSection(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      height: 200.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 20.0,
            children: [
              Text("Sobre a Vou de Voo", style: TextStyle(fontSize: 40.0, color: Colors.white, fontWeight: FontWeight.w200),),
              Icon(Icons.travel_explore, color: Colors.white, size: 40.0,),
            ],
          ),
        ],
      )
    );
  }
  
  Widget _buildDescriptionSection(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20.0, vertical: 40.0),
      child: Text(
        """
        A Vou de Voo é uma agência de viagens inovadora e dinâmica, concebida para transformar a maneira como as pessoas exploram o mundo. Com um foco profundo na experiência do usuário e na integração tecnológica, a empresa se posiciona como um facilitador de sonhos, removendo a burocracia do planejamento de viagens. Seja para um mochilão de aventura ou uma viagem executiva, a Vou de Voo oferece curadoria personalizada de destinos, passagens e hospedagens, garantindo que cada itinerário seja único. O nome reflete a agilidade e a liberdade que a marca deseja transmitir: o desejo imediato de partir para o novo, com a segurança de quem tem suporte especializado em cada etapa da jornada.

A identidade da marca é pautada pela modernidade, utilizando interfaces limpas e intuitivas que facilitam a navegação até para os viajantes menos experientes. Mais do que apenas vender bilhetes, a Vou de Voo busca criar uma comunidade de entusiastas pelo turismo, oferecendo guias exclusivos e dicas locais que fogem do óbvio. A empresa acredita que viajar é uma forma de expansão pessoal, e por isso investe em tecnologias que otimizam o tempo do cliente, permitindo que ele foque no que realmente importa: a vivência. Com um atendimento humanizado e ferramentas digitais de ponta, a Vou de Voo está pronta para decolar junto com seus clientes rumo aos horizontes mais distantes, sempre com transparência, paixão por descobrir o novo e um compromisso inabalável com a satisfação do viajante.""",
        overflow: TextOverflow.visible,
        textAlign: TextAlign.justify,
      ),
    );
  }
}