import 'package:mobx/mobx.dart';
import 'dart:math';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final double meta_peito = 113; //102.9;
  final double meta_abdomem = 80; //89.4;
  final double meta_bicipes = 42.2; //89.4;
  final double meta_proporsao = .7; //0.8;

  @observable
  double _abdomem = 0;

  @action
  void setAbdomem(String value) {
    try {
      _abdomem = double.parse(value);
    } catch (e) {
      _abdomem = 0;
    }
  }

  @computed
  bool get _abdomemIsValid {
    if (_abdomem <= 0 || _abdomem > 200) {
      return false;
    }

    return true;
  }

  String get abdomemError {
    if (!_abdomemIsValid) {
      return "Valor inválido";
    }
    return null;
  }

  @observable
  double _peito = 0;

  @action
  void setPeito(String value) {
    try {
      _peito = double.parse(value);
    } catch (e) {
      _peito = 0;
    }
  }

  @computed
  bool get _peitoIsValid {
    if (_peito <= 0 || _peito > 200) {
      return false;
    }
    return true;
  }

  String get peitoError {
    if (!_peitoIsValid) {
      return "Valor inválido";
    }
    return null;
  }

  @observable
  double _bicipes = 0;

  @action
  void setBicipes(String value) {
    try {
      _bicipes = double.parse(value);
    } catch (e) {
      _bicipes = 0;
    }
  }

  @computed
  bool get _bicipesIsValid {
    if (_bicipes <= 0 || _bicipes > 60) {
      return false;
    }

    return true;
  }

  String get bicipesError {
    if (!_bicipesIsValid) {
      return "Valor inválido";
    }
    return null;
  }

  @computed
  bool get isValid {
    return _peitoIsValid && _abdomemIsValid;
  }

  @computed
  double get _porporcao_abdomem_peito => isValid ? _abdomem / _peito : 0;

  @computed
  String get porporcao_abdomem_peito_string =>
      "Proporsão: ${_porporcao_abdomem_peito.toStringAsFixed(3)}";

  @computed
  double get _meta_proporsao_calc =>
      meta_proporsao / _porporcao_abdomem_peito * 100;

  @computed
  String get meta_proporsao_calc_string =>
      "Meta: ${_meta_proporsao_calc.toStringAsFixed(1)}%";

  @computed
  String get meta_peito_calc_str {
    return "Meta: ${(_peito / meta_peito * 100).toStringAsFixed(1)}%";
  }

  @computed
  String get meta_abdomem_calc_str {
    return "Meta: ${(meta_abdomem / _abdomem * 100).toStringAsFixed(1)}%";
  }

  @computed
  double get meta_bicipes_atigida {
    return _bicipes / meta_bicipes * 100;
  }

  @computed
  int get meta_dias {
    return DateTime.utc(2020, 12, 31).difference(DateTime.now()).inDays;
  }

  @computed
  double get meta_peito_temporal {
    return (meta_peito * .91062) / pow(1.0011803, meta_dias);
  }

  @computed
  double get meta_peito_temporal_atingido {
    return _peito / meta_peito_temporal * 100;
  }

  @computed
  double get meta_abdomem_temporal {
    return (meta_abdomem / 0.894854586) / pow(0.99955726, meta_dias);
  }

  @computed
  double get meta_abdomem_temporal_atingido {
    return meta_abdomem_temporal / _abdomem * 100;
  }

  @computed
  double get meta_bicipes_temporal {
    return (meta_bicipes * 0.944549763) / pow(1.003117018, meta_dias);
  }

  @computed
  double get meta_bicipes_temporal_atingido {
    return _bicipes / meta_bicipes_temporal * 100;
  }
}
