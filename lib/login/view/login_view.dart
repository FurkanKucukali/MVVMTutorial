import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:printflow_mulakat/core/base/size.dart';
import 'package:printflow_mulakat/core/constant/image_constant.dart';
import 'package:printflow_mulakat/login/viewmodel/login_view_model.dart';
import 'package:printflow_mulakat/login/widgets/custom_textfield.dart';
import 'package:printflow_mulakat/poolwork/service/poolwork_service.dart';
import 'package:printflow_mulakat/poolwork/view/poolwork_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var _viewModel = LoginViewModel();
  String? value;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _viewModel.usernameController = TextEditingController();
    _viewModel.passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: buildColumn(),
        ));
  }

  Column buildColumn() {
    return Column(
          children: [
            Expanded(
              child: SizedBox(),
              flex: 108,
            ),
            Expanded(
              child: SizedBox(
                child: SvgPicture.asset(ImageConstants.instance.logo),
              ),
              flex: 55,
            ),
            Expanded(
              child: SizedBox(),
              flex: 22,
            ),
            Expanded(
              child: SizedBox(
                child: Image.asset(ImageConstants.instance.imagegif),
              ),
              flex: 241,
            ),
            Expanded(
              child: SizedBox(),
              flex: 53,
            ),
            Expanded(
              child: LoginTextfield(
                controllername: _viewModel.usernameController,
                imagename: ImageConstants.instance.person,
                hintText: "Kullanıcı Adı",
              ),
              flex: 120,
            ),
            Expanded(
              child: LoginTextfield(
                controllername: _viewModel.passwordController,
                imagename: ImageConstants.instance.key,
                hintText: "Şifre",
              ),
              flex: 120,
            ),
            Expanded(
              child: SizedBox(),
              flex: 80,
            ),
            Expanded(
              child: buildButton(),
              flex: 60,
            ), //button
            Expanded(
              child: SizedBox(),
              flex: 36,
            ),
            Expanded(
              child: SizedBox(
                child: Text("Yuchisoft"),
              ),
              flex: 20,
            ),
            Expanded(
              child: SizedBox(),
              flex: 80,
            )

            // TextField(controller: _viewModel.usernameController,
            // ),
            // TextField(controller: _viewModel.passwordController,),
            // RaisedButton(onPressed: ()  {
            //    _viewModel.controlLogin();
            //
            //
            // },)
          ],
        );
  }

  Observer buildButton() {
    return Observer(
      builder:(_)=> RaisedButton(
        child: _viewModel.isLoading ? CircularProgressIndicator() : Text("Giriş"),
        onPressed: () async {

          print(_viewModel.isLoading);
          value = await _viewModel.controlLogin();
          value != null
              ? Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => PoolWorkView()))
              : Null;





        },
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
