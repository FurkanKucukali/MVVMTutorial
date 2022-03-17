// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poolwork_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PoolWorkViewModel on _PoolWorkViewModelBase, Store {
  final _$poolworklistAtom = Atom(name: '_PoolWorkViewModelBase.poolworklist');

  @override
  List<WorkListModel>? get poolworklist {
    _$poolworklistAtom.reportRead();
    return super.poolworklist;
  }

  @override
  set poolworklist(List<WorkListModel>? value) {
    _$poolworklistAtom.reportWrite(value, super.poolworklist, () {
      super.poolworklist = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_PoolWorkViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$getpoolworklistAsyncAction =
      AsyncAction('_PoolWorkViewModelBase.getpoolworklist');

  @override
  Future getpoolworklist() {
    return _$getpoolworklistAsyncAction.run(() => super.getpoolworklist());
  }

  final _$receiveworkAsyncAction =
      AsyncAction('_PoolWorkViewModelBase.receivework');

  @override
  Future receivework(String jobid) {
    return _$receiveworkAsyncAction.run(() => super.receivework(jobid));
  }

  final _$_PoolWorkViewModelBaseActionController =
      ActionController(name: '_PoolWorkViewModelBase');

  @override
  void isLoadingChange() {
    final _$actionInfo = _$_PoolWorkViewModelBaseActionController.startAction(
        name: '_PoolWorkViewModelBase.isLoadingChange');
    try {
      return super.isLoadingChange();
    } finally {
      _$_PoolWorkViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
poolworklist: ${poolworklist},
isLoading: ${isLoading}
    ''';
  }
}
