import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:printflow_mulakat/core/constant/image_constant.dart';
import 'package:printflow_mulakat/login/viewmodel/login_view_model.dart';


class LoginTextfield extends StatelessWidget{


  final String? imagename;
  final controllername;
  final String? hintText;

  const LoginTextfield({Key? key,  this.imagename, this.controllername, this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Column(mainAxisAlignment: MainAxisAlignment.center,
      children:  [

        SizedBox(child: SvgPicture.asset(imagename!),),
        TextField(controller: controllername,decoration:InputDecoration(hintText: hintText,),textAlign: TextAlign.center,)

        
    ],);

  }


}