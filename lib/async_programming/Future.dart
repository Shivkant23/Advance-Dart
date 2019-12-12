import 'dart:io';

main(List<String> arguments){
  String path = Directory.current.path + '/test.txt';
  print("Appending to path $path");

  File file = new File(path);
  Future<RandomAccessFile> f = file.open(mode: FileMode.append);
  f.then((RandomAccessFile raf){
    print("The file is opened");
    raf.writeString("Hello World").then((value){
      print("file has been appended!");
    }).catchError(() => "An error has been occured.").whenComplete(()=> raf.close());
  });
  print("*****************the end");
}