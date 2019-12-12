import 'dart:convert';
import 'dart:io';

main(){
  int zlib = testCompress(ZLIB);
  int gzip = testCompress(GZIP);
  print("zlib = ${zlib}");
  print("lib = ${gzip}");
}
String generatedData(){
  String data = "";

  for(int i = 0; i< 100; i++){
    data = data +"hello world \r\n";
  }
  return data;
}

int testCompress(var codec){
  String data = generatedData();

  List original = Utf8Encoder().convert(data);
  List compressed = codec.encode(original);
  List decompressed = codec.decode(compressed);

  print('Tesing ${codec.toString()}');
  print('Original ${original.length}');
  print('compressed ${compressed.length}');
  print('decompressed ${decompressed.length}');

  print('');
  String decoded = Utf8Decoder().convert(decompressed);
  assert(data == decoded);
  return compressed.length;
}