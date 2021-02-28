

import 'package:flutter/material.dart';
import 'package:validacionform/src/bloc/login_bloc.dart';
export 'package:validacionform/src/bloc/login_bloc.dart';

class Provider extends InheritedWidget {

  static Provider _instancia;

///[] Mnatener la instancia si ya existe
  factory Provider({Key key, Widget child}) {
    if (_instancia == null) {
      _instancia = new Provider._internal(key: key, child: child);
    }
    return _instancia;
  }

  Provider._internal({Key key, Widget child}) : super(key: key, child: child);



///
  final loginBloc = LoginBloc();
/// [of] metodo estatico que regresa la instancia del LoginBloc
  static LoginBloc
  of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>().loginBloc;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

}
