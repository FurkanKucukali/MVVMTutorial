import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart ' as http;
import 'package:printflow_mulakat/poolwork/model/getworklist_model.dart';

class MyWorkService{
  Future<List<WorkListModel>>  getMyWorkList(String username,String password) async {
    String basicAuth = 'Basic ' + base64Encode(utf8.encode('$username:$password'));
    var url = "http://78.189.142.133:8090/api/GetMyWorkList/$username/";
    final response = await http.get(Uri.parse(url),headers: <String,String>{'authorization': basicAuth});
    var decodedProducts = json.decode(response.body).cast<Map<String, dynamic>>();
    List<WorkListModel> worklist = await decodedProducts
        .map<WorkListModel>((json) => WorkListModel.fromJson(json))
        .toList();
    return worklist;
  }
  myWorkStepComplate(String username,String password,String jobID) async {
    String basicAuth = 'Basic ' + base64Encode(utf8.encode('$username:$password'));
    var url = "http://78.189.142.133:8090/api/MyWorkStepComplate/$jobID/$username/";
    final response = await http.get(Uri.parse(url),headers: <String,String>{'authorization': basicAuth});
    print(response.body);
  }


}