import 'dart:math';
import 'dart:core';
import 'dart:convert';
import 'dart:io';
import 'package:pointycastle/pointycastle.dart';
import 'dart:typed_data';

main(){
  final keyBytes = randomByte(8);
  final key = new KeyParameter(keyBytes);
  final iv = randomByte(8);
  final params = ParametersWithIV(key, iv);

  StreamCipher cipher = new StreamCipher("Salsa20");
  cipher.init(true, params);

  String plainText = "Hello World";
  Uint8List plain_data = createUint8ByteFromString(plainText);
  Uint8List encrypted_data = cipher.process(plain_data);

  cipher.reset();
  cipher.init(false, params);
  Uint8List decrypted_data = cipher.process(encrypted_data);

  displayUint8List('Plaint Text', plain_data);
  displayUint8List('encrypted_data Text', encrypted_data);
  displayUint8List('decrypted_data Text', decrypted_data);

//  Function eq = const ListEquality().equals;

}

Uint8List createUint8ByteFromString(String value) =>
        new Uint8List.fromList(Utf8Encoder().convert(value));

void displayUint8List(String title, Uint8List value){
  print(title);
  print(value);
  print(Base64Encoder().convert(value));
  print('');
}

Uint8List randomByte(int length){
  final rnd = SecureRandom("AES/CTR/AUTO-SEED-PRNG");
  final key = new Uint8List(16);
  final keyParam = new KeyParameter(key);
  final params = new ParametersWithIV(keyParam, new Uint8List(16));

  rnd.seed(params);
  var random = new Random();
  for(int i= 0; i< random.nextInt(255); i++){
    rnd.nextUint8();
  }

  var bytes = rnd.nextBytes(length);
  return bytes;
}