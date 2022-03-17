// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mywork_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MyWorkViewModel on _MyWorkViewModelBase, Store {
  final _$myworklistAtom = Atom(name: '_MyWorkViewModelBase.myworklist');

  @override
  List<WorkListModel>? get myworklist {
    _$myworklistAtom.reportRead();
    return super.myworklist;
  }

  @override
  set myworklist(List<WorkListModel>? value) {
    _$myworklistAtom.reportWrite(value, super.myworklist, () {
      super.myworklist = value;
    });
  }

  final _$getmyworklistAsyncAction =
      AsyncAction('_MyWorkViewModelBase.getmyworklist');

  @override
  Future getmyworklist() {
    return _$getmyworklistAsyncAction.run(() => super.getmyworklist());
  }

  final _$myworkstepcompleteAsyncAction =
      AsyncAction('_MyWorkViewModelBase.myworkstepcomplete');

  @override
  Future myworkstepcomplete(String jobid) {
    return _$myworkstepcompleteAsyncAction
        .run(() => super.myworkstepcomplete(jobid));
  }

  @override
  String toString() {
    return '''
myworklist: ${myworklist}
    ''';
  }
}
