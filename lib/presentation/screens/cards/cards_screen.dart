import 'package:flutter/material.dart';

final cards = <Map<String, dynamic>>[
  {'Elevated': 0.0, 'label': 'Elevated 0'},
  {'Elevated': 1.0, 'label': 'Elevated 1'},
  {'Elevated': 2.0, 'label': 'Elevated 2'},
  {'Elevated': 3.0, 'label': 'Elevated 3'},
  {'Elevated': 4.0, 'label': 'Elevated 4'},
  {'Elevated': 5.0, 'label': 'Elevated 5'},
];

class CardsScreen extends StatelessWidget {
  static const String name = 'cards_screen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cards Screen")),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map(
            (card) =>
                _CardType1(elevation: card['Elevated'], label: card['label']),
          ),
          ...cards.map(
            (card) =>
                _CardType2(elevation: card['Elevated'], label: card['label']),
          ),
          ...cards.map(
            (card) =>
                _CardType3(elevation: card['Elevated'], label: card['label']),
          ),
          ...cards.map(
            (card) =>
                _CardType4(elevation: card['Elevated'], label: card['label']),
          ),
          SizedBox(height: 50,)
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType1({required this.elevation, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert_outlined),
              ),
            ),
            Align(alignment: Alignment.topLeft, child: Text(label)),
          ],
        ),
      ),
    );
  }
}

class _CardType2 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType2({required this.elevation, required this.label});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(12)),
        side: BorderSide(color: colors.outline),
      ),
      elevation: elevation,
      child: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert_outlined),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('$label - outline'),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardType3 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType3({required this.elevation, required this.label});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      color: colors.onSurfaceVariant,
      elevation: elevation,
      child: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert_outlined),
              ),
            ),
            Align(alignment: Alignment.topLeft, child: Text('$label - filled')),
          ],
        ),
      ),
    );
  }
}

class _CardType4 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType4({required this.elevation, required this.label});

  @override
  Widget build(BuildContext context) {

    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      child: Stack(
        children: [
          Image.network(
            'https://picsum.photos/id/${elevation.toInt()}/600/350',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
      
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration( 
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12)),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert_outlined),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
