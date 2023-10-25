import 'package:flutter/material.dart';
// Uncomment lines 3 and 6 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Catedral São João Bastista',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Rio do Sul, Santa Catarina - Brasil',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;
    Color cor2 = Colors.orange;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'Ligar'),
        _buildButtonColumn(cor2, Icons.message, 'Mensagem'),
        _buildButtonColumn(cor2, Icons.local_library, 'Rota'),
        _buildButtonColumn(color, Icons.share, 'Comartilhar'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Após a inauguração da pedra fundamental, em 1949, a Catedral São João Batista começou a ser construída em 1950. \nA construção neogótica, de localização elevada e privilegiada no centro da cidade, foi concluída em 1957 e forma um conjunto harmonioso com o Colégio Dom Bosco, Praça Ermembergo Pellizzetti e o monumento do Cristo.'
        'Em seu interior, a Catedral ostenta técnicas construtivas expressivas e singulares, mão-de-obra apurada, nichos que contêm imagens sacras numa proporção estudada e perfeita. \nAbóbadas, colunas, altar principal imponente decorado em mármore, pinturas nas paredes e teto com variadas luminárias.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Catedral São João Batista',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Catedral São João Batista'),
        ),
        body: ListView(
          children: [
            /*Image.asset(
              'images/catedral.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),*/
            Image.network(
                'https://biblioteca.ibge.gov.br/visualizacao/fotografias/GEBIS%20-%20RJ/sc50719.jpg'),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
