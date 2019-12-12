import 'dart:io';

void main(){
  Process.run('ls', ['C:/windows/System32/notepad.exe']).then((ProcessResult result){
    print(result.stdout);
    print("Exit code : ${result.exitCode}");
  });
}