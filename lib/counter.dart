import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  List<int> numbers = [];

  void onClicked() {
    setState(() {
      numbers.add(numbers.length);
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
            for (var n in numbers) Text('$n'),
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
