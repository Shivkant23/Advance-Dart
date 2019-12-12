import 'dart:async';

int counter = 0;

void main(){
  Duration _duration = Duration(seconds: 2);
  Timer _timer = new Timer.periodic(_duration, callback);
}

void callback(Timer timer){
  print("TimeOut: - ${getTime()}");
  counter++;
  if(counter >= 10) timer.cancel();
}

String getTime(){
  DateTime dt = new DateTime.now();
  return dt.toString();
}