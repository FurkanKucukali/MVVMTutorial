import 'package:flutter/material.dart';


class Sizedx  {

  width(percent,BuildContext context) => MediaQuery.of(context).size.width*percent;
  height(percent, BuildContext context) => MediaQuery.of(context).size.height*percent;

}