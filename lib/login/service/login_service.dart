import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart ' as http;
import 'package:printflow_mulakat/login/model/login_model.dart';
import 'package:printflow_mulakat/login/model/login_response_model.dart';
import 'package:printflow_mulakat/login/viewmodel/login_view_model.dart';

class LoginService{

    Future<LoginResponseModel> loginProcess(LoginModel model) async {
    var url = "${model.username}/${model.password}/";
    final response = await http.get(Uri.parse(url));


    print(response.statusCode);

    if (response.statusCode ==200) {
      var jsonResponse =  json.decode(response.body) ;
      return LoginResponseModel.fromJson(jsonResponse);
    }
    return LoginResponseModel(Map());







  }



}