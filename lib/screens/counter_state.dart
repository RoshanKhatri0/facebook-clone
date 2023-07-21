import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterState extends ChangeNotifier {
  List<String> namePerson = [];

  addPerson(String name) {
    namePerson.add(name);
    notifyListeners();
  }
}

final counterstate = ChangeNotifierProvider((ref) => CounterState());
