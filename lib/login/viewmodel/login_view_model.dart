import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:printflow_mulakat/login/service/login_service.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:printflow_mulakat/login/model/login_model.dart';
import 'package:printflow_mulakat/login/model/login_response_model.dart';
import 'package:printflow_mulakat/poolwork/service/poolwork_service.dart';
import 'package:printflow_mulakat/poolwork/view/poolwork_view.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'login_view_model.g.dart';


class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;
 abstract class _LoginViewModelBase with Store {

   @observable
   bool isLoading = false;

   TextEditingController? usernameController;
   TextEditingController? passwordController;


  @action
  controlLogin() async {
    isLoadingChange();
    final prefs = await SharedPreferences.getInstance();

  var value =  await LoginService().loginProcess(LoginModel(username: usernameController!.text,password: passwordController!.text));
  if(value.userName != null){
   await prefs.setString("userName", value.userName.toString());
   await prefs.setString("password", value.userPassword.toString());
   isLoadingChange();
   return value.userName;

  }
    isLoadingChange();

  }
   @action
   void isLoadingChange() {
     isLoading = !isLoading;
   }

}
