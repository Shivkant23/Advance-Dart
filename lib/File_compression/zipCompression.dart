import 'dart:async';
import 'dart:io';
import 'dart:convert';

main(){
  String data = '';
  for(int i = 0; i< 100; i++){
    data = data + "Hello world\r\n";
  }

  List original = Utf8Encoder().convert(data);
  List compressed = GZIP.encode(original);
  List decompressed = GZIP.decode(compressed);

  print("Original : ${original.length}");
  print("compressed : ${compressed.length}");
  print("decompressed : ${decompressed.length}");

  String decoded = Utf8Decoder().convert(decompressed);
  assert(data == decoded);
//  print(data);
//  print(decoded);

}