import 'package:counter_two_teams/widgets/resetButton.dart';
import 'package:counter_two_teams/widgets/teamA.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/counter.dart';
import 'widgets/teamB.dart';

void main() {
  runApp(const Basket());
}

class Basket extends StatefulWidget {
  const Basket({super.key});

  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  //////// Variables ////////////////
  int teamA = 0;
  int teamB = 0;
  ////////////////////////////
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Counter"),
          backgroundColor: Colors.blue,
        ),
        body: ChangeNotifierProvider<Counter>(
          create: (context) => Counter(),
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TeamA(),

                  ///////////////////// Vertical Divider /////////////////////////
                  const SizedBox(
                    height: 450,
                    child: VerticalDivider(
                      thickness: 5,
                      color: Color(0Xffe3e2e4),
                    ),
                  ),

                  //////////////////////// Team B ////////////////////////////////
                  TeamB(),
                ],
              ),
              const Spacer(
                flex: 3,
              ),
              ////////////////////// Reset Button ///////////////////////////////
              ResetButton(),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
