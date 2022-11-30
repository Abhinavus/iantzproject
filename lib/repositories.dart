
  import 'dart:convert';

import 'package:http/http.dart';
class DataRepo{
  static var token;

Future<void> login(String email , password) async {
    
    try{
      
      Response response = await post(
        Uri.parse('https://sista360.software-demo.in/api/v1/auth/login'),
        body: {
          'email' : email,
          'password' : password
        }
      );

      if(response.statusCode == 200){
        
        var data = jsonDecode(response.body.toString());
        
        String tokens = data['token'];
        
        print(data['token']);
        print(data['user_id']);
        print('Login successfully');
        print(token);

      }else {
        print('failed');
      }
    }catch(e){
      print(e.toString());
    }
  }}