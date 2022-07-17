part of 'cubit.dart';

@immutable
abstract class AppState {}

//Firebase init
class AppStateLoadingFirebase extends AppState {}

class AppStateReadyToUse extends AppState {}

//App user state
class AppStateLoading extends AppState {}

class AppStateNotConnected extends AppState {}

class AppStateError extends AppState {
  final String message;

  AppStateError(this.message);
}

class AppStateReady extends AppState {
  UserModel user;

  AppStateReady(this.user);
}

class AppStateBlocked extends AppState {}
