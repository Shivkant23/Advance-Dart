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

  BlockCipher cipher = new BlockCipher("AES");
  cipher.init(true, params);

  String plaintText = 'Hello Word';
  Uint8List Plaint_text = createUint8ByteFromString(plaintText.padRight(cipher.blockSize));
  Uint8List encrypted_data = cipher.process(Plaint_text);

  cipher.reset();
  cipher.init(false, params);
  Uint8List decreypted_data = cipher.process(encrypted_data);

  displayUint8List('Plaint Text', Plaint_text);
  displayUint8List('encrypted_data Text', encrypted_data);
  displayUint8List('decrypted_data Text', decreypted_data);

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