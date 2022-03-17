import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:printflow_mulakat/core/base/size.dart';
import 'package:printflow_mulakat/mywork/view/mywork_view.dart';
import 'package:printflow_mulakat/poolwork/viewmodel/poolwork_view_model.dart';
import 'package:printflow_mulakat/widgets/card.dart';

class PoolWorkView extends StatefulWidget {
  const PoolWorkView({Key? key}) : super(key: key);

  @override
  _PoolWorkViewState createState() => _PoolWorkViewState();
}

class _PoolWorkViewState extends State<PoolWorkView> {
  var _viewModel = PoolWorkViewModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _viewModel.getpoolworklist();
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
      title: Text("HAVUZDAKİ İŞLER", style: TextStyle(color: Colors.blue)),
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: Icon(
        Icons.arrow_back_ios,
        color: Colors.grey,
      ),
      actions: [
        GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (builder)=>MyWorkView()));},
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue,
            ))
      ],
    );
  }

  Widget buildListView() {
    return _viewModel.isLoading==false ?ListView.builder(
          itemCount: _viewModel.poolworklist?.length,
          itemBuilder: (context, index) {
            return  ListTile(

              title: Column(
                children: [
                  CustomCard(
                    column: buildColumn(index),
                  )

                ],
              ),
            );
          }): Center(child: CircularProgressIndicator());
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
                                    "${_viewModel.poolworklist?.elementAt(index).workID}")
                              ],
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("İş Adı : "),
                                Text(
                                    "${_viewModel.poolworklist?.elementAt(index).workName}")
                              ],
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Teslim Tarihi : "),
                                Text(
                                    "${_viewModel.poolworklist?.elementAt(index).workDeliveryDate}")
                              ],
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Müşteri : "),
                                Text(
                                    "${_viewModel.poolworklist?.elementAt(index).customerName}")
                              ],
                            ),
                            RaisedButton(
                              color: Colors.blue,
                              onPressed: () {
                                _viewModel.receivework(_viewModel
                                    .poolworklist!
                                    .elementAt(index)
                                    .workID
                                    .toString());
                              },
                              child: Text("İşi al",style: TextStyle(color: Colors.white),),
                            )
                          ],
                        );
  }
}
