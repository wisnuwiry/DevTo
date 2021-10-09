import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:layout/layout.dart';

import '../core/core.dart';
import '../l10n/l10n.dart';
import 'app_router.gr.dart';

final _appRouter = AppRouter();

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      enabled: !kReleaseMode,
      plugins: [],
      builder: (context) => Layout(
        child: MaterialApp.router(
          theme: LightTheme(const Color(0xFF3b49df)).toTheme,
          darkTheme: DarkTheme(const Color(0xFF3b49df)).toTheme,
          themeMode: ThemeMode.dark,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          debugShowCheckedModeBanner: false,
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          supportedLocales: AppLocalizations.supportedLocales,
        ),
      ),
    );
  }
}
