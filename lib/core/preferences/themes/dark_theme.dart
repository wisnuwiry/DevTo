import 'package:dev_to/core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Base Theme in Dark Mode
class DarkTheme with Diagnosticable {
  DarkTheme(this.primary, {this.accent});

  /// Primary Color like color in [ElevatedButton]
  final Color primary;

  /// Access color
  final Color? accent;

  AppBarTheme get appBar {
    return AppBarTheme(
      color: AppColors.base[900],
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      actionsIconTheme: const IconThemeData(
        color: Colors.white,
      ),
      elevation: 0.5,
      brightness: Brightness.dark,
    );
  }

  ElevatedButtonThemeData get elevatedButton {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shadowColor: Colors.transparent,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  InputDecorationTheme get inputDecoration {
    return InputDecorationTheme(
      filled: true,
      fillColor: AppColors.base[800],
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          width: 0.3,
          color: AppColors.base[600]!,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          width: 0.3,
          color: AppColors.base[600]!,
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
          color: AppColors.base[700]!,
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
        color: AppColors.base[900],
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: AppColors.base[700]!,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ));
  }

  ThemeData get toTheme {
    return ThemeData.dark().copyWith(
      colorScheme: ColorScheme.dark(
        primary: primary,
        secondary: accent ?? primary,
      ),
      accentColor: primary,
      canvasColor: AppColors.base[900],
      primaryColor: primary,
      scaffoldBackgroundColor: AppColors.base[1000],
      appBarTheme: appBar,
      elevatedButtonTheme: elevatedButton,
      inputDecorationTheme: inputDecoration,
      dividerTheme: divider,
      iconTheme: icon,
      cardTheme: card,
    );
  }
}
