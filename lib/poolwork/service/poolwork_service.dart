import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart ' as http;
import 'package:printflow_mulakat/login/model/login_model.dart';
import 'package:printflow_mulakat/login/model/login_response_model.dart';
import 'package:printflow_mulakat/login/viewmodel/login_view_model.dart';
import 'package:printflow_mulakat/poolwork/model/getworklist_model.dart';

class PoolWorkService{

      Future<List<WorkListModel>>  GetPoolWorkList(String username,String password) async {
          String basicAuth = 'Basic ' + base64Encode(utf8.encode('$username:$password'));
          var url = "/$username/";
          final response = await http.get(Uri.parse(url),headers: <String,String>{'authorization': basicAuth});
          var decodedProducts = json.decode(response.body).cast<Map<String, dynamic>>();
           List<WorkListModel> worklist = await decodedProducts
               .map<WorkListModel>((json) => WorkListModel.fromJson(json))
               .toList();
           return worklist;
  }
        receivePoolWork(String username,String password,String jobID) async {
          String basicAuth = 'Basic ' + base64Encode(utf8.encode('$username:$password'));
          var url = "$jobID/$username/";
          final response = await http.get(Uri.parse(url),headers: <String,String>{'authorization': basicAuth});
          print(response.body);
        }



}