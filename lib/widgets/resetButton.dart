import 'package:counter_two_teams/model/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: const LinearBorder(),
          maximumSize: const Size(150, 50),
        ),
        onPressed: () {
          counter.reset();
        },
        child: const Text(
          "Reset",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
