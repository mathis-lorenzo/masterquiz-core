import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_state/cubit.dart';

class StateCoreWrapper extends StatelessWidget {
  final Widget child;
  final AppStateCubit? app;

  const StateCoreWrapper({Key? key, required this.child, this.app}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context){
          final app =  this.app ?? AppStateCubit();
          app.initApp();
          return app;
        }),
      ],
      child: child,
    );
  }
}
