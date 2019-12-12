import 'dart:io';
import 'dart:async';

main()async{

  File file = await appendFile();
  print("Appended in file of path : ${file.path}");
}

Future<File> appendFile(){
  File file = new File(Directory.current.path+'/test.txt');
  DateTime now = new DateTime.now();
  return file.writeAsString(now.toString()+'\r\n', mode: FileMode.append);
}