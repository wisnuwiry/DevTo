import 'package:dev_to/app/app.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:layout/layout.dart';

void main() {
  group('App', () {
    testWidgets('Renders App', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(DevicePreview), findsOneWidget);
      expect(find.byType(Layout), findsOneWidget);
      expect(find.byType(MaterialApp), findsOneWidget);
    });
  });
}
