import 'package:flutter/material.dart';
import 'package:flutter_application_1/wigets/custom_button.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Functions'),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              icon: const Icon(Icons.refresh_rounded),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCounter',
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text(
                'Click${clickCounter == 1 ? '' : 's'}',
                style: const TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: () => setState(() {
                clickCounter = 0;
              }),
              tooltip: 'Reset',
            ),
            SizedBox(height: 10),
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () => setState(() {
                clickCounter++;
              }),
              tooltip: 'Increment',
            ),
            SizedBox(height: 10),
            CustomButton(
              icon: Icons.exposure_minus_1,
              onPressed: () => setState(() {
                if (clickCounter == 0) return;

                clickCounter--;
              }),
              tooltip: 'Decrement',
            ),
          ],
        ));
  }
}
