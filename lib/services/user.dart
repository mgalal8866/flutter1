

import 'package:flutter_application_1/helper/api.dart';
import 'package:flutter_application_1/models/user_model.dart';


class Userinf 
{
  Future <UserModel> Userinfor({required String mobile ,required String password,required String token}) async{
    Map<String,dynamic> data =  Api().post(
              url: 'https://locationstor.com/api/auth/login',
              body: {
                "mobile": mobile,
                "password": password,
                "device_token": "test"
              },
              token: "Bearer $token");

  };

}