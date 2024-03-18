import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/counter.dart';

class TeamA extends StatelessWidget {
  const TeamA({super.key});

  @override
  Widget build(BuildContext context) {
    final counterA = Provider.of<Counter>(context);

    return Column(
      children: [
        const Text(
          "Team A",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
        Text(
          counterA.numberA.toString(),
          style: TextStyle(
            fontSize: 130,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: const LinearBorder(),
            minimumSize: const Size(150, 50),
          ),
          onPressed: () {
            counterA.incrementA1(1);
            print(counterA.numberA);
          },
          child: const Text(
            "Add 1 Point",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        /////////////////////////////
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: const LinearBorder(),
            minimumSize: const Size(150, 50),
          ),
          onPressed: () {
            counterA.incrementA1(2);
            print(counterA.numberA);
          },
          child: const Text(
            "Add 2 Point",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        /////////////////////////////////
        const SizedBox(
          height: 8,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: const LinearBorder(),
            minimumSize: const Size(150, 50),
          ),
          onPressed: () {
            counterA.incrementA1(3);
            print(counterA.numberA);
          },
          child: const Text(
            "Add 3 Point",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
