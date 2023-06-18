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
      floatingActionButton: const CustomFloatingActions(),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  const CustomFloatingActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        FloatingActionButton(
            child: Icon(Icons.exposure_minus_1_outlined), onPressed: null),
        FloatingActionButton(child: Icon(Icons.restart_alt), onPressed: null),
        FloatingActionButton(child: const Icon(Icons.add), onPressed: null)
      ],
    );
  }
}
