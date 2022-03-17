import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart ' as http;
import 'package:printflow_mulakat/activework/model/active_work_model.dart';
import 'package:printflow_mulakat/activework/model/timeline_model.dart';
import 'package:printflow_mulakat/activework/model/work_line_model.dart';
import 'package:printflow_mulakat/login/model/login_model.dart';
import 'package:printflow_mulakat/login/model/login_response_model.dart';
import 'package:printflow_mulakat/login/viewmodel/login_view_model.dart';
import 'package:printflow_mulakat/poolwork/model/getworklist_model.dart';

class ActiveWorkService{

  Future<List<WorkLine>>  getWorkLineList(String username,String password) async {
    String basicAuth = 'Basic ' + base64Encode(utf8.encode('$username:$password'));
    var url = "http://78.189.142.133:8090/api/GetWorkLineList/";
    final response = await http.get(Uri.parse(url),headers: <String,String>{'authorization': basicAuth});

    var decodedProducts = json.decode(response.body).cast<Map<String, dynamic>>();
    List<WorkLine> worklinelist = await decodedProducts
        .map<WorkLine>((json) => WorkLine.fromJson(json))
        .toList();

    return worklinelist;
  }
  Future<List<ActiveWorkModel>> getActiveWorkList(String username,String password,String workLineId) async {
    String basicAuth = 'Basic ' + base64Encode(utf8.encode('$username:$password'));
    var url = "http://78.189.142.133:8090/api/GetActiveWorkList/$workLineId/";
    final response = await http.get(Uri.parse(url),headers: <String,String>{'authorization': basicAuth});
    var decodedProducts = json.decode(response.body).cast<Map<String, dynamic>>();
    List<ActiveWorkModel> activeworklist = await decodedProducts
        .map<ActiveWorkModel>((json) => ActiveWorkModel.fromJson(json))
        .toList();
    return activeworklist;
  }
  Future<List<TimeLineModel>> getTimeLineData(String username,String password,String jobId) async {
    String basicAuth = 'Basic ' + base64Encode(utf8.encode('$username:$password'));
    var url = "http://78.189.142.133:8090/api/GetTimeLineData/$jobId/";
    final response = await http.get(Uri.parse(url),headers: <String,String>{'authorization': basicAuth});
    var decodedProducts = json.decode(response.body).cast<Map<String, dynamic>>();
    List<TimeLineModel> activeworklist = await decodedProducts
        .map<TimeLineModel>((json) => TimeLineModel.fromJson(json))
        .toList();
    return activeworklist;
  }



}