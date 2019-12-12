import 'dart:io';
import 'dart:convert';
import 'dart:typed_data';

import 'package:pointycastle/pointycastle.dart';

main(){
  Digest digest = new Digest("SHA-256");
  String value  = "Hello world";
  Uint8List data = new Uint8List.fromList(Utf8Encoder().convert(value));
  Uint8List hash = digest.process(data);
  print(hash);
  print(Base64Encoder().convert(hash));
}