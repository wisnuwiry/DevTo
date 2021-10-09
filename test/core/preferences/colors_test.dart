import 'package:dev_to/core/core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Validate colors', () {
    group('Test "accentBrand" Color', () {
      final colors = AppColors.accentBrand;

      test('Validation color format is valid', () {
        // assert
        expect(colors.shade400, colors[400]);
        expect(colors.shade500, colors[500]);
        expect(colors.shade600, colors[600]);
      });

      test('Check default value color', () {
        // assert
        expect(colors.value, colors.shade500.value);
      });
    });

    // ---------------------

    group('Test "accentSuccess" Color', () {
      final colors = AppColors.accentSuccess;

      test('Validation color format is valid', () {
        // assert
        expect(colors.shade400, colors[400]);
        expect(colors.shade500, colors[500]);
        expect(colors.shade600, colors[600]);
      });

      test('Check default value color', () {
        // assert
        expect(colors.value, colors.shade500.value);
      });
    });

    // ---------------------

    group('Test "accentWarning" Color', () {
      final colors = AppColors.accentWarning;

      test('Validation color format is valid', () {
        // assert
        expect(colors.shade400, colors[400]);
        expect(colors.shade500, colors[500]);
        expect(colors.shade600, colors[600]);
      });

      test('Check default value color', () {
        // assert
        expect(colors.value, colors.shade500.value);
      });
    });

    // ---------------------

    group('Test "accentDanger" Color', () {
      final colors = AppColors.accentDanger;

      test('Validation color format is valid', () {
        // assert
        expect(colors.shade400, colors[400]);
        expect(colors.shade500, colors[500]);
        expect(colors.shade600, colors[600]);
      });

      test('Check default value color', () {
        // assert
        expect(colors.value, colors.shade500.value);
      });
    });

    // ---------------------

    group('Test "base" Color', () {
      final colors = AppColors.base;

      test('Validation color format is valid', () {
        // assert
        expect(colors.shade50, colors[50]);
        expect(colors.shade100, colors[100]);
        expect(colors.shade200, colors[200]);
        expect(colors.shade300, colors[300]);
        expect(colors.shade400, colors[400]);
        expect(colors.shade500, colors[500]);
        expect(colors.shade600, colors[600]);
        expect(colors.shade700, colors[700]);
        expect(colors.shade800, colors[800]);
        expect(colors.shade900, colors[900]);
      });

      test('Check default value color', () {
        // assert
        expect(colors.value, colors[1000]?.value);
      });
    });

    // ---------------------

    group('Test "baseAlpha" Color', () {
      final colors = AppColors.baseAlpha;

      test('Validation color format is valid', () {
        // assert
        expect(colors.shade50, colors[50]);
        expect(colors.shade100, colors[100]);
        expect(colors.shade200, colors[200]);
        expect(colors.shade300, colors[300]);
        expect(colors.shade400, colors[400]);
        expect(colors.shade500, colors[500]);
        expect(colors.shade600, colors[600]);
        expect(colors.shade700, colors[700]);
        expect(colors.shade800, colors[800]);
        expect(colors.shade900, colors[900]);
      });

      test('Check default value color', () {
        // assert
        expect(colors.value, colors.shade500.value);
      });
    });
  });
}
