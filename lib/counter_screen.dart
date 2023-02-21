// ignore_for_file: avoid_print, library_private_types_in_public_api

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  _CounterScreenState createState() {
    return _CounterScreenState();
  }
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 65,
                height: 30,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle, color: Colors.black),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                      print(counter);
                    });
                  },
                  child: const Text('MINUS'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Text(
                  '$counter',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
              Container(
                width: 65,
                height: 30,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle, color: Colors.black),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                      print(counter);
                    });
                  },
                  child: const Text('Plus'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
