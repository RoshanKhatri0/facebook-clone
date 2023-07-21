import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/screens/counter_state.dart';

class CounterAppWithRiverpod extends ConsumerWidget {
  const CounterAppWithRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final person = ref.watch(counterstate).namePerson;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterstate).addPerson("Roshan");
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Counter ref"),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) => Text(
            person[index],
            style: TextStyle(fontSize: 25),
          ),
          itemCount: person.length,
        ),
      ),
    );
  }
}
