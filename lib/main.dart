import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Acampamento na Ilha Flutter',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent, // Alterando cor do texto
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 8)),
          Text(
            'Parque Nacional da Ilha Flutter, Brasil', // Alterando localização
            style: TextStyle(
              color: Colors.grey[600], // Alterando cor do texto
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 8)),
          Row(
            children: [
              const Icon(
                Icons.star,
                color: Colors.amber, // Alterando cor da estrela
              ),
              const Padding(padding: EdgeInsets.only(right: 4)),
              const Text('10', style: TextStyle(color: Colors.amber)), // Alterando cor do número de estrelas
            ],
          ),
        ],
      ),
    );

    Widget _buildButton(String label, IconData icon) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(icon),
            color: Colors.blueAccent,
            onPressed: () {
              // Adicione a funcionalidade aqui
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 14, // Alterando tamanho da fonte
                fontWeight: FontWeight.bold, // Alterando peso da fonte
                color: Colors.blueAccent, // Alterando cor do texto
              ),
            ),
          ),
        ],
      );
    }

    Color color = Colors.blueAccent; // Alterando cor da seção de botões

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButton('Local', Icons.location_on),
        _buildButton('Contato', Icons.call),
        _buildButton('Compartilhar', Icons.share),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'A Ilha Flutter é uma ilha paradisíaca localizada na costa do Brasil. Rodeada por águas cristalinas e praias de areia branca, é o destino perfeito para quem busca relaxamento e aventura. Com uma variedade de atividades, como mergulho, snorkeling e trilhas pela mata, a Ilha Flutter oferece uma experiência inesquecível para os visitantes.',
        softWrap: true,
        style: TextStyle(
          fontSize: 16, // Alterando tamanho da fonte
          color: Colors.black87, // Alterando cor do texto
        ),
      ),
    );

    return MaterialApp(
      title: 'Demonstração de Layout Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Demonstração de Layout Flutter',
            style: TextStyle(fontWeight: FontWeight.bold), // Deixando o título em negrito
          ),
          backgroundColor: Colors.blueAccent, // Alterando cor da barra de aplicativo
        ),
        body: ListView(
          children: [
            Image.asset(
              'Imagens/ilhaFlutter.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
