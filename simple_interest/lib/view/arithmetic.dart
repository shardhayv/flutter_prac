import 'package:flutter/material.dart';
import 'package:simple_interest/model/arithmetic.dart';

// final -> run time
// const - > compile
class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  int first = 0;
  int second = 0;
  int result = 0;
  late Arithmetic arithmetic;
  void add() {
    arithmetic = Arithmetic();
    setState(() {
      result = arithmetic.add(first, second);
    });
  }

  void sub() {
    arithmetic = Arithmetic();
    setState(() {
      result = arithmetic.sub(first, second);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithemtic'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  first = int.parse(value);
                },
                decoration: InputDecoration(
                  hintText: 'Enter first no',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  second = int.parse(value);
                },
                decoration: InputDecoration(
                  labelText: 'Enter second no',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      add();
                    });
                  },
                  child: const Text('ADD'),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      sub();
                    });
                  },
                  child: const Text('SUB'),
                ),
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
