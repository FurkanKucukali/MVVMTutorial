import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:printflow_mulakat/activework/view/activework_view.dart';
import 'package:printflow_mulakat/core/base/size.dart';
import 'package:printflow_mulakat/mywork/viewmodel/mywork_view_model.dart';
import 'package:printflow_mulakat/poolwork/viewmodel/poolwork_view_model.dart';
import 'package:printflow_mulakat/widgets/card.dart';

class MyWorkView extends StatefulWidget {
  const MyWorkView({Key? key}) : super(key: key);

  @override
  _PoolWorkViewState createState() => _PoolWorkViewState();
}

class _PoolWorkViewState extends State<MyWorkView> {
  var _viewModel = MyWorkViewModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _viewModel.getmyworklist();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Observer(
        builder: (_) => buildListView(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("İŞLERİM", style: TextStyle(color: Colors.blue)),
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: GestureDetector(
        onTap: (){Navigator.of(context).pop();},
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.blue,
        ),
      ),
      actions: [
        GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (builder)=>ActiveWorkView()));
            },
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue,
            ))
      ],
    );
  }

  ListView buildListView() {
    return ListView.builder(
        itemCount: _viewModel.myworklist?.length,
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
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ID : "),
            Text(
                "${_viewModel.myworklist?.elementAt(index).workID}")
          ],
        ),
        Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("İş Adı : "),
            Text(
                "${_viewModel.myworklist?.elementAt(index).workName}")
          ],
        ),
        Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Teslim Tarihi : "),
            Text(
                "${_viewModel.myworklist?.elementAt(index).workDeliveryDate}")
          ],
        ),
        Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Müşteri : "),
            Text(
                "${_viewModel.myworklist?.elementAt(index).customerName}")
          ],
        ),
        RaisedButton(
          color: Colors.blue,
          onPressed: () {
            _viewModel.myworkstepcomplete(_viewModel
                .myworklist!
                .elementAt(index)
                .workID
                .toString());
          },
          child: Text("İşi Tamamla",style: TextStyle(color: Colors.white),),
        )
      ],
    );
  }
}
