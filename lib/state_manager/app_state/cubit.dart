import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/user.dart';
import '../../services/firebase_options.dart';
import '../../services/user_service/base.dart';


part 'states.dart';

class AppStateCubit extends Cubit<AppState> {
  AppStateCubit() : super(AppStateLoadingFirebase());

  static AppStateCubit of(BuildContext context) {
    return BlocProvider.of<AppStateCubit>(context);
  }

  Future<void> initApp() async {
    try {
      debugPrint("init app");
      emit(AppStateLoadingFirebase());
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      await FirebaseAuth.instance.setLanguageCode("fr");
      emit(AppStateReadyToUse());
    } catch (err) {
      print(err);
    }
  }

  Stream<AppState> reConnectUser({bool adminConnection = false}) {
    try {
      _connectUserToApp();
    } catch (err) {
      emit(AppStateError("Une erreur s'est produite"));
    }
    return stream;
  }

  Future<void> _connectUserToApp() async {
    if (FirebaseAuth.instance.currentUser != null) {
      //if user already auth
      try {
        //reload user state
        await FirebaseAuth.instance.currentUser!.reload();
      } on FirebaseAuthException catch (err) {
        if (err.code == "user-disabled") {
          emit(AppStateBlocked());
        } else {
          emit(AppStateError("Impossible de vous authentifier"));
        }
        return;
      }
      UserModel? currentUser = await FirestoreUserService()
          .getUnique(FirebaseAuth.instance.currentUser!.uid);
      if (currentUser != null) {
        //user exist
        //Emit app ready state
        _startUserListener();
        return emit(AppStateReady(currentUser));
      }
    }
    return emit(AppStateNotConnected());
  }

  Future<Stream<AppState>> connectUser(AuthCredential credential,
      [bool adminConnection = false]) async {
    try {
      await FirebaseAuth.instance.signInWithCredential(credential);
      return reConnectUser(adminConnection: adminConnection);
    } catch (_) {
      rethrow;
    }
  }

  UserModel get user {
    if (state is! AppStateReady) {
      throw BadAppState(
          "No user referenced in this state ${state.runtimeType}");
    } else {
      return (state as AppStateReady).user;
    }
  }

  void _startUserListener() {}
}

class BadAppState {
  final String message;

  BadAppState(this.message);
}
