// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<bool> _$_abdomemIsValidComputed;

  @override
  bool get _abdomemIsValid =>
      (_$_abdomemIsValidComputed ??= Computed<bool>(() => super._abdomemIsValid,
              name: '_HomeControllerBase._abdomemIsValid'))
          .value;
  Computed<bool> _$_peitoIsValidComputed;

  @override
  bool get _peitoIsValid =>
      (_$_peitoIsValidComputed ??= Computed<bool>(() => super._peitoIsValid,
              name: '_HomeControllerBase._peitoIsValid'))
          .value;
  Computed<bool> _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??= Computed<bool>(() => super.isValid,
          name: '_HomeControllerBase.isValid'))
      .value;
  Computed<double> _$_porporcao_abdomem_peitoComputed;

  @override
  double get _porporcao_abdomem_peito => (_$_porporcao_abdomem_peitoComputed ??=
          Computed<double>(() => super._porporcao_abdomem_peito,
              name: '_HomeControllerBase._porporcao_abdomem_peito'))
      .value;
  Computed<String> _$porporcao_abdomem_peito_stringComputed;

  @override
  String get porporcao_abdomem_peito_string =>
      (_$porporcao_abdomem_peito_stringComputed ??= Computed<String>(
              () => super.porporcao_abdomem_peito_string,
              name: '_HomeControllerBase.porporcao_abdomem_peito_string'))
          .value;
  Computed<double> _$_meta_proporsao_calcComputed;

  @override
  double get _meta_proporsao_calc => (_$_meta_proporsao_calcComputed ??=
          Computed<double>(() => super._meta_proporsao_calc,
              name: '_HomeControllerBase._meta_proporsao_calc'))
      .value;
  Computed<String> _$meta_proporsao_calc_stringComputed;

  @override
  String get meta_proporsao_calc_string =>
      (_$meta_proporsao_calc_stringComputed ??= Computed<String>(
              () => super.meta_proporsao_calc_string,
              name: '_HomeControllerBase.meta_proporsao_calc_string'))
          .value;

  final _$_abdomemAtom = Atom(name: '_HomeControllerBase._abdomem');

  @override
  double get _abdomem {
    _$_abdomemAtom.reportRead();
    return super._abdomem;
  }

  @override
  set _abdomem(double value) {
    _$_abdomemAtom.reportWrite(value, super._abdomem, () {
      super._abdomem = value;
    });
  }

  final _$_peitoAtom = Atom(name: '_HomeControllerBase._peito');

  @override
  double get _peito {
    _$_peitoAtom.reportRead();
    return super._peito;
  }

  @override
  set _peito(double value) {
    _$_peitoAtom.reportWrite(value, super._peito, () {
      super._peito = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void setAbdomem(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setAbdomem');
    try {
      return super.setAbdomem(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPeito(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setPeito');
    try {
      return super.setPeito(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isValid: ${isValid},
porporcao_abdomem_peito_string: ${porporcao_abdomem_peito_string},
meta_proporsao_calc_string: ${meta_proporsao_calc_string}
    ''';
  }
}
