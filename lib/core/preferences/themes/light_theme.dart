import 'package:dev_to/core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Base Theme in Light Mode
class LightTheme with Diagnosticable {
  LightTheme(this.primary, {this.accent});

  /// Primary Color like color in [ElevatedButton]
  final Color primary;

  /// Access color
  final Color? accent;

  AppBarTheme get appBar {
    return const AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      elevation: 0.5,
      brightness: Brightness.light,
    );
  }

  ElevatedButtonThemeData get elevatedButton {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  InputDecorationTheme get inputDecoration {
    return InputDecorationTheme(
      filled: true,
      fillColor: AppColors.base[50],
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          width: 0.3,
          color: AppColors.base[1000]!,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          width: 0.3,
          color: AppColors.base[1000]!,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          width: 2,
          color: primary,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          width: 2,
          color: AppColors.accentDanger,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          width: 0.3,
          color: AppColors.accentDanger,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          width: 0.3,
          color: AppColors.base[100]!,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 8),
    );
  }

  DividerThemeData get divider {
    return const DividerThemeData(
      thickness: 1,
    );
  }

  IconThemeData get icon {
    return IconThemeData(
      color: AppColors.base[600],
    );
  }

  CardTheme get card {
    return CardTheme(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: AppColors.baseAlpha[100] ?? Colors.transparent,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ));
  }

  ThemeData get toTheme {
    return ThemeData.light().copyWith(
      colorScheme: ColorScheme.light(
        primary: primary,
        secondary: accent ?? primary,
      ),
      primaryColor: primary,
      scaffoldBackgroundColor: AppColors.base[100],
      appBarTheme: appBar,
      elevatedButtonTheme: elevatedButton,
      inputDecorationTheme: inputDecoration,
      dividerTheme: divider,
      iconTheme: icon,
      cardTheme: card,
    );
  }
}
