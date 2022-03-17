import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:printflow_mulakat/poolwork/model/getworklist_model.dart';
import 'package:printflow_mulakat/poolwork/service/poolwork_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'poolwork_view_model.g.dart';


class PoolWorkViewModel = _PoolWorkViewModelBase with _$PoolWorkViewModel;
abstract class _PoolWorkViewModelBase with Store {

  @observable
  List<WorkListModel>? poolworklist =[];
  @observable
  bool isLoading = false;

  @action
  getpoolworklist() async {
    poolworklist = await PoolWorkService().GetPoolWorkList("furkan", "123");

  }
  @action
  receivework(String jobid)  async {
    isLoadingChange();
     await PoolWorkService().receivePoolWork("furkan", "123", jobid);
     await PoolWorkService().receivePoolWork("furkan", "123", jobid);
     await getpoolworklist();
    isLoadingChange();

  }
  @action
  void isLoadingChange(){
    isLoading = !isLoading;
  }
}