import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dev_to/app/app.dart';
import 'package:dev_to/app/app_bloc_observer.dart';
import 'package:flutter/widgets.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () => runApp(const App()),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
