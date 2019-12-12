import 'dart:io';
import 'dart:convert';
import 'dart:typed_data';
import 'package:pointycastle/pointycastle.dart';
//Deriving Keys

main(){
  String password = "password";
  var salt = createUint8ListFromString('sALT');
  var pkcs = new KeyDerivator("SHA-1/HMAC/PBKDF2");
  var params = new Pbkdf2Parameters(salt, 100, 16);
  pkcs.init(params);
  Uint8List key = pkcs.process(createUint8ListFromString(password));
  display('Key value', key);
}

Uint8List createUint8ListFromString(String value) => new Uint8List.fromList(Utf8Encoder().convert(value));

void display(String title, Uint8List value){
  print(title);
  print(value);
  print(Base64Encoder().convert(value));
  print('');
}