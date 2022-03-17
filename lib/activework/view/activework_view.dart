import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:printflow_mulakat/activework/viewmodel/activework_view_model.dart';
import 'package:printflow_mulakat/core/base/size.dart';

import 'package:printflow_mulakat/widgets/card.dart';

class ActiveWorkView extends StatefulWidget {
  const ActiveWorkView({Key? key}) : super(key: key);

  @override
  _ActiveWorkViewState createState() => _ActiveWorkViewState();
}

class _ActiveWorkViewState extends State<ActiveWorkView> {
  var _viewModel = ActiveWorkViewModel();
  List<String?>? dropdownlist = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    asyncfunc();
  }

  void asyncfunc() async {
    int? activevalue;
    await _viewModel.getWorkLineDropList();
    for (int i = 0; i < _viewModel.worklinedroplist.length; i++) {
      dropdownlist!
          .add( _viewModel.worklinedroplist.elementAt(i).workLineName);
      if(_viewModel.worklinedroplist.elementAt(i).workLineName == _viewModel.dropdownvalue){
        activevalue =  _viewModel.worklinedroplist.elementAt(i).workLineID;
      }
    }

    await _viewModel.getActiveWorkList(activevalue.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(Sizedx().height(0.1, context)), child: buildAppBar()),
      body: Observer(
        builder: (_) => buildListView(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text("DEVAM EDEN İŞLER", style: TextStyle(color: Colors.blue)),
          SizedBox(
            height: 5,
          ),
          Observer(
            builder: (_) => SizedBox(
              height: Sizedx().height(0.027, context),
              width: Sizedx().width(0.3, context),
              child: buildDropdownButton(),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.blue,
        ),
      ),
      actions: [
        Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
        )
      ],
    );
  }

  DropdownButton<String> buildDropdownButton() {
    return DropdownButton<String>(
              underline: SizedBox(),
              isExpanded: true,
                elevation: 2,
                value: _viewModel.dropdownvalue,
                onChanged: (String? newValue) {
                  _viewModel.dropdownvalue = newValue;
                },
                items: dropdownlist!
                    .map<DropdownMenuItem<String>>((String? value) {
                  return DropdownMenuItem<String>(
                      value: value, child: Text(value!));
                }).toList());
  }

  ListView buildListView() {
    return ListView.builder(
        itemCount: _viewModel.activeworklist?.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Column(
              children: [
                CustomCard(
                  column: buildColumn(index),
                )
              ],
            ),
          );
        });
  }

  Column buildColumn(int index) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ID : "),
            Text("${_viewModel.activeworklist?.elementAt(index).workID}")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("İş Adı : "),
            Text("${_viewModel.activeworklist?.elementAt(index).workName}")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Teslim Tarihi : "),
            Text("${_viewModel.activeworklist?.elementAt(index).deliveryDate}")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Müşteri : "),
            Text("${_viewModel.activeworklist?.elementAt(index).customerName}")
          ],
        ),
        RaisedButton(
          color: Colors.blue,
          onPressed: () {
            _viewModel.getTimeLineList(
                _viewModel.activeworklist!.elementAt(index).workID.toString());
          },
          child: Text(
            "İş Akış Adımları",
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
