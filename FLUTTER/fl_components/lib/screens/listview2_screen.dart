import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Wolfteam',
    'Counter Strike',
    'GTA Vice City',
    'Kakarot',
    'FIFA 23',
    'FLUTTER',
    'DART',
    'NODE JS'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(
  //         title: const Text('Listview2Screen'),
  //         centerTitle: true,
  //       ),
  //       body: ListView.separated(
  //           itemCount: options.length,
  //           itemBuilder: (context, index) => Text(options[index]),
  //           separatorBuilder: (_, __) => const Divider()));
  // }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview2Screen'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
             ...options.map(
              (game) => ListTile( title: Text(game),
              trailing: const Icon (Icons.arrow_forward_ios_outlined),)).toList()
          ],
    )
    );
  }
}
