import 'package:dev_to/core/core.dart';
import 'package:dev_to/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:layout/layout.dart';

void main() {
  const Color kPrimaryColor = Colors.amber;

  group('Test LightTheme', () {
    test('Validation return toTheme is valid & not null', () {
      // arrange
      final theme = LightTheme(kPrimaryColor);

      // assert
      expect(theme.toTheme, isA<ThemeData>());
      expect(theme.toTheme, isNotNull);
    });

    test('Validation primary color input & output same value', () {
      // arrange
      final theme = LightTheme(kPrimaryColor);
      // assert
      expect(theme.toTheme.primaryColor, kPrimaryColor);
    });

    test('AppBar Theme', () async {
      // arrange
      final theme = LightTheme(kPrimaryColor);

      // actual
      final appBarTheme = theme.appBar;

      // assert
      expect(appBarTheme, isA<AppBarTheme>());
      expect(appBarTheme.color, Colors.white);
      expect(
        appBarTheme.iconTheme,
        const IconThemeData(
          color: Colors.black,
        ),
      );
      expect(appBarTheme.elevation, 0.5);
      expect(appBarTheme.brightness, Brightness.light);
    });

    group('InputDection Theme', () {
      // arrange
      final theme = LightTheme(kPrimaryColor);

      // actual
      final inputDecorationTheme = theme.inputDecoration;

      test('Basic', () async {
        // assert
        expect(inputDecorationTheme, isA<InputDecorationTheme>());
        expect(inputDecorationTheme.filled, true);
        expect(inputDecorationTheme.fillColor, AppColors.base[50]);
        expect(inputDecorationTheme.contentPadding,
            const EdgeInsets.symmetric(vertical: 8));
      });

      test('Default Border', () {
        expect(inputDecorationTheme.border, isA<OutlineInputBorder>());
        expect((inputDecorationTheme.border as OutlineInputBorder).borderRadius,
            BorderRadius.circular(8));
        expect(
            (inputDecorationTheme.border as OutlineInputBorder).borderSide,
            BorderSide(
              width: 0.3,
              color: AppColors.base[1000]!,
            ));
      });

      test('Enabled Border', () {
        expect(inputDecorationTheme.enabledBorder, isA<OutlineInputBorder>());
        expect(
            (inputDecorationTheme.enabledBorder as OutlineInputBorder)
                .borderRadius,
            BorderRadius.circular(8));
        expect(
            (inputDecorationTheme.enabledBorder as OutlineInputBorder)
                .borderSide,
            BorderSide(
              width: 0.3,
              color: AppColors.base[1000]!,
            ));
        expect(inputDecorationTheme.enabledBorder, inputDecorationTheme.border);
      });

      test('Focused Border', () {
        expect(inputDecorationTheme.focusedBorder, isA<OutlineInputBorder>());
        expect(
            (inputDecorationTheme.focusedBorder as OutlineInputBorder)
                .borderRadius,
            BorderRadius.circular(8));
        expect(
          (inputDecorationTheme.focusedBorder as OutlineInputBorder).borderSide,
          const BorderSide(
            width: 2,
            color: kPrimaryColor,
          ),
        );
      });

      test('Focused Border With Error', () {
        expect(
            inputDecorationTheme.focusedErrorBorder, isA<OutlineInputBorder>());
        expect(
            (inputDecorationTheme.focusedErrorBorder as OutlineInputBorder)
                .borderRadius,
            BorderRadius.circular(8));
        expect(
          (inputDecorationTheme.focusedErrorBorder as OutlineInputBorder)
              .borderSide,
          const BorderSide(
            width: 2,
            color: AppColors.accentDanger,
          ),
        );
        // Test Focus Error Border is from [FocusedBorder]
        expect(
          (inputDecorationTheme.focusedErrorBorder as OutlineInputBorder),
          (inputDecorationTheme.focusedBorder as OutlineInputBorder).copyWith(
            borderSide: const BorderSide(
              width: 2,
              color: AppColors.accentDanger,
            ),
          ),
        );
      });
    });

    test('Divider Theme', () {
      // Actual
      final theme = LightTheme(kPrimaryColor).divider;

      // Assert
      expect(theme, isA<DividerThemeData>());
      expect(theme.thickness, 1);
    });

    test('Icon Theme', () {
      // Actual
      final theme = LightTheme(kPrimaryColor).icon;

      // Assert
      expect(theme, isA<IconThemeData>());
      expect(theme.color, AppColors.base[600]);
    });

    test('Card Theme', () {
      // Actual
      final theme = LightTheme(kPrimaryColor).card;

      // Assert
      expect(theme, isA<CardTheme>());
      expect(theme.color, Colors.white);
      expect(theme.elevation, 0);
      expect(theme.shape, isA<RoundedRectangleBorder>());
      expect(
        (theme.shape as RoundedRectangleBorder).side,
        BorderSide(
          color: AppColors.baseAlpha[100] ?? Colors.transparent,
          width: 1,
        ),
      );
      expect(
        (theme.shape as RoundedRectangleBorder).borderRadius,
        BorderRadius.circular(5),
      );
    });

    test('Test Result toTheme', () {
      // Arrange
      final baseTheme = LightTheme(kPrimaryColor);

      // Actual
      final theme = baseTheme.toTheme;

      // Assert

      expect(theme, isA<ThemeData>());
      // Test Brightness dark or light
      expect(theme.brightness, Brightness.light);
      expect(theme.primaryColor, kPrimaryColor);
      expect(theme.scaffoldBackgroundColor, AppColors.base[100]);
      expect(theme.appBarTheme, isNotNull);
      expect(theme.elevatedButtonTheme, isNotNull);
      expect(theme.inputDecorationTheme, isNotNull);
      expect(theme.dividerTheme, isNotNull);
      expect(theme.iconTheme, isNotNull);
      expect(theme.cardTheme, isNotNull);
    });
  });
}

extension PumpApp on WidgetTester {
  Future<void> pumpTheme(Widget widget, Color primaryColor) {
    return pumpWidget(
      Layout(
        child: MaterialApp(
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          theme: LightTheme(primaryColor).toTheme,
          supportedLocales: AppLocalizations.supportedLocales,
          home: widget,
        ),
      ),
    );
  }
}
