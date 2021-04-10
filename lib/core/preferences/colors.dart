import 'package:flutter/material.dart';

class AppColors {
  /// Only Available in varians:
  /// ```dart
  /// 400: Color(0xFF8d95f2),
  /// 500: Color(0xFF3b49df),
  /// 600: Color(0xFF1827ce),
  /// ```
  static const MaterialColor accentBrand = MaterialColor(0xFF3b49df, {
    400: Color(0xFF8d95f2),
    500: Color(0xFF3b49df),
    600: Color(0xFF1827ce),
  });

  /// Only Available in varians:
  ///
  /// ```dart
  /// 400: Color(0xFF79ece2),
  /// 500: Color(0xFF26d9ca),
  /// 600: Color(0xFF1ab3a6),
  /// ```
  static const MaterialColor accentSuccess = MaterialColor(0xFF26d9ca, {
    400: Color(0xFF79ece2),
    500: Color(0xFF26d9ca),
    600: Color(0xFF1ab3a6),
  });

  /// Only Available in varians:
  /// ```dart
  /// 400: Color(0xFFffe499),
  /// 500: Color(0xFFffcf4c),
  /// 600: Color(0xFFf5b400),
  /// ```
  static const MaterialColor accentWarning = MaterialColor(0xFFffcf4c, {
    400: Color(0xFFffe499),
    500: Color(0xFFffcf4c),
    600: Color(0xFFf5b400),
  });

  /// Only Available in varians:
  /// ```dart
  /// 400: Color(0xFFec5050),
  /// 500: Color(0xFFdc1818),
  /// 600: Color(0xFFc20a0a),
  /// ```
  static const MaterialColor accentDanger = MaterialColor(0xFFdc1818, {
    400: Color(0xFFec5050),
    500: Color(0xFFdc1818),
    600: Color(0xFFc20a0a),
  });

  /// Available variants color:
  ///
  /// ```dart
  /// 50: Color(0xFFf9fafa),
  /// 100: Color(0xFFeef0f1),
  /// 200: Color(0xFFd2d6db),
  /// 300: Color(0xFFb5bdc4),
  /// 400: Color(0xFF99a3ad),
  /// 500: Color(0xFF7d8a97),
  /// 600: Color(0xFF64707d),
  /// 700: Color(0xFF4d5760),
  /// 800: Color(0xFF363d44),
  /// 900: Color(0xFF202428),
  /// 1000: Color(0xFF08090a),
  /// ```
  ///
  /// By default when call `base` return `base[1000]`
  static const MaterialColor base = MaterialColor(
    0xFF08090a,
    {
      50: Color(0xFFf9fafa),
      100: Color(0xFFeef0f1),
      200: Color(0xFFd2d6db),
      300: Color(0xFFb5bdc4),
      400: Color(0xFF99a3ad),
      500: Color(0xFF7d8a97),
      600: Color(0xFF64707d),
      700: Color(0xFF4d5760),
      800: Color(0xFF363d44),
      900: Color(0xFF202428),
      1000: Color(0xFF08090a),
    },
  );

  /// Base color with Alpha
  ///
  /// Availabel in variants:
  ///
  /// ```dart
  /// 50: const Color(0xFF090a0b).withOpacity(0.05),
  /// 100: const Color(0xFF090a0b).withOpacity(0.1),
  /// 200: const Color(0xFF090a0b).withOpacity(0.2),
  /// 300: const Color(0xFF090a0b).withOpacity(0.3),
  /// 400: const Color(0xFF090a0b).withOpacity(0.4),
  /// 500: const Color(0xFF090a0b).withOpacity(0.5),
  /// 600: const Color(0xFF090a0b).withOpacity(0.6),
  /// 700: const Color(0xFF090a0b).withOpacity(0.7),
  /// 800: const Color(0xFF090a0b).withOpacity(0.8),
  /// 900: const Color(0xFF090a0b).withOpacity(0.9),
  /// ```
  static MaterialColor baseAlpha = MaterialColor(
    0x80090a0b,
    {
      50: const Color(0xFF090a0b).withOpacity(0.05),
      100: const Color(0xFF090a0b).withOpacity(0.1),
      200: const Color(0xFF090a0b).withOpacity(0.2),
      300: const Color(0xFF090a0b).withOpacity(0.3),
      400: const Color(0xFF090a0b).withOpacity(0.4),
      500: const Color(0xFF090a0b).withOpacity(0.5),
      600: const Color(0xFF090a0b).withOpacity(0.6),
      700: const Color(0xFF090a0b).withOpacity(0.7),
      800: const Color(0xFF090a0b).withOpacity(0.8),
      900: const Color(0xFF090a0b).withOpacity(0.9),
    },
  );
}
