import 'dart:io';

import 'package:dev_to/core/core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  void _testItemAssets(String asset) {
    final _fileName = asset.split('/').last;
    test('Validation assets file $_fileName is available', () {
      // Arrange
      final file = File(asset);

      // Actual
      final isExist = file.existsSync();

      // Assert
      expect(isExist, true, reason: 'File $_fileName does not exist');
    });
  }

  group('Validation Assets Path', () {
    _testItemAssets(Assets.imgLogo);
  });
}
