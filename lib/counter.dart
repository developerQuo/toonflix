import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  void onClicked() {
    setState(() {
      counter = counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color(0xFFF4EDDB),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Click Count',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              '$counter',
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            IconButton(
              onPressed: onClicked,
              icon: const Icon(Icons.add_box_rounded),
              iconSize: 40,
            ),
          ],
        ),
      ),
    ));
  }
}
