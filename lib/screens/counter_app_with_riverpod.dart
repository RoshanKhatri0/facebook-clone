import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/screens/counter_state.dart';

class CounterAppWithRiverpod extends ConsumerWidget {
  const CounterAppWithRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final person = ref.watch(counterstate).namePerson;
    final namecontroller = TextEditingController();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterstate).addPerson(namecontroller.text);
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Counter ref"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: namecontroller,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Text(
                  person[index],
                  style: TextStyle(fontSize: 25),
                ),
                itemCount: person.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
