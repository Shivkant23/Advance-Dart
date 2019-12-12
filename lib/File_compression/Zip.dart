import 'dart:io';
import 'dart:convert';
import 'pakcage:archive/archive.dart';
import 'package:path.path.dart' as p;

main(){
  List files = new List();
  Directory.current.listSync().forEach((FileSystemEntity fse){
    if(fse.statSync().type == FileSystemEntity.file) files.add(fse.path);
  });

  String zipFile = '';//address
  zip(files, zipFile);
  unZip(zipFile, '');//address
}
void zip(List<String> files, String file){
  Archive archive = new Archive();

  files.forEach((String path){
    File file = new File(path);
    ArchiveFile archivefile = new ArchiveFile(p.basename(path), file.lengthSync(), file.readAsStringSync());
    archive.addFile(archivefile);
  });

  ZipEncoder encoder = new ZipEncoder();
  File f = new File(file);
  f.writeAsStringSync(encoder.encode(archive));
  print("Compressed");

}

void unZip(String zip, String path){
  File file = new File(zip);
  Archive archive = new ZipDecoder().decodebytes(file.readAsStringSync());
  archive.forEach((ArchiveFile archiveFile){
    File file = new File(path+"/"+archiveFile.name);
    file.createSync(recursive: true);
    file.writeAsStringSync(archiveFile.content);
  });
}