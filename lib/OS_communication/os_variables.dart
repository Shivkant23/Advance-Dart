import 'dart:io';

void main(List<String> args) {
  print("OS:- ${Platform.operatingSystem} ${Platform.isWindows} ${Platform.version}");

  if(Platform.isWindows){
    print("Run code on windows");
  }else{
    print("run normal code");
  }

  print("PATH: ${Platform.script.path}");
  print("DART: ${Platform.executable}");
  print("ENV");
  Platform.environment.keys.forEach((key){
    print("${key} ${Platform.environment[key]}" );
  });
  print(Platform.environment);
  print(Platform.executable.length.toString());

  print(Platform.pathSeparator);
}