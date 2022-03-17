import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:printflow_mulakat/mywork/service/mywork_service.dart';
import 'package:printflow_mulakat/poolwork/model/getworklist_model.dart';
import 'package:printflow_mulakat/poolwork/service/poolwork_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'mywork_view_model.g.dart';


class MyWorkViewModel = _MyWorkViewModelBase with _$MyWorkViewModel;
abstract class _MyWorkViewModelBase with Store {

  @observable
  List<WorkListModel>? myworklist =[];

  @action
  getmyworklist() async {
    myworklist = await MyWorkService().getMyWorkList("furkan", "123");

  }
  @action
  myworkstepcomplete(String jobid)  async {
    await MyWorkService().myWorkStepComplate("furkan", "123", jobid);
    await MyWorkService().myWorkStepComplate("furkan", "123", jobid);
    await getmyworklist();


  }
}