import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state_manager/app_state/cubit.dart';
import '../state_manager/state_core_wrapper.dart';
import 'style.dart';

class MasterQuizApp extends StatelessWidget {
  final Widget home;
  final Widget loading;
  final AppStateCubit? app;

  const MasterQuizApp(
    {Key? key,
    required this.home,
    required this.loading,
    this.app}
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateCoreWrapper(
    app: app,
    child: MaterialApp(
      theme: AppStyle.currentTheme,
      home: BlocBuilder<AppStateCubit, AppState>(
        builder: (context, state) {
          if (state is AppStateLoadingFirebase) {
            return loading;
          }
          return home;
        },
      ),
    ));
  }
}
