import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

main()async{
  var url = "https://gist.github.com/shubhamjain/35ed77154f577295707a.js";
  var response = await http.get(url);
  print("Response status code: - ${response.statusCode}");
  print("Response Body: - ${response.body}");
}