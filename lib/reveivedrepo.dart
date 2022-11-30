import 'dart:convert';

import 'package:flutter_application_4/repositories.dart';
import 'package:http/http.dart';

class ReceivedRepo {
  
  Future<void> received() async {
    try {
      Response response = await get(
        Uri.parse(
            'https://sista360.software-demo.in/api/v1/customer/farmer/get-farms-list?user_id=2'),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer token",
        },
      );

      if (response.statusCode == 200) {
        var revieve = jsonDecode(response.body.toString());
       print(response.body);
        
        print('Login successfully');
      } else {
        print('failed');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
