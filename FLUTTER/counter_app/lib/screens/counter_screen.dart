import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //variable, propiedad
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreem'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Number de clicks', style: fontSize30),
            Text(
              '$counter',
              style: fontSize30,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              child: const Icon(Icons.exposure_minus_1_outlined),
              onPressed: () => setState(() => counter--)),
          FloatingActionButton(
              child: const Icon(Icons.restart_alt),
              onPressed: () => setState(() => counter = 0)),
          FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () => setState(() => counter++))
        ],
      ),
    );
  }
}
