import 'package:counter_two_teams/model/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TeamB extends StatelessWidget {
  const TeamB({super.key});

  @override
  Widget build(BuildContext context) {
    final counterB = Provider.of<Counter>(context);

    return Column(
      children: [
        const Text(
          "Team B",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
        Text(
          counterB.numberB.toString(),
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
            counterB.incrementB1(1);
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
            counterB.incrementB1(2);
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
            counterB.incrementB1(3);
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
