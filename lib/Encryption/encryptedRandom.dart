//Secure Rndom Number
// Cryptographocally random number

import 'dart:typed_data';
import 'dart:io';
import 'dart:convert';
import 'package:pointycastle/pointycastle.dart';
import 'dart:math';

main(){
  print(randomBytes(8));
}

Uint8List randomBytes(int length){
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