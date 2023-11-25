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
    'NODE JS',
    'devops'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 2'),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, i) => ListTile(
              title: Text(options[i]),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {}),
          separatorBuilder: (context, index) => const Divider(),
        ));
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(
  //         title: const Text('Listview2Screen'),
  //         centerTitle: true,
  //       ),
  //       body: ListView(
  //         children: [
  //           ...options
  //               .map((game) => ListTile(
  //                     title: Text(game),
  //                     trailing: const Icon(Icons.arrow_forward_ios_outlined),
  //                   ))
  //               .toList()
  //         ],
  //       ));
  // }
}
