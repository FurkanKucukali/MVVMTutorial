// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activework_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ActiveWorkViewModel on _ActiveWorkViewModelBase, Store {
  final _$activeworklistAtom =
      Atom(name: '_ActiveWorkViewModelBase.activeworklist');

  @override
  List<ActiveWorkModel>? get activeworklist {
    _$activeworklistAtom.reportRead();
    return super.activeworklist;
  }

  @override
  set activeworklist(List<ActiveWorkModel>? value) {
    _$activeworklistAtom.reportWrite(value, super.activeworklist, () {
      super.activeworklist = value;
    });
  }

  final _$worklinedroplistAtom =
      Atom(name: '_ActiveWorkViewModelBase.worklinedroplist');

  @override
  List<WorkLine> get worklinedroplist {
    _$worklinedroplistAtom.reportRead();
    return super.worklinedroplist;
  }

  @override
  set worklinedroplist(List<WorkLine> value) {
    _$worklinedroplistAtom.reportWrite(value, super.worklinedroplist, () {
      super.worklinedroplist = value;
    });
  }

  final _$timelinelistAtom =
      Atom(name: '_ActiveWorkViewModelBase.timelinelist');

  @override
  List<TimeLineModel> get timelinelist {
    _$timelinelistAtom.reportRead();
    return super.timelinelist;
  }

  @override
  set timelinelist(List<TimeLineModel> value) {
    _$timelinelistAtom.reportWrite(value, super.timelinelist, () {
      super.timelinelist = value;
    });
  }

  final _$dropdownvalueAtom =
      Atom(name: '_ActiveWorkViewModelBase.dropdownvalue');

  @override
  String? get dropdownvalue {
    _$dropdownvalueAtom.reportRead();
    return super.dropdownvalue;
  }

  @override
  set dropdownvalue(String? value) {
    _$dropdownvalueAtom.reportWrite(value, super.dropdownvalue, () {
      super.dropdownvalue = value;
    });
  }

  final _$getActiveWorkListAsyncAction =
      AsyncAction('_ActiveWorkViewModelBase.getActiveWorkList');

  @override
  Future getActiveWorkList(String workLineID) {
    return _$getActiveWorkListAsyncAction
        .run(() => super.getActiveWorkList(workLineID));
  }

  final _$getWorkLineDropListAsyncAction =
      AsyncAction('_ActiveWorkViewModelBase.getWorkLineDropList');

  @override
  Future getWorkLineDropList() {
    return _$getWorkLineDropListAsyncAction
        .run(() => super.getWorkLineDropList());
  }

  final _$getTimeLineListAsyncAction =
      AsyncAction('_ActiveWorkViewModelBase.getTimeLineList');

  @override
  Future getTimeLineList(String jobID) {
    return _$getTimeLineListAsyncAction.run(() => super.getTimeLineList(jobID));
  }

  @override
  String toString() {
    return '''
activeworklist: ${activeworklist},
worklinedroplist: ${worklinedroplist},
timelinelist: ${timelinelist},
dropdownvalue: ${dropdownvalue}
    ''';
  }
}
