import 'dart:io';
import 'dart:convert';

main(){
  var data =  "Hello world";
  List<int> dataToSend = Utf8Encoder().convert(data);
  int port = 3000;

  RawDatagramSocket.bind(InternetAddress.LOOPBACK_IP_V4, port).then((RawDatagramSocket udpSocket){
    udpSocket.listen((RawSocketEvent event){
      if(event == RawSocketEvent.READ){
        Datagram dg = udpSocket.receive();
        print(Utf8Decoder().convert(dg.data));
      }
    });

    udpSocket.send(dataToSend, InternetAddress.LOOPBACK_IP_V4, port);
    print("send!");

  });

}