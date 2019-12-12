import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

main()async{
  var url = "http://httpbin.org/post";
  var response = await http.post(url, body: 'name=Bryn&color=blue');
  print("Response status code: - ${response.statusCode}");
  print("Response Body: - ${response.body}");
}