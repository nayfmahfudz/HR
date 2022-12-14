import 'package:flutter_bloc/flutter_bloc.dart';

abstract class APIEvent {}

/// Notifies bloc to increment state.
class APILogin extends APIEvent {
  Map value;

  APILogin(this.value);
}

/// Notifies bloc to decrement state.
class APILogout extends APIEvent {}

/// {@template API_bloc}
/// A simple [Bloc] that manages an `int` as its state.
/// {@endtemplate}
class APIBloc extends Bloc<APIEvent, Map> {
  /// {@macro API_bloc}
  APIBloc() : super(Map()) {
    on<APILogin>((event, emit) {
      print(event.value);
      emit(state);
    });
    on<APILogout>((event, emit) => emit(state));
  }
}
