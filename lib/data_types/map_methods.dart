import 'dart:io';
import 'dart:convert';

main(){
  Map map = {1: 'ONE', 2: 'TWO', 3: 'THREE'};
  print(map.containsKey(1));
  map.remove(1);
  print(map);
  map.addAll({4: 'FOUR', 5: 'FIVE'});
  print(map);
  print(map.length);
  print(map.keys);
  print(map.values);
  print(map.containsValue('TWO'));
  print(map.isNotEmpty);
  print(map.isEmpty);
  print(map.cast());
  print(map.toString());
  print(map.entries);
}