import 'dart:io';
import 'dart:convert';

main(){
  var numbers  = [1,2,3,4,7,5,6,9];

  numbers.add(7);
  print(numbers);
  print(numbers.length);
  numbers.removeLast();
  print(numbers);
  numbers.addAll([2,3,4]);
  print(numbers);
  numbers.removeAt(1);
  print(numbers);
  numbers.setRange(1, 3, [8,6]);
  print(numbers);
  numbers.sort();
  print(numbers);
  numbers.insert(1, 90);
  print(numbers);
  numbers.remove(90);
  print(numbers);
  print(numbers.sublist(3));
  print(numbers.sublist(3, 6));
  print(numbers.indexOf(4));
  numbers.insertAll(2, [0,0]);
  print(numbers);
  numbers.removeRange(1, 3);
  print(numbers);
  numbers.replaceRange(1, 3, [0,0,0]);
  print(numbers);
  print(numbers.getRange(1, 3));
  print(numbers.reversed);
  print(numbers);
  print(numbers.asMap());
  numbers.shuffle();
  print(numbers);
  print(numbers.toString());
  numbers.map((f) => print("as $f"));
  print(numbers.isNotEmpty);
  numbers.toList();
  print(numbers.isEmpty);
  print(numbers.cast());
  numbers.clear();
}