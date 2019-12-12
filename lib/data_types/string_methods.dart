import 'dart:io';
import 'dart:convert';

main(){
  var numbers  = [1,2,3,4,7,5,6,9];

  String asd = "Shivkaknt is a good boy shiv, shiva, shivam";
  print(asd.startsWith('s', 3));
  print(asd.replaceAll('b', 'j'));
  print(asd.split('o'));
  print(asd.contains('is'));
  print(asd.indexOf('h'));
  print(asd.indexOf('h',2));
  print(asd.toLowerCase());
  print(asd.trim());
  print(asd.length);
  print(asd.endsWith('a'));
  print(asd.lastIndexOf('h'));
  print(asd.compareTo('Shivkant'));
  print(asd.isEmpty);
  print(asd.toUpperCase());
  print(asd.replaceFirst('a', '1'));
}