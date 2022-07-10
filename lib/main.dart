import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper/api.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const HomePage());
}

 
//  onPressed: () {
//            dynamic data =   Api().post(
//               url: 'https://locationstor.com/api/auth/login',
//               body: {
//                 "mobile": "01024346011",
//                 "password": "010243460111",
//                 "device_token": "test"
//               },
//               token: "Bearer ");
//           print(data.toString());
//           print('Login successfully');
//         },
