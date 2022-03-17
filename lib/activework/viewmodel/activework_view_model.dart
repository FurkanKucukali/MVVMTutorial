import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:printflow_mulakat/activework/model/active_work_model.dart';
import 'package:printflow_mulakat/activework/model/timeline_model.dart';
import 'package:printflow_mulakat/activework/model/work_line_model.dart';
import 'package:printflow_mulakat/activework/service/activework_service.dart';
import 'package:printflow_mulakat/poolwork/model/getworklist_model.dart';
import 'package:printflow_mulakat/poolwork/service/poolwork_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'activework_view_model.g.dart';


class ActiveWorkViewModel = _ActiveWorkViewModelBase with _$ActiveWorkViewModel;
abstract class _ActiveWorkViewModelBase with Store {

  @observable
  List<ActiveWorkModel>? activeworklist =[];
  @observable
  List<WorkLine> worklinedroplist = [];
  @observable
  List<TimeLineModel> timelinelist = [];
  @observable
   String? dropdownvalue ;


  @action
  getActiveWorkList(String workLineID) async {
    activeworklist = await ActiveWorkService().getActiveWorkList("furkan","123",workLineID);
  }
  @action
  getWorkLineDropList() async {
    worklinedroplist = await ActiveWorkService().getWorkLineList("furkan","123");
    dropdownvalue = await worklinedroplist.first.workLineName!;
  }
  @action
  getTimeLineList(String jobID) async {
    timelinelist = await ActiveWorkService().getTimeLineData("furkan","123",jobID);
    for(int i =0; i<timelinelist.length;i++){
      print("name : ${timelinelist.elementAt(i).name}");
      print("date : ${timelinelist.elementAt(i).date}");
      print("user : ${timelinelist.elementAt(i).userList}");
      print("worklineStepID : ${timelinelist.elementAt(i).workLineStepID}");
      print("------------------------------");
    }
    print("*************************************");


  }


}