import 'dart:io';
import 'dart:convert';

main(){
  Process.start('cat', []).then((Process process){
      process.stdout.transform(Utf8Decoder()).listen((data) {print(data);});

      process.stdin.writeln("Hello world!");

      Process.killPid(process.pid);

      process.exitCode.then((int code){
        print("Exit code: ${code}");
        exit(code);
      });
  });
}