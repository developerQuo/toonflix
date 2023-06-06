import 'package:flutter/material.dart';
import 'package:toonflix/widgets/calendar_card.dart';

class UIClone extends StatelessWidget {
  const UIClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          clipBehavior: Clip.hardEdge,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/portrait_male.png'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.add,
                            size: 32,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MONDAY 16',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 14,
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          'TODAY',
                          style: TextStyle(fontSize: 36, color: Colors.white),
                        ),
                        Text(
                          ' ∙ ',
                          style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple.shade600),
                        ),
                        Text(
                          '17  18  19  20',
                          style: TextStyle(
                              fontSize: 36,
                              color: Colors.white.withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CalendarCard(
                title: 'DESIGN\nMEETING',
                names: const ['ALEX', 'HELENA', 'NANA'],
                fromHour: '11',
                fromMinute: '30',
                toHour: '12',
                toMinute: '20',
                color: Colors.amberAccent.shade100,
              ),
              const SizedBox(
                height: 10,
              ),
              CalendarCard(
                title: 'DAILY\nPROJECT',
                names: const [
                  'ME',
                  'RICHARD',
                  'CIRY',
                  'ROME',
                  'JULIA',
                  'JACK',
                  'JANE'
                ],
                fromHour: '12',
                fromMinute: '35',
                toHour: '14',
                toMinute: '10',
                color: Colors.deepPurpleAccent.shade200,
              ),
              const SizedBox(
                height: 10,
              ),
              CalendarCard(
                title: 'WEEKLY\nPLANNING',
                names: const ['DEN', 'NANA', 'MARK'],
                fromHour: '15',
                fromMinute: '00',
                toHour: '16',
                toMinute: '30',
                color: Colors.lightGreen.shade400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
