import 'dart:convert';
import 'dart:io';

main()async{
  var socket = await Socket.connect('127.0.0.1', 3000);
  print("connected");
  socket.write("Hello world");
  print("Sent, closing");
  await socket.close();
  exit(0);
}