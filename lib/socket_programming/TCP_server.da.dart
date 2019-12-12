import 'dart:io';
import 'dart:convert';

main()async{
  var serverSocket = await ServerSocket.bind('127.0.0.1', 3000);
  print("Listning");

  await for(var socket in serverSocket){
    socket.listen((List values){
      print("${socket.remoteAddress}: ${socket.remotePort} = ${Utf8Decoder().convert(values)}");
    });

  }
}